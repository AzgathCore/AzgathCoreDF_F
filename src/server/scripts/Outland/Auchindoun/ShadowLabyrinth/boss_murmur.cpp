/*
 * Copyright 2023 AzgathCore
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* ScriptData
SDName: Boss_Murmur
SD%Complete: 90
SDComment: Timers may be incorrect
SDCategory: Auchindoun, Shadow Labyrinth
EndScriptData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "shadow_labyrinth.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"

enum Texts
{
    EMOTE_SONIC_BOOM            = 0
};

enum Spells
{
    SPELL_RESONANCE             = 33657,
    SPELL_MAGNETIC_PULL         = 33689,
    SPELL_SONIC_SHOCK           = 38797,
    SPELL_THUNDERING_STORM      = 39365,
    SPELL_SONIC_BOOM_CAST       = 33923,
    SPELL_SONIC_BOOM_EFFECT     = 33666,
    SPELL_MURMURS_TOUCH         = 33711,
    SPELL_MURMURS_TOUCH_H       = 38794,

    SPELL_MURMURS_TOUCH_DUMMY   = 33760,
    SPELL_SHOCKWAVE             = 33686,
    SPELL_SHOCKWAVE_KNOCK_BACK  = 33673
};

enum Events
{
    EVENT_SONIC_BOOM            = 1,
    EVENT_MURMURS_TOUCH         = 2,
    EVENT_RESONANCE             = 3,
    EVENT_MAGNETIC_PULL         = 4,
    EVENT_THUNDERING_STORM      = 5,
    EVENT_SONIC_SHOCK           = 6
};

struct boss_murmur : public BossAI
{
    boss_murmur(Creature* creature) : BossAI(creature, DATA_MURMUR)
    {
        SetCombatMovement(false);
    }

    void Reset() override
    {
        _Reset();
        events.ScheduleEvent(EVENT_SONIC_BOOM, 30s);
        events.ScheduleEvent(EVENT_MURMURS_TOUCH, 8s, 20s);
        events.ScheduleEvent(EVENT_RESONANCE, 5s);
        events.ScheduleEvent(EVENT_MAGNETIC_PULL, 15s, 30s);
        if (IsHeroic())
        {
            events.ScheduleEvent(EVENT_THUNDERING_STORM, 15s);
            events.ScheduleEvent(EVENT_SONIC_SHOCK, 10s);
        }

        // database should have `RegenHealth`=0 to prevent regen
        uint32 hp = me->CountPctFromMaxHealth(40);
        if (hp)
            me->SetHealth(hp);
        me->ResetPlayerDamageReq();
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_SONIC_BOOM:
                    Talk(EMOTE_SONIC_BOOM);
                    DoCast(me, SPELL_SONIC_BOOM_CAST);
                    events.ScheduleEvent(EVENT_SONIC_BOOM, 30s);
                    events.ScheduleEvent(EVENT_RESONANCE, 1500ms);
                    break;
                case EVENT_MURMURS_TOUCH:
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 80.0f, true))
                        DoCast(target, SPELL_MURMURS_TOUCH);
                    events.ScheduleEvent(EVENT_MURMURS_TOUCH, 25s, 35s);
                    break;
                case EVENT_RESONANCE:
                    if (!(me->IsWithinMeleeRange(me->GetVictim())))
                    {
                        DoCast(me, SPELL_RESONANCE);
                        events.ScheduleEvent(EVENT_RESONANCE, 5s);
                    }
                    break;
                case EVENT_MAGNETIC_PULL:
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 0.0f, true))
                    {
                        DoCast(target, SPELL_MAGNETIC_PULL);
                        events.ScheduleEvent(EVENT_MAGNETIC_PULL, 15s, 30s);
                        break;
                    }
                    events.ScheduleEvent(EVENT_MAGNETIC_PULL, 500ms);
                    break;
                case EVENT_THUNDERING_STORM:
                    DoCastAOE(SPELL_THUNDERING_STORM, true);
                    events.ScheduleEvent(EVENT_THUNDERING_STORM, 15s);
                    break;
                case EVENT_SONIC_SHOCK:
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 20.0f, false))
                        DoCast(target, SPELL_SONIC_SHOCK);
                    events.ScheduleEvent(EVENT_SONIC_SHOCK, 10s, 20s);
                    break;
            }

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;
        }

        // Select nearest most aggro target if top aggro too far
        if (!me->isAttackReady())
            return;

        if (!me->IsWithinMeleeRange(me->GetVictim()))
            me->GetThreatManager().ResetThreat(me->GetVictim());

        DoMeleeAttackIfReady();
    }
};

// 33923, 38796 - Sonic Boom
class spell_murmur_sonic_boom : public SpellScript
{
    PrepareSpellScript(spell_murmur_sonic_boom);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_SONIC_BOOM_EFFECT });
    }

    void HandleEffect(SpellEffIndex /*effIndex*/)
    {
        GetCaster()->CastSpell(nullptr, SPELL_SONIC_BOOM_EFFECT, true);
    }

    void Register() override
    {
        OnEffectHit += SpellEffectFn(spell_murmur_sonic_boom::HandleEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 33666, 38795 - Sonic Boom Effect
class spell_murmur_sonic_boom_effect : public SpellScript
{
    PrepareSpellScript(spell_murmur_sonic_boom_effect);

    void CalcDamage()
    {
        if (Unit* target = GetHitUnit())
            SetHitDamage(target->CountPctFromMaxHealth(80)); /// @todo: find correct value
    }

    void Register() override
    {
        OnHit += SpellHitFn(spell_murmur_sonic_boom_effect::CalcDamage);
    }
};

class ThunderingStormCheck
{
    public:
        ThunderingStormCheck(WorldObject* source) : _source(source) { }

        bool operator()(WorldObject* obj)
        {
            float distSq = _source->GetExactDist2dSq(obj);
            return distSq < (25.0f * 25.0f) || distSq > (100.0f * 100.0f);
        }

    private:
        WorldObject const* _source;
};

// 39365 - Thundering Storm
class spell_murmur_thundering_storm : public SpellScript
{
    PrepareSpellScript(spell_murmur_thundering_storm);

    void FilterTarget(std::list<WorldObject*>& targets)
    {
        targets.remove_if(ThunderingStormCheck(GetCaster()));
    }

    void Register() override
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_murmur_thundering_storm::FilterTarget, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

// 33711, 38794 - Murmur's Touch
class spell_murmur_murmurs_touch : public AuraScript
{
    PrepareAuraScript(spell_murmur_murmurs_touch);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo(
        {
            SPELL_MURMURS_TOUCH_DUMMY,
            SPELL_SHOCKWAVE,
            SPELL_SHOCKWAVE_KNOCK_BACK
        });
    }

    void OnPeriodic(AuraEffect const* aurEff)
    {
        Unit* target = GetTarget();

        switch (GetId())
        {
            case SPELL_MURMURS_TOUCH:
                switch (aurEff->GetTickNumber())
                {
                    case 7:
                    case 10:
                    case 12:
                    case 13:
                        target->CastSpell(target, SPELL_MURMURS_TOUCH_DUMMY, true);
                        break;
                    case 14:
                        target->CastSpell(target, SPELL_MURMURS_TOUCH_DUMMY, true);
                        target->CastSpell(target, SPELL_SHOCKWAVE, true);
                        target->CastSpell(target, SPELL_SHOCKWAVE_KNOCK_BACK, true);
                        break;
                    default:
                        break;
                }
                break;
            case SPELL_MURMURS_TOUCH_H:
                switch (aurEff->GetTickNumber())
                {
                    case 3:
                    case 6:
                        target->CastSpell(target, SPELL_MURMURS_TOUCH_DUMMY, true);
                        break;
                    case 7:
                        target->CastSpell(target, SPELL_MURMURS_TOUCH_DUMMY, true);
                        target->CastSpell(target, SPELL_SHOCKWAVE, true);
                        target->CastSpell(target, SPELL_SHOCKWAVE_KNOCK_BACK, true);
                        break;
                    default:
                        break;
                }
                break;
            default:
                break;
        }
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_murmur_murmurs_touch::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
    }
};

void AddSC_boss_murmur()
{
    RegisterShadowLabyrinthCreatureAI(boss_murmur);
    RegisterSpellScript(spell_murmur_sonic_boom);
    RegisterSpellScript(spell_murmur_sonic_boom_effect);
    RegisterSpellScript(spell_murmur_thundering_storm);
    RegisterSpellScript(spell_murmur_murmurs_touch);
}
