/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.5.8-MariaDB : Database - azdf_chars
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `account_data` */

DROP TABLE IF EXISTS `account_data`;

CREATE TABLE `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `account_data` */

/*Table structure for table `account_instance_times` */

DROP TABLE IF EXISTS `account_instance_times`;

CREATE TABLE `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT 0,
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `account_instance_times` */

/*Table structure for table `account_tutorial` */

DROP TABLE IF EXISTS `account_tutorial`;

CREATE TABLE `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT 0,
  `tut1` int(10) unsigned NOT NULL DEFAULT 0,
  `tut2` int(10) unsigned NOT NULL DEFAULT 0,
  `tut3` int(10) unsigned NOT NULL DEFAULT 0,
  `tut4` int(10) unsigned NOT NULL DEFAULT 0,
  `tut5` int(10) unsigned NOT NULL DEFAULT 0,
  `tut6` int(10) unsigned NOT NULL DEFAULT 0,
  `tut7` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `account_tutorial` */

/*Table structure for table `arena_team` */

DROP TABLE IF EXISTS `arena_team`;

CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captainGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rating` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT 0,
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT 0,
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT 0,
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `emblemColor` int(10) unsigned NOT NULL DEFAULT 0,
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `borderColor` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `arena_team` */

/*Table structure for table `arena_team_member` */

DROP TABLE IF EXISTS `arena_team_member`;

CREATE TABLE `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT 0,
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT 0,
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT 0,
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `arena_team_member` */

/*Table structure for table `auction_bidders` */

DROP TABLE IF EXISTS `auction_bidders`;

CREATE TABLE `auction_bidders` (
  `auctionId` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`auctionId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `auction_bidders` */

/*Table structure for table `auction_items` */

DROP TABLE IF EXISTS `auction_items`;

CREATE TABLE `auction_items` (
  `auctionId` int(10) unsigned NOT NULL,
  `itemGuid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`auctionId`,`itemGuid`),
  UNIQUE KEY `idx_itemGuid` (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `auction_items` */

/*Table structure for table `auctionhouse` */

DROP TABLE IF EXISTS `auctionhouse`;

CREATE TABLE `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `auctionHouseId` int(10) unsigned NOT NULL DEFAULT 0,
  `owner` bigint(20) unsigned NOT NULL DEFAULT 0,
  `bidder` bigint(20) unsigned NOT NULL DEFAULT 0,
  `minBid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `buyoutOrUnitPrice` bigint(20) unsigned NOT NULL DEFAULT 0,
  `deposit` bigint(20) unsigned NOT NULL DEFAULT 0,
  `bidAmount` bigint(20) unsigned NOT NULL DEFAULT 0,
  `startTime` bigint(20) NOT NULL DEFAULT 0,
  `endTime` bigint(20) NOT NULL DEFAULT 0,
  `serverFlags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `auctionhouse` */

/*Table structure for table `blackmarket_auctions` */

DROP TABLE IF EXISTS `blackmarket_auctions`;

CREATE TABLE `blackmarket_auctions` (
  `marketId` int(11) NOT NULL DEFAULT 0,
  `currentBid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0,
  `numBids` int(11) NOT NULL DEFAULT 0,
  `bidder` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`marketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blackmarket_auctions` */

/*Table structure for table `bugreport` */

DROP TABLE IF EXISTS `bugreport`;

CREATE TABLE `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Debug System';

/*Data for the table `bugreport` */

/*Table structure for table `calendar_events` */

DROP TABLE IF EXISTS `calendar_events`;

CREATE TABLE `calendar_events` (
  `EventID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Owner` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT 4,
  `TextureID` int(11) NOT NULL DEFAULT -1,
  `Date` bigint(20) NOT NULL DEFAULT 0,
  `Flags` int(10) unsigned NOT NULL DEFAULT 0,
  `LockDate` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `calendar_events` */

/*Table structure for table `calendar_invites` */

DROP TABLE IF EXISTS `calendar_invites`;

CREATE TABLE `calendar_invites` (
  `InviteID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `EventID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Invitee` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Sender` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Status` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ResponseTime` bigint(20) NOT NULL DEFAULT 0,
  `ModerationRank` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`InviteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `calendar_invites` */

/*Table structure for table `channels` */

DROP TABLE IF EXISTS `channels`;

CREATE TABLE `channels` (
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannedList` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastUsed` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Channel System';

/*Data for the table `channels` */

/*Table structure for table `character_account_data` */

DROP TABLE IF EXISTS `character_account_data`;

CREATE TABLE `character_account_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_account_data` */

/*Table structure for table `character_achievement` */

DROP TABLE IF EXISTS `character_achievement`;

CREATE TABLE `character_achievement` (
  `guid` bigint(20) unsigned NOT NULL,
  `achievement` int(10) unsigned NOT NULL,
  `date` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_achievement` */

/*Table structure for table `character_achievement_progress` */

DROP TABLE IF EXISTS `character_achievement_progress`;

CREATE TABLE `character_achievement_progress` (
  `guid` bigint(20) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_achievement_progress` */

/*Table structure for table `character_action` */

DROP TABLE IF EXISTS `character_action`;

CREATE TABLE `character_action` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `traitConfigId` int(11) NOT NULL DEFAULT 0,
  `button` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `action` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spec`,`traitConfigId`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_action` */

/*Table structure for table `character_arena_stats` */

DROP TABLE IF EXISTS `character_arena_stats`;

CREATE TABLE `character_arena_stats` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `matchMakerRating` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_arena_stats` */

/*Table structure for table `character_aura` */

DROP TABLE IF EXISTS `character_aura`;

CREATE TABLE `character_aura` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `recalculateMask` int(10) unsigned NOT NULL DEFAULT 0,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `maxDuration` int(11) NOT NULL DEFAULT 0,
  `remainTime` int(11) NOT NULL DEFAULT 0,
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `castItemId` int(10) unsigned NOT NULL DEFAULT 0,
  `castItemLevel` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_aura` */

/*Table structure for table `character_aura_effect` */

DROP TABLE IF EXISTS `character_aura_effect`;

CREATE TABLE `character_aura_effect` (
  `guid` bigint(20) unsigned NOT NULL,
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `effectIndex` tinyint(3) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `baseAmount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_aura_effect` */

/*Table structure for table `character_aura_stored_location` */

DROP TABLE IF EXISTS `character_aura_stored_location`;

CREATE TABLE `character_aura_stored_location` (
  `Guid` bigint(20) unsigned NOT NULL COMMENT 'Global Unique Identifier of Player',
  `Spell` int(10) unsigned NOT NULL COMMENT 'Spell Identifier',
  `MapId` int(10) unsigned NOT NULL COMMENT 'Map Id',
  `PositionX` float NOT NULL COMMENT 'position x',
  `PositionY` float NOT NULL COMMENT 'position y',
  `PositionZ` float NOT NULL COMMENT 'position z',
  `Orientation` float NOT NULL COMMENT 'Orientation',
  PRIMARY KEY (`Guid`,`Spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_aura_stored_location` */

/*Table structure for table `character_banned` */

DROP TABLE IF EXISTS `character_banned`;

CREATE TABLE `character_banned` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `bandate` bigint(20) NOT NULL DEFAULT 0,
  `unbandate` bigint(20) NOT NULL DEFAULT 0,
  `bannedby` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banreason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Ban List';

/*Data for the table `character_banned` */

/*Table structure for table `character_battleground_data` */

DROP TABLE IF EXISTS `character_battleground_data`;

CREATE TABLE `character_battleground_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT 0,
  `joinY` float NOT NULL DEFAULT 0,
  `joinZ` float NOT NULL DEFAULT 0,
  `joinO` float NOT NULL DEFAULT 0,
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT 0,
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT 0,
  `mountSpell` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_battleground_data` */

/*Table structure for table `character_battleground_random` */

DROP TABLE IF EXISTS `character_battleground_random`;

CREATE TABLE `character_battleground_random` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_battleground_random` */

/*Table structure for table `character_cuf_profiles` */

DROP TABLE IF EXISTS `character_cuf_profiles`;

CREATE TABLE `character_cuf_profiles` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Many Configurable Bool Options',
  `topPoint` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Frame top alignment',
  `bottomPoint` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Frame bottom alignment',
  `leftPoint` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Frame left alignment',
  `topOffset` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Frame position offset from top',
  `bottomOffset` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Frame position offset from bottom',
  `leftOffset` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Frame position offset from left',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_cuf_profiles` */

/*Table structure for table `character_currency` */

DROP TABLE IF EXISTS `character_currency`;

CREATE TABLE `character_currency` (
  `CharacterGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Currency` smallint(5) unsigned NOT NULL,
  `Quantity` int(10) unsigned NOT NULL,
  `WeeklyQuantity` int(10) unsigned NOT NULL,
  `TrackedQuantity` int(10) unsigned NOT NULL,
  `Flags` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`CharacterGuid`,`Currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_currency` */

/*Table structure for table `character_customizations` */

DROP TABLE IF EXISTS `character_customizations`;

CREATE TABLE `character_customizations` (
  `guid` bigint(20) unsigned NOT NULL,
  `chrCustomizationOptionID` int(10) unsigned NOT NULL,
  `chrCustomizationChoiceID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`chrCustomizationOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_customizations` */

/*Table structure for table `character_declinedname` */

DROP TABLE IF EXISTS `character_declinedname`;

CREATE TABLE `character_declinedname` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dative` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accusative` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instrumental` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prepositional` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_declinedname` */

/*Table structure for table `character_equipmentsets` */

DROP TABLE IF EXISTS `character_equipmentsets`;

CREATE TABLE `character_equipmentsets` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `setguid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iconname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ignore_mask` int(10) unsigned NOT NULL DEFAULT 0,
  `AssignedSpecIndex` int(11) NOT NULL DEFAULT -1,
  `item0` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item1` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item2` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item3` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item4` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item5` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item6` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item7` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item8` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item9` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item10` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item11` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item12` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item13` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item14` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item15` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item16` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item17` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item18` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_equipmentsets` */

/*Table structure for table `character_favorite_auctions` */

DROP TABLE IF EXISTS `character_favorite_auctions`;

CREATE TABLE `character_favorite_auctions` (
  `guid` bigint(20) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `itemId` int(10) unsigned NOT NULL DEFAULT 0,
  `itemLevel` int(10) unsigned NOT NULL DEFAULT 0,
  `battlePetSpeciesId` int(10) unsigned NOT NULL DEFAULT 0,
  `suffixItemNameDescriptionId` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_favorite_auctions` */

/*Table structure for table `character_fishingsteps` */

DROP TABLE IF EXISTS `character_fishingsteps`;

CREATE TABLE `character_fishingsteps` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `fishingSteps` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_fishingsteps` */

/*Table structure for table `character_garrison` */

DROP TABLE IF EXISTS `character_garrison`;

CREATE TABLE `character_garrison` (
  `guid` bigint(20) unsigned NOT NULL,
  `siteLevelId` int(10) unsigned NOT NULL DEFAULT 0,
  `followerActivationsRemainingToday` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_garrison` */

/*Table structure for table `character_garrison_blueprints` */

DROP TABLE IF EXISTS `character_garrison_blueprints`;

CREATE TABLE `character_garrison_blueprints` (
  `guid` bigint(20) unsigned NOT NULL,
  `buildingId` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`buildingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_garrison_blueprints` */

/*Table structure for table `character_garrison_buildings` */

DROP TABLE IF EXISTS `character_garrison_buildings`;

CREATE TABLE `character_garrison_buildings` (
  `guid` bigint(20) unsigned NOT NULL,
  `plotInstanceId` int(10) unsigned NOT NULL DEFAULT 0,
  `buildingId` int(10) unsigned NOT NULL DEFAULT 0,
  `timeBuilt` bigint(20) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`plotInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_garrison_buildings` */

/*Table structure for table `character_garrison_follower_abilities` */

DROP TABLE IF EXISTS `character_garrison_follower_abilities`;

CREATE TABLE `character_garrison_follower_abilities` (
  `dbId` bigint(20) unsigned NOT NULL,
  `abilityId` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`dbId`,`abilityId`,`slot`),
  CONSTRAINT `fk_foll_dbid` FOREIGN KEY (`dbId`) REFERENCES `character_garrison_followers` (`dbId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_garrison_follower_abilities` */

/*Table structure for table `character_garrison_followers` */

DROP TABLE IF EXISTS `character_garrison_followers`;

CREATE TABLE `character_garrison_followers` (
  `dbId` bigint(20) unsigned NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `followerId` int(10) unsigned NOT NULL,
  `quality` int(10) unsigned NOT NULL DEFAULT 2,
  `level` int(10) unsigned NOT NULL DEFAULT 90,
  `itemLevelWeapon` int(10) unsigned NOT NULL DEFAULT 600,
  `itemLevelArmor` int(10) unsigned NOT NULL DEFAULT 600,
  `xp` int(10) unsigned NOT NULL DEFAULT 0,
  `currentBuilding` int(10) unsigned NOT NULL DEFAULT 0,
  `currentMission` int(10) unsigned NOT NULL DEFAULT 0,
  `status` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`dbId`),
  UNIQUE KEY `idx_guid_id` (`guid`,`followerId`),
  CONSTRAINT `fk_foll_owner` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_garrison_followers` */

/*Table structure for table `character_gifts` */

DROP TABLE IF EXISTS `character_gifts`;

CREATE TABLE `character_gifts` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `entry` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_gifts` */

/*Table structure for table `character_glyphs` */

DROP TABLE IF EXISTS `character_glyphs`;

CREATE TABLE `character_glyphs` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `glyphId` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`talentGroup`,`glyphId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_glyphs` */

/*Table structure for table `character_homebind` */

DROP TABLE IF EXISTS `character_homebind`;

CREATE TABLE `character_homebind` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_homebind` */

/*Table structure for table `character_instance_lock` */

DROP TABLE IF EXISTS `character_instance_lock`;

CREATE TABLE `character_instance_lock` (
  `guid` bigint(20) unsigned NOT NULL,
  `mapId` int(10) unsigned NOT NULL,
  `lockId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned DEFAULT NULL,
  `difficulty` tinyint(3) unsigned DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completedEncountersMask` int(10) unsigned DEFAULT NULL,
  `entranceWorldSafeLocId` int(10) unsigned DEFAULT NULL,
  `expiryTime` bigint(20) unsigned DEFAULT NULL,
  `extended` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`,`mapId`,`lockId`),
  UNIQUE KEY `uk_character_instanceId` (`guid`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_instance_lock` */

/*Table structure for table `character_inventory` */

DROP TABLE IF EXISTS `character_inventory`;

CREATE TABLE `character_inventory` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `bag` bigint(20) unsigned NOT NULL DEFAULT 0,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `item` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `uk_location` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_inventory` */

/*Table structure for table `character_pet` */

DROP TABLE IF EXISTS `character_pet`;

CREATE TABLE `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `entry` int(10) unsigned NOT NULL DEFAULT 0,
  `owner` bigint(20) unsigned NOT NULL DEFAULT 0,
  `modelid` int(10) unsigned DEFAULT 0,
  `CreatedBySpell` int(10) unsigned NOT NULL DEFAULT 0,
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level` smallint(5) unsigned NOT NULL DEFAULT 1,
  `exp` int(10) unsigned NOT NULL DEFAULT 0,
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `slot` smallint(6) NOT NULL DEFAULT -1,
  `curhealth` int(10) unsigned NOT NULL DEFAULT 1,
  `curmana` int(10) unsigned NOT NULL DEFAULT 0,
  `savetime` int(10) unsigned NOT NULL DEFAULT 0,
  `abdata` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pet System';

/*Data for the table `character_pet` */

/*Table structure for table `character_pet_declinedname` */

DROP TABLE IF EXISTS `character_pet_declinedname`;

CREATE TABLE `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `owner` int(10) unsigned NOT NULL DEFAULT 0,
  `genitive` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dative` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accusative` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instrumental` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prepositional` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_pet_declinedname` */

/*Table structure for table `character_pvp_talent` */

DROP TABLE IF EXISTS `character_pvp_talent`;

CREATE TABLE `character_pvp_talent` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentId0` int(10) unsigned NOT NULL,
  `talentId1` int(10) unsigned NOT NULL,
  `talentId2` int(10) unsigned NOT NULL,
  `talentId3` int(10) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`talentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_pvp_talent` */

/*Table structure for table `character_queststatus` */

DROP TABLE IF EXISTS `character_queststatus`;

CREATE TABLE `character_queststatus` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `quest` int(10) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `explored` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `acceptTime` bigint(20) NOT NULL DEFAULT 0,
  `endTime` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus` */

/*Table structure for table `character_queststatus_daily` */

DROP TABLE IF EXISTS `character_queststatus_daily`;

CREATE TABLE `character_queststatus_daily` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  `time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus_daily` */

/*Table structure for table `character_queststatus_monthly` */

DROP TABLE IF EXISTS `character_queststatus_monthly`;

CREATE TABLE `character_queststatus_monthly` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus_monthly` */

/*Table structure for table `character_queststatus_objectives` */

DROP TABLE IF EXISTS `character_queststatus_objectives`;

CREATE TABLE `character_queststatus_objectives` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `quest` int(10) unsigned NOT NULL DEFAULT 0,
  `objective` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`quest`,`objective`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus_objectives` */

/*Table structure for table `character_queststatus_objectives_criteria` */

DROP TABLE IF EXISTS `character_queststatus_objectives_criteria`;

CREATE TABLE `character_queststatus_objectives_criteria` (
  `guid` bigint(20) unsigned NOT NULL,
  `questObjectiveId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`questObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus_objectives_criteria` */

/*Table structure for table `character_queststatus_objectives_criteria_progress` */

DROP TABLE IF EXISTS `character_queststatus_objectives_criteria_progress`;

CREATE TABLE `character_queststatus_objectives_criteria_progress` (
  `guid` bigint(20) unsigned NOT NULL,
  `criteriaId` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`criteriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus_objectives_criteria_progress` */

/*Table structure for table `character_queststatus_rewarded` */

DROP TABLE IF EXISTS `character_queststatus_rewarded`;

CREATE TABLE `character_queststatus_rewarded` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus_rewarded` */

/*Table structure for table `character_queststatus_seasonal` */

DROP TABLE IF EXISTS `character_queststatus_seasonal`;

CREATE TABLE `character_queststatus_seasonal` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Event Identifier',
  `completedTime` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus_seasonal` */

/*Table structure for table `character_queststatus_weekly` */

DROP TABLE IF EXISTS `character_queststatus_weekly`;

CREATE TABLE `character_queststatus_weekly` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_queststatus_weekly` */

/*Table structure for table `character_reputation` */

DROP TABLE IF EXISTS `character_reputation`;

CREATE TABLE `character_reputation` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT 0,
  `standing` int(11) NOT NULL DEFAULT 0,
  `flags` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_reputation` */

/*Table structure for table `character_skills` */

DROP TABLE IF EXISTS `character_skills`;

CREATE TABLE `character_skills` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_skills` */

/*Table structure for table `character_social` */

DROP TABLE IF EXISTS `character_social`;

CREATE TABLE `character_social` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `friend` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Friend Flags',
  `note` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_social` */

/*Table structure for table `character_spell` */

DROP TABLE IF EXISTS `character_spell`;

CREATE TABLE `character_spell` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_spell` */

/*Table structure for table `character_spell_charges` */

DROP TABLE IF EXISTS `character_spell_charges`;

CREATE TABLE `character_spell_charges` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `categoryId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` bigint(20) NOT NULL DEFAULT 0,
  `rechargeEnd` bigint(20) NOT NULL DEFAULT 0,
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_spell_charges` */

/*Table structure for table `character_spell_cooldown` */

DROP TABLE IF EXISTS `character_spell_cooldown`;

CREATE TABLE `character_spell_cooldown` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Item Identifier',
  `time` bigint(20) NOT NULL DEFAULT 0,
  `categoryId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell category Id',
  `categoryEnd` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_spell_cooldown` */

/*Table structure for table `character_spell_favorite` */

DROP TABLE IF EXISTS `character_spell_favorite`;

CREATE TABLE `character_spell_favorite` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `character_spell_favorite` */

/*Table structure for table `character_stats` */

DROP TABLE IF EXISTS `character_stats`;

CREATE TABLE `character_stats` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower1` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower2` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower3` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower4` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower5` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower6` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower7` int(10) unsigned NOT NULL DEFAULT 0,
  `strength` int(10) unsigned NOT NULL DEFAULT 0,
  `agility` int(10) unsigned NOT NULL DEFAULT 0,
  `stamina` int(10) unsigned NOT NULL DEFAULT 0,
  `intellect` int(10) unsigned NOT NULL DEFAULT 0,
  `armor` int(10) unsigned NOT NULL DEFAULT 0,
  `resHoly` int(10) unsigned NOT NULL DEFAULT 0,
  `resFire` int(10) unsigned NOT NULL DEFAULT 0,
  `resNature` int(10) unsigned NOT NULL DEFAULT 0,
  `resFrost` int(10) unsigned NOT NULL DEFAULT 0,
  `resShadow` int(10) unsigned NOT NULL DEFAULT 0,
  `resArcane` int(10) unsigned NOT NULL DEFAULT 0,
  `blockPct` float unsigned NOT NULL DEFAULT 0,
  `dodgePct` float unsigned NOT NULL DEFAULT 0,
  `parryPct` float unsigned NOT NULL DEFAULT 0,
  `critPct` float unsigned NOT NULL DEFAULT 0,
  `rangedCritPct` float unsigned NOT NULL DEFAULT 0,
  `spellCritPct` float unsigned NOT NULL DEFAULT 0,
  `attackPower` int(10) unsigned NOT NULL DEFAULT 0,
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT 0,
  `spellPower` int(10) unsigned NOT NULL DEFAULT 0,
  `resilience` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_stats` */

/*Table structure for table `character_talent` */

DROP TABLE IF EXISTS `character_talent`;

CREATE TABLE `character_talent` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentId` int(10) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`talentId`,`talentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_talent` */

/*Table structure for table `character_trait_config` */

DROP TABLE IF EXISTS `character_trait_config`;

CREATE TABLE `character_trait_config` (
  `guid` bigint(20) unsigned NOT NULL,
  `traitConfigId` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `chrSpecializationId` int(11) DEFAULT NULL,
  `combatConfigFlags` int(11) DEFAULT NULL,
  `localIdentifier` int(11) DEFAULT NULL,
  `skillLineId` int(11) DEFAULT NULL,
  `traitSystemId` int(11) DEFAULT NULL,
  `name` varchar(260) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`,`traitConfigId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_trait_config` */

/*Table structure for table `character_trait_entry` */

DROP TABLE IF EXISTS `character_trait_entry`;

CREATE TABLE `character_trait_entry` (
  `guid` bigint(20) unsigned NOT NULL,
  `traitConfigId` int(11) NOT NULL,
  `traitNodeId` int(11) NOT NULL,
  `traitNodeEntryId` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `grantedRanks` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`traitConfigId`,`traitNodeId`,`traitNodeEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_trait_entry` */

/*Table structure for table `character_transmog_outfits` */

DROP TABLE IF EXISTS `character_transmog_outfits`;

CREATE TABLE `character_transmog_outfits` (
  `guid` bigint(20) NOT NULL DEFAULT 0,
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iconname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ignore_mask` int(11) NOT NULL DEFAULT 0,
  `appearance0` int(11) NOT NULL DEFAULT 0,
  `appearance1` int(11) NOT NULL DEFAULT 0,
  `appearance2` int(11) NOT NULL DEFAULT 0,
  `appearance3` int(11) NOT NULL DEFAULT 0,
  `appearance4` int(11) NOT NULL DEFAULT 0,
  `appearance5` int(11) NOT NULL DEFAULT 0,
  `appearance6` int(11) NOT NULL DEFAULT 0,
  `appearance7` int(11) NOT NULL DEFAULT 0,
  `appearance8` int(11) NOT NULL DEFAULT 0,
  `appearance9` int(11) NOT NULL DEFAULT 0,
  `appearance10` int(11) NOT NULL DEFAULT 0,
  `appearance11` int(11) NOT NULL DEFAULT 0,
  `appearance12` int(11) NOT NULL DEFAULT 0,
  `appearance13` int(11) NOT NULL DEFAULT 0,
  `appearance14` int(11) NOT NULL DEFAULT 0,
  `appearance15` int(11) NOT NULL DEFAULT 0,
  `appearance16` int(11) NOT NULL DEFAULT 0,
  `appearance17` int(11) NOT NULL DEFAULT 0,
  `appearance18` int(11) NOT NULL DEFAULT 0,
  `mainHandEnchant` int(11) NOT NULL DEFAULT 0,
  `offHandEnchant` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_transmog_outfits` */

/*Table structure for table `character_void_storage` */

DROP TABLE IF EXISTS `character_void_storage`;

CREATE TABLE `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `itemEntry` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `randomBonusListId` int(10) unsigned NOT NULL DEFAULT 0,
  `fixedScalingLevel` int(10) unsigned DEFAULT 0,
  `artifactKnowledgeLevel` int(10) unsigned DEFAULT 0,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `bonusListIDs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `character_void_storage` */

/*Table structure for table `characters` */

DROP TABLE IF EXISTS `characters`;

CREATE TABLE `characters` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `xp` int(10) unsigned NOT NULL DEFAULT 0,
  `money` bigint(20) unsigned NOT NULL DEFAULT 0,
  `inventorySlots` tinyint(3) unsigned NOT NULL DEFAULT 16,
  `bankSlots` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `restState` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `playerFlags` int(10) unsigned NOT NULL DEFAULT 0,
  `playerFlagsEx` int(10) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `map` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dungeonDifficulty` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `raidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT 14,
  `legacyRaidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT 3,
  `orientation` float NOT NULL DEFAULT 0,
  `taximask` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `createTime` bigint(20) NOT NULL DEFAULT 0,
  `createMode` tinyint(4) NOT NULL DEFAULT 0,
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `totaltime` int(10) unsigned NOT NULL DEFAULT 0,
  `leveltime` int(10) unsigned NOT NULL DEFAULT 0,
  `logout_time` bigint(20) NOT NULL DEFAULT 0,
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rest_bonus` float NOT NULL DEFAULT 0,
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT 0,
  `resettalents_time` bigint(20) NOT NULL DEFAULT 0,
  `numRespecs` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `primarySpecialization` int(10) unsigned NOT NULL DEFAULT 0,
  `trans_x` float NOT NULL DEFAULT 0,
  `trans_y` float NOT NULL DEFAULT 0,
  `trans_z` float NOT NULL DEFAULT 0,
  `trans_o` float NOT NULL DEFAULT 0,
  `transguid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT 0,
  `summonedPetNumber` int(10) unsigned NOT NULL DEFAULT 0,
  `at_login` smallint(5) unsigned NOT NULL DEFAULT 0,
  `zone` smallint(5) unsigned NOT NULL DEFAULT 0,
  `death_expire_time` bigint(20) NOT NULL DEFAULT 0,
  `taxi_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalKills` int(10) unsigned NOT NULL DEFAULT 0,
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT 0,
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT 0,
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT 0,
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT 0,
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `health` int(10) unsigned NOT NULL DEFAULT 0,
  `power1` int(10) unsigned NOT NULL DEFAULT 0,
  `power2` int(10) unsigned NOT NULL DEFAULT 0,
  `power3` int(10) unsigned NOT NULL DEFAULT 0,
  `power4` int(10) unsigned NOT NULL DEFAULT 0,
  `power5` int(10) unsigned NOT NULL DEFAULT 0,
  `power6` int(10) unsigned NOT NULL DEFAULT 0,
  `power7` int(10) unsigned NOT NULL DEFAULT 0,
  `latency` int(10) unsigned NOT NULL DEFAULT 0,
  `activeTalentGroup` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `lootSpecId` int(10) unsigned NOT NULL DEFAULT 0,
  `exploredZones` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipmentCache` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knownTitles` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `honor` int(10) unsigned NOT NULL DEFAULT 0,
  `honorLevel` int(10) unsigned NOT NULL DEFAULT 1,
  `honorRestState` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `honorRestBonus` float NOT NULL DEFAULT 0,
  `lastLoginBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

/*Data for the table `characters` */

/*Table structure for table `corpse` */

DROP TABLE IF EXISTS `corpse`;

CREATE TABLE `corpse` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `mapId` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `displayId` int(10) unsigned NOT NULL DEFAULT 0,
  `itemCache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `flags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `time` int(10) unsigned NOT NULL DEFAULT 0,
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `instanceId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Death System';

/*Data for the table `corpse` */

/*Table structure for table `corpse_customizations` */

DROP TABLE IF EXISTS `corpse_customizations`;

CREATE TABLE `corpse_customizations` (
  `ownerGuid` bigint(20) unsigned NOT NULL,
  `chrCustomizationOptionID` int(10) unsigned NOT NULL,
  `chrCustomizationChoiceID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ownerGuid`,`chrCustomizationOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `corpse_customizations` */

/*Table structure for table `corpse_phases` */

DROP TABLE IF EXISTS `corpse_phases`;

CREATE TABLE `corpse_phases` (
  `OwnerGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `PhaseId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`OwnerGuid`,`PhaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `corpse_phases` */

/*Table structure for table `game_event_condition_save` */

DROP TABLE IF EXISTS `game_event_condition_save`;

CREATE TABLE `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT 0,
  `done` float DEFAULT 0,
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `game_event_condition_save` */

/*Table structure for table `game_event_save` */

DROP TABLE IF EXISTS `game_event_save`;

CREATE TABLE `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `next_start` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `game_event_save` */

/*Table structure for table `gm_bug` */

DROP TABLE IF EXISTS `gm_bug`;

CREATE TABLE `gm_bug` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` bigint(20) NOT NULL DEFAULT 0,
  `mapId` smallint(5) unsigned NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `facing` float NOT NULL DEFAULT 0,
  `closedBy` bigint(20) NOT NULL DEFAULT 0,
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gm_bug` */

/*Table structure for table `gm_complaint` */

DROP TABLE IF EXISTS `gm_complaint`;

CREATE TABLE `gm_complaint` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` bigint(20) NOT NULL DEFAULT 0,
  `mapId` smallint(5) unsigned NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `facing` float NOT NULL DEFAULT 0,
  `targetCharacterGuid` bigint(20) unsigned NOT NULL,
  `reportType` int(11) NOT NULL DEFAULT 0,
  `reportMajorCategory` int(11) NOT NULL DEFAULT 0,
  `reportMinorCategoryFlags` int(11) NOT NULL DEFAULT 0,
  `reportLineIndex` int(11) NOT NULL,
  `closedBy` bigint(20) NOT NULL DEFAULT 0,
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gm_complaint` */

/*Table structure for table `gm_complaint_chatlog` */

DROP TABLE IF EXISTS `gm_complaint_chatlog`;

CREATE TABLE `gm_complaint_chatlog` (
  `complaintId` int(10) unsigned NOT NULL,
  `lineId` int(10) unsigned NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`complaintId`,`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gm_complaint_chatlog` */

/*Table structure for table `gm_suggestion` */

DROP TABLE IF EXISTS `gm_suggestion`;

CREATE TABLE `gm_suggestion` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` bigint(20) NOT NULL DEFAULT 0,
  `mapId` smallint(5) unsigned NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `facing` float NOT NULL DEFAULT 0,
  `closedBy` bigint(20) NOT NULL DEFAULT 0,
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gm_suggestion` */

/*Table structure for table `group_member` */

DROP TABLE IF EXISTS `group_member`;

CREATE TABLE `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` bigint(20) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `roles` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Groups';

/*Data for the table `group_member` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` bigint(20) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` bigint(20) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` binary(16) NOT NULL,
  `icon2` binary(16) NOT NULL,
  `icon3` binary(16) NOT NULL,
  `icon4` binary(16) NOT NULL,
  `icon5` binary(16) NOT NULL,
  `icon6` binary(16) NOT NULL,
  `icon7` binary(16) NOT NULL,
  `icon8` binary(16) NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `raidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT 14,
  `legacyRaidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT 3,
  `masterLooterGuid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Groups';

/*Data for the table `groups` */

/*Table structure for table `guild` */

DROP TABLE IF EXISTS `guild`;

CREATE TABLE `guild` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `leaderguid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `info` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `motd` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT 0,
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

/*Data for the table `guild` */

/*Table structure for table `guild_achievement` */

DROP TABLE IF EXISTS `guild_achievement`;

CREATE TABLE `guild_achievement` (
  `guildId` bigint(20) unsigned NOT NULL,
  `achievement` int(10) unsigned NOT NULL,
  `date` bigint(20) NOT NULL DEFAULT 0,
  `guids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guild_achievement` */

/*Table structure for table `guild_achievement_progress` */

DROP TABLE IF EXISTS `guild_achievement_progress`;

CREATE TABLE `guild_achievement_progress` (
  `guildId` bigint(20) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` bigint(20) NOT NULL DEFAULT 0,
  `completedGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guild_achievement_progress` */

/*Table structure for table `guild_bank_eventlog` */

DROP TABLE IF EXISTS `guild_bank_eventlog`;

CREATE TABLE `guild_bank_eventlog` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Event type',
  `PlayerGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `ItemOrMoney` bigint(20) unsigned NOT NULL DEFAULT 0,
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT 0,
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Destination Tab Id',
  `TimeStamp` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guild_bank_eventlog` */

/*Table structure for table `guild_bank_item` */

DROP TABLE IF EXISTS `guild_bank_item`;

CREATE TABLE `guild_bank_item` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guild_bank_item` */

/*Table structure for table `guild_bank_right` */

DROP TABLE IF EXISTS `guild_bank_right`;

CREATE TABLE `guild_bank_right` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gbright` tinyint(4) NOT NULL DEFAULT 0,
  `SlotPerDay` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guild_bank_right` */

/*Table structure for table `guild_bank_tab` */

DROP TABLE IF EXISTS `guild_bank_tab`;

CREATE TABLE `guild_bank_tab` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `TabName` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TabIcon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TabText` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guild_bank_tab` */

/*Table structure for table `guild_eventlog` */

DROP TABLE IF EXISTS `guild_eventlog`;

CREATE TABLE `guild_eventlog` (
  `guildid` bigint(20) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` bigint(20) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` bigint(20) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` bigint(20) NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild Eventlog';

/*Data for the table `guild_eventlog` */

/*Table structure for table `guild_member` */

DROP TABLE IF EXISTS `guild_member`;

CREATE TABLE `guild_member` (
  `guildid` bigint(20) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` bigint(20) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `offnote` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

/*Data for the table `guild_member` */

/*Table structure for table `guild_member_withdraw` */

DROP TABLE IF EXISTS `guild_member_withdraw`;

CREATE TABLE `guild_member_withdraw` (
  `guid` bigint(20) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT 0,
  `tab1` int(10) unsigned NOT NULL DEFAULT 0,
  `tab2` int(10) unsigned NOT NULL DEFAULT 0,
  `tab3` int(10) unsigned NOT NULL DEFAULT 0,
  `tab4` int(10) unsigned NOT NULL DEFAULT 0,
  `tab5` int(10) unsigned NOT NULL DEFAULT 0,
  `tab6` int(10) unsigned NOT NULL DEFAULT 0,
  `tab7` int(10) unsigned NOT NULL DEFAULT 0,
  `money` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild Member Daily Withdraws';

/*Data for the table `guild_member_withdraw` */

/*Table structure for table `guild_newslog` */

DROP TABLE IF EXISTS `guild_newslog`;

CREATE TABLE `guild_newslog` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Event type',
  `PlayerGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Flags` int(10) unsigned NOT NULL DEFAULT 0,
  `Value` int(10) unsigned NOT NULL DEFAULT 0,
  `TimeStamp` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guild_newslog` */

/*Table structure for table `guild_rank` */

DROP TABLE IF EXISTS `guild_rank`;

CREATE TABLE `guild_rank` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `rid` tinyint(3) unsigned NOT NULL,
  `RankOrder` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rights` int(10) unsigned NOT NULL DEFAULT 0,
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

/*Data for the table `guild_rank` */

/*Table structure for table `instance` */

DROP TABLE IF EXISTS `instance`;

CREATE TABLE `instance` (
  `instanceId` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completedEncountersMask` int(10) unsigned DEFAULT NULL,
  `entranceWorldSafeLocId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `instance` */

/*Table structure for table `item_instance` */

DROP TABLE IF EXISTS `item_instance`;

CREATE TABLE `item_instance` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `itemEntry` int(10) unsigned NOT NULL DEFAULT 0,
  `owner_guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `creatorGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `giftCreatorGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` int(10) unsigned NOT NULL DEFAULT 1,
  `duration` int(11) NOT NULL DEFAULT 0,
  `charges` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `enchantments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `randomBonusListId` int(10) unsigned NOT NULL DEFAULT 0,
  `durability` smallint(5) unsigned NOT NULL DEFAULT 0,
  `playedTime` int(10) unsigned NOT NULL DEFAULT 0,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transmogrification` int(10) unsigned NOT NULL DEFAULT 0,
  `enchantIllusion` int(10) unsigned NOT NULL DEFAULT 0,
  `battlePetSpeciesId` int(10) unsigned NOT NULL DEFAULT 0,
  `battlePetBreedData` int(10) unsigned NOT NULL DEFAULT 0,
  `battlePetLevel` smallint(5) unsigned NOT NULL DEFAULT 0,
  `battlePetDisplayId` int(10) unsigned NOT NULL DEFAULT 0,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `bonusListIDs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Item System';

/*Data for the table `item_instance` */

/*Table structure for table `item_instance_artifact` */

DROP TABLE IF EXISTS `item_instance_artifact`;

CREATE TABLE `item_instance_artifact` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `xp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `artifactAppearanceId` int(10) unsigned NOT NULL DEFAULT 0,
  `artifactTierId` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_artifact` */

/*Table structure for table `item_instance_artifact_powers` */

DROP TABLE IF EXISTS `item_instance_artifact_powers`;

CREATE TABLE `item_instance_artifact_powers` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `artifactPowerId` int(10) unsigned NOT NULL,
  `purchasedRank` tinyint(3) unsigned DEFAULT 0,
  PRIMARY KEY (`itemGuid`,`artifactPowerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_artifact_powers` */

/*Table structure for table `item_instance_azerite` */

DROP TABLE IF EXISTS `item_instance_azerite`;

CREATE TABLE `item_instance_azerite` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `xp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 1,
  `knowledgeLevel` int(10) unsigned NOT NULL DEFAULT 0,
  `selectedAzeriteEssences1specId` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences1azeriteEssenceId1` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences1azeriteEssenceId2` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences1azeriteEssenceId3` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences1azeriteEssenceId4` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences2specId` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences2azeriteEssenceId1` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences2azeriteEssenceId2` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences2azeriteEssenceId3` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences2azeriteEssenceId4` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences3specId` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences3azeriteEssenceId1` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences3azeriteEssenceId2` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences3azeriteEssenceId3` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences3azeriteEssenceId4` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences4specId` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences4azeriteEssenceId1` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences4azeriteEssenceId2` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences4azeriteEssenceId3` int(10) unsigned DEFAULT 0,
  `selectedAzeriteEssences4azeriteEssenceId4` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_azerite` */

/*Table structure for table `item_instance_azerite_empowered` */

DROP TABLE IF EXISTS `item_instance_azerite_empowered`;

CREATE TABLE `item_instance_azerite_empowered` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `azeritePowerId1` int(11) NOT NULL,
  `azeritePowerId2` int(11) NOT NULL,
  `azeritePowerId3` int(11) NOT NULL,
  `azeritePowerId4` int(11) NOT NULL,
  `azeritePowerId5` int(11) NOT NULL,
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_azerite_empowered` */

/*Table structure for table `item_instance_azerite_milestone_power` */

DROP TABLE IF EXISTS `item_instance_azerite_milestone_power`;

CREATE TABLE `item_instance_azerite_milestone_power` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `azeriteItemMilestonePowerId` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`,`azeriteItemMilestonePowerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_azerite_milestone_power` */

/*Table structure for table `item_instance_azerite_unlocked_essence` */

DROP TABLE IF EXISTS `item_instance_azerite_unlocked_essence`;

CREATE TABLE `item_instance_azerite_unlocked_essence` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `azeriteEssenceId` int(10) unsigned NOT NULL DEFAULT 0,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`,`azeriteEssenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_azerite_unlocked_essence` */

/*Table structure for table `item_instance_gems` */

DROP TABLE IF EXISTS `item_instance_gems`;

CREATE TABLE `item_instance_gems` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `gemItemId1` int(10) unsigned NOT NULL DEFAULT 0,
  `gemBonuses1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gemContext1` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gemScalingLevel1` int(10) unsigned NOT NULL DEFAULT 0,
  `gemItemId2` int(10) unsigned NOT NULL DEFAULT 0,
  `gemBonuses2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gemContext2` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gemScalingLevel2` int(10) unsigned NOT NULL DEFAULT 0,
  `gemItemId3` int(10) unsigned NOT NULL DEFAULT 0,
  `gemBonuses3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gemContext3` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gemScalingLevel3` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_gems` */

/*Table structure for table `item_instance_modifiers` */

DROP TABLE IF EXISTS `item_instance_modifiers`;

CREATE TABLE `item_instance_modifiers` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `fixedScalingLevel` int(10) unsigned DEFAULT 0,
  `artifactKnowledgeLevel` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_modifiers` */

/*Table structure for table `item_instance_transmog` */

DROP TABLE IF EXISTS `item_instance_transmog`;

CREATE TABLE `item_instance_transmog` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `itemModifiedAppearanceAllSpecs` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec1` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec2` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec3` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec4` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec5` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentAllSpecs` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec1` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec2` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec3` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec4` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec5` int(11) NOT NULL DEFAULT 0,
  `secondaryItemModifiedAppearanceAllSpecs` int(11) NOT NULL DEFAULT 0,
  `secondaryItemModifiedAppearanceSpec1` int(11) NOT NULL DEFAULT 0,
  `secondaryItemModifiedAppearanceSpec2` int(11) NOT NULL DEFAULT 0,
  `secondaryItemModifiedAppearanceSpec3` int(11) NOT NULL DEFAULT 0,
  `secondaryItemModifiedAppearanceSpec4` int(11) NOT NULL DEFAULT 0,
  `secondaryItemModifiedAppearanceSpec5` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_instance_transmog` */

/*Table structure for table `item_loot_items` */

DROP TABLE IF EXISTS `item_loot_items`;

CREATE TABLE `item_loot_items` (
  `container_id` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(11) NOT NULL DEFAULT 0 COMMENT 'stack size',
  `item_index` int(10) unsigned NOT NULL DEFAULT 0,
  `follow_rules` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT 0,
  `counted` tinyint(1) NOT NULL DEFAULT 0,
  `under_threshold` tinyint(1) NOT NULL DEFAULT 0,
  `needs_quest` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'quest drop',
  `rnd_bonus` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'random bonus list added when originally rolled',
  `context` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `bonus_list_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Space separated list of bonus list ids',
  PRIMARY KEY (`container_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_loot_items` */

/*Table structure for table `item_loot_money` */

DROP TABLE IF EXISTS `item_loot_money`;

CREATE TABLE `item_loot_money` (
  `container_id` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'money loot (in copper)',
  PRIMARY KEY (`container_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_loot_money` */

/*Table structure for table `item_refund_instance` */

DROP TABLE IF EXISTS `item_refund_instance`;

CREATE TABLE `item_refund_instance` (
  `item_guid` bigint(20) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` bigint(20) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` bigint(20) unsigned NOT NULL DEFAULT 0,
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Item Refund System';

/*Data for the table `item_refund_instance` */

/*Table structure for table `item_soulbound_trade_data` */

DROP TABLE IF EXISTS `item_soulbound_trade_data`;

CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` bigint(20) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Item Refund System';

/*Data for the table `item_soulbound_trade_data` */

/*Table structure for table `lfg_data` */

DROP TABLE IF EXISTS `lfg_data`;

CREATE TABLE `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT 0,
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='LFG Data';

/*Data for the table `lfg_data` */

/*Table structure for table `mail` */

DROP TABLE IF EXISTS `mail`;

CREATE TABLE `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `stationery` tinyint(4) NOT NULL DEFAULT 41,
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sender` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `receiver` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `subject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `expire_time` bigint(20) NOT NULL DEFAULT 0,
  `deliver_time` bigint(20) NOT NULL DEFAULT 0,
  `money` bigint(20) unsigned NOT NULL DEFAULT 0,
  `cod` bigint(20) unsigned NOT NULL DEFAULT 0,
  `checked` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mail System';

/*Data for the table `mail` */

/*Table structure for table `mail_items` */

DROP TABLE IF EXISTS `mail_items`;

CREATE TABLE `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT 0,
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `receiver` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mail_items` */

/*Table structure for table `pet_aura` */

DROP TABLE IF EXISTS `pet_aura`;

CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `recalculateMask` int(10) unsigned NOT NULL DEFAULT 0,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `maxDuration` int(11) NOT NULL DEFAULT 0,
  `remainTime` int(11) NOT NULL DEFAULT 0,
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pet System';

/*Data for the table `pet_aura` */

/*Table structure for table `pet_aura_effect` */

DROP TABLE IF EXISTS `pet_aura_effect`;

CREATE TABLE `pet_aura_effect` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `effectIndex` tinyint(3) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `baseAmount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`casterGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pet System';

/*Data for the table `pet_aura_effect` */

/*Table structure for table `pet_spell` */

DROP TABLE IF EXISTS `pet_spell`;

CREATE TABLE `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pet System';

/*Data for the table `pet_spell` */

/*Table structure for table `pet_spell_charges` */

DROP TABLE IF EXISTS `pet_spell_charges`;

CREATE TABLE `pet_spell_charges` (
  `guid` int(10) unsigned NOT NULL,
  `categoryId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` bigint(20) NOT NULL DEFAULT 0,
  `rechargeEnd` bigint(20) NOT NULL DEFAULT 0,
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pet_spell_charges` */

/*Table structure for table `pet_spell_cooldown` */

DROP TABLE IF EXISTS `pet_spell_cooldown`;

CREATE TABLE `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `time` bigint(20) NOT NULL DEFAULT 0,
  `categoryId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell category Id',
  `categoryEnd` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pet_spell_cooldown` */

/*Table structure for table `petition` */

DROP TABLE IF EXISTS `petition`;

CREATE TABLE `petition` (
  `ownerguid` bigint(20) unsigned NOT NULL,
  `petitionguid` bigint(20) unsigned DEFAULT 0,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

/*Data for the table `petition` */

/*Table structure for table `petition_sign` */

DROP TABLE IF EXISTS `petition_sign`;

CREATE TABLE `petition_sign` (
  `ownerguid` bigint(20) unsigned NOT NULL,
  `petitionguid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `playerguid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `player_account` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

/*Data for the table `petition_sign` */

/*Table structure for table `pool_quest_save` */

DROP TABLE IF EXISTS `pool_quest_save`;

CREATE TABLE `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT 0,
  `quest_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pool_quest_save` */

insert  into `pool_quest_save`(`pool_id`,`quest_id`) values 
(348,24636),
(349,14101),
(350,13904),
(351,13916),
(352,11377),
(353,11667),
(354,13425),
(356,11362),
(357,11383),
(359,12726),
(360,12762),
(361,12734),
(362,12703),
(363,14152),
(364,14090),
(365,14140),
(366,14092),
(367,14107),
(368,29320),
(368,29361),
(369,26414),
(369,26420),
(369,26442),
(369,26488),
(369,26536),
(5662,13674),
(5663,13763),
(5664,13770),
(5665,13775),
(5666,13778),
(5667,13784),
(5668,13666),
(5669,13616),
(5670,13743),
(5671,13748),
(5672,13759),
(5673,13752),
(5674,13101),
(5675,13112),
(5676,13834),
(5677,12960),
(5678,24582),
(5707,13197),
(5708,13154),
(5709,13200),
(5710,13192),
(40000,25161),
(40001,25105),
(40002,29358),
(40003,26235),
(40004,29334),
(40005,29347),
(40006,29325),
(40007,28059),
(40007,28063),
(40008,27966),
(40008,28046),
(40009,27973),
(40009,27987),
(40010,27944),
(40010,27971),
(40011,28685),
(40011,28721),
(40012,28678),
(40012,28680),
(40013,28695),
(40013,28696),
(40014,28691),
(40014,28693);

/*Table structure for table `pvpstats_battlegrounds` */

DROP TABLE IF EXISTS `pvpstats_battlegrounds`;

CREATE TABLE `pvpstats_battlegrounds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `winner_faction` tinyint(4) NOT NULL,
  `bracket_id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pvpstats_battlegrounds` */

/*Table structure for table `pvpstats_players` */

DROP TABLE IF EXISTS `pvpstats_players`;

CREATE TABLE `pvpstats_players` (
  `battleground_id` bigint(20) unsigned NOT NULL,
  `character_guid` bigint(20) unsigned NOT NULL,
  `winner` bit(1) NOT NULL,
  `score_killing_blows` int(10) unsigned NOT NULL,
  `score_deaths` int(10) unsigned NOT NULL,
  `score_honorable_kills` int(10) unsigned NOT NULL,
  `score_bonus_honor` int(10) unsigned NOT NULL,
  `score_damage_done` int(10) unsigned NOT NULL,
  `score_healing_done` int(10) unsigned NOT NULL,
  `attr_1` int(10) unsigned NOT NULL DEFAULT 0,
  `attr_2` int(10) unsigned NOT NULL DEFAULT 0,
  `attr_3` int(10) unsigned NOT NULL DEFAULT 0,
  `attr_4` int(10) unsigned NOT NULL DEFAULT 0,
  `attr_5` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`battleground_id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pvpstats_players` */

/*Table structure for table `quest_tracker` */

DROP TABLE IF EXISTS `quest_tracker`;

CREATE TABLE `quest_tracker` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `character_guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `quest_accept_time` datetime NOT NULL,
  `quest_complete_time` datetime DEFAULT NULL,
  `quest_abandon_time` datetime DEFAULT NULL,
  `completed_by_gm` tinyint(1) NOT NULL DEFAULT 0,
  `core_hash` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `core_revision` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `quest_tracker` */

/*Table structure for table `reserved_name` */

DROP TABLE IF EXISTS `reserved_name`;

CREATE TABLE `reserved_name` (
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player Reserved Names';

/*Data for the table `reserved_name` */

/*Table structure for table `respawn` */

DROP TABLE IF EXISTS `respawn`;

CREATE TABLE `respawn` (
  `type` smallint(5) unsigned NOT NULL,
  `spawnId` bigint(20) unsigned NOT NULL,
  `respawnTime` bigint(20) NOT NULL,
  `mapId` smallint(5) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`type`,`spawnId`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stored respawn times';

/*Data for the table `respawn` */

/*Table structure for table `updates` */

DROP TABLE IF EXISTS `updates`;

CREATE TABLE `updates` (
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'timestamp when the query was applied.',
  `speed` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all applied updates in this database.';

/*Data for the table `updates` */

/*Table structure for table `updates_include` */

DROP TABLE IF EXISTS `updates_include`;

CREATE TABLE `updates_include` (
  `path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of directories where we want to include sql updates.';

/*Data for the table `updates_include` */

insert  into `updates_include`(`path`,`state`) values 
('$/sql/dragonflight/updates/characters','RELEASED');

/*Table structure for table `warden_action` */

DROP TABLE IF EXISTS `warden_action`;

CREATE TABLE `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `warden_action` */

/*Table structure for table `world_state_value` */

DROP TABLE IF EXISTS `world_state_value`;

CREATE TABLE `world_state_value` (
  `Id` int(11) NOT NULL,
  `Value` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `world_state_value` */

insert  into `world_state_value`(`Id`,`Value`) values 
(17042,10),
(17043,10);

/*Table structure for table `world_variable` */

DROP TABLE IF EXISTS `world_variable`;

CREATE TABLE `world_variable` (
  `ID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `world_variable` */

insert  into `world_variable`(`ID`,`Value`) values 
('NextBGRandomDailyResetTime',1671598800),
('NextCurrencyResetTime',1671598800),
('NextDailyQuestResetTime',1671674400),
('NextGuildDailyResetTime',1671598800),
('NextGuildWeeklyResetTime',1),
('NextMonthlyQuestResetTime',1672538400),
('NextOldCalendarEventDeletionTime',1671598800),
('NextWeeklyQuestResetTime',1672192800),
('PersistentCharacterCleanFlags',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
