-- class_expansion_requirement

INSERT INTO `class_expansion_requirement` (`ClassID`, `RaceID`, `ActiveExpansionLevel`, `AccountExpansionLevel`) VALUES (13, 52, 0, 0);
INSERT INTO `class_expansion_requirement` (`ClassID`, `RaceID`, `ActiveExpansionLevel`, `AccountExpansionLevel`) VALUES (13, 70, 0, 0);
INSERT INTO `class_expansion_requirement` (`ClassID`, `RaceID`, `ActiveExpansionLevel`, `AccountExpansionLevel`) VALUES (13, 75, 0, 0);
INSERT INTO `class_expansion_requirement` (`ClassID`, `RaceID`, `ActiveExpansionLevel`, `AccountExpansionLevel`) VALUES (13, 76, 0, 0);

-- race_unlock_requirement

INSERT INTO `race_unlock_requirement` (`raceID`, `expansion`, `achievementId`) VALUES (52, 0, 0);
INSERT INTO `race_unlock_requirement` (`raceID`, `expansion`, `achievementId`) VALUES (70, 0, 0);
INSERT INTO `race_unlock_requirement` (`raceID`, `expansion`, `achievementId`) VALUES (75, 0, 0);
INSERT INTO `race_unlock_requirement` (`raceID`, `expansion`, `achievementId`) VALUES (76, 0, 0);

-- playercreateinfo

-- Alliance

INSERT INTO `playercreateinfo`(`race`, `class`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `npe_map`, `npe_position_x`, `npe_position_y`, `npe_position_z`, `npe_orientation`, `npe_transport_guid`, `intro_movie_id`, `intro_scene_id`, `npe_intro_scene_id`) VALUES (52, 13, 0, -8914.57, -133.909, 80.5378, 5.10444, 2175, 11.1301, -0.417182, 5.18741, 3.14843, 29, NULL, NULL, 2236);

-- Horde

INSERT INTO `playercreateinfo`(`race`, `class`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `npe_map`, `npe_position_x`, `npe_position_y`, `npe_position_z`, `npe_orientation`, `npe_transport_guid`, `intro_movie_id`, `intro_scene_id`, `npe_intro_scene_id`) VALUES (70, 13, 1, -618.518, -4251.67, 38.718, 0, 2175, -10.7291, -7.14635, 8.73113, 1.56321, 30, NULL, NULL, 2486);

-- race_unlock_requirement

UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 27;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 28;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 29;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 30;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 31;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 32;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 33;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 34;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 35;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 36;
UPDATE `race_unlock_requirement` SET `achievementId` = 0 WHERE `raceID` = 37;

-- player_racestats

-- Alliance

INSERT INTO `player_racestats`(`race`, `str`, `agi`, `sta`, `inte`) VALUES (52, 0, 0, 0, 0);

-- Horde

INSERT INTO `player_racestats`(`race`, `str`, `agi`, `sta`, `inte`) VALUES (70, 3, -3, 1, -1);

-- player_classlevelstats

INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 1, 17, 6, 19, 20, 40593);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 2, 18, 7, 21, 22, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 3, 20, 7, 23, 24, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 4, 22, 8, 25, 26, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 5, 24, 9, 27, 28, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 6, 26, 9, 29, 30, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 7, 28, 10, 30, 32, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 8, 29, 10, 32, 34, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 9, 31, 11, 34, 36, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 10, 33, 12, 36, 38, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 11, 36, 13, 38, 40, 36839);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 12, 39, 14, 40, 42, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 13, 43, 15, 42, 44, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 14, 46, 16, 44, 46, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 15, 48, 17, 46, 48, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 16, 50, 18, 48, 50, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 17, 52, 18, 50, 52, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 18, 54, 19, 51, 54, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 19, 56, 20, 53, 56, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 20, 58, 20, 55, 58, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 21, 60, 21, 57, 60, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 22, 62, 22, 59, 62, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 23, 64, 22, 61, 64, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 24, 66, 23, 63, 66, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 25, 68, 24, 65, 68, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 26, 70, 25, 67, 70, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 27, 72, 25, 69, 72, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 28, 74, 26, 71, 74, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 29, 77, 27, 73, 77, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 30, 79, 28, 75, 79, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 31, 82, 29, 78, 82, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 32, 84, 29, 80, 84, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 33, 87, 30, 83, 87, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 34, 90, 31, 86, 90, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 35, 93, 32, 88, 93, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 36, 96, 34, 91, 96, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 37, 99, 35, 94, 99, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 38, 102, 36, 97, 102, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 39, 106, 37, 101, 106, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 40, 109, 38, 104, 109, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 41, 113, 40, 108, 113, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 42, 117, 41, 112, 117, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 43, 121, 42, 116, 121, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 44, 126, 44, 120, 126, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 45, 130, 46, 124, 130, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 46, 135, 47, 128, 135, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 47, 140, 49, 133, 140, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 48, 145, 51, 138, 145, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 49, 150, 52, 143, 150, 0);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 50, 155, 54, 148, 155, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 51, 193, 67, 187, 193, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 52, 208, 73, 204, 208, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 53, 224, 78, 223, 224, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 54, 241, 84, 244, 241, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 55, 260, 91, 267, 260, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 56, 280, 98, 292, 280, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 57, 299, 104, 317, 299, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 58, 319, 112, 343, 319, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 59, 340, 119, 372, 340, 40120);
INSERT INTO `player_classlevelstats`(`class`, `level`, `str`, `agi`, `sta`, `inte`, `VerifiedBuild`) VALUES (13, 60, 450, 157, 414, 450, 40871);
