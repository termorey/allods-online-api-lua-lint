---@meta

---@class mount
mount = {}

--[[ ENUMS --]]

---@alias ENUM_MobWorld_OvertipCustomView_NEVER unknown -- овертип всегда скрыт
---@alias ENUM_MobWorld_OvertipCustomView_DEFAULT unknown -- овертип отображается по стандартным уловиям
---@alias ENUM_MobWorld_OvertipCustomView_IMPORTANT unknown -- овертип отображается как будто это важный юнит(у которого есть куесы или квесты для игрока)
---@alias ENUM_MobWorld_OvertipCustomView_TARGET unknown -- овертип отображается как будто игрок взял в цель этого юнита
---@alias ENUM_MobWorld_OvertipCustomView ENUM_MobWorld_OvertipCustomView_NEVER | ENUM_MobWorld_OvertipCustomView_DEFAULT | ENUM_MobWorld_OvertipCustomView_IMPORTANT | ENUM_MobWorld_OvertipCustomView_TARGET

---@alias LoginType_DEFAULT 0
---@alias LoginType_LAUNCHER 1
---@alias LoginType_SOUZ 2
---@alias LoginType_MYCOM 3
---@alias LoginType_STEAM 4
---@alias LoginType_SERVERBOT 5
---@alias LoginType_SPYAVATAR 6
---@alias LoginType LoginType_DEFAULT | LoginType_LAUNCHER | LoginType_SOUZ | LoginType_MYCOM | LoginType_STEAM | LoginType_SERVERBOT | LoginType_SPYAVATAR

---@alias UNIT_QUALITY_COMMON number
---@alias UNIT_QUALITY_ELITE number
---@alias UNIT_QUALITY_FLAVOR_ELITE number
---@alias UNIT_QUALITY_MINI_BOSS number
---@alias UNIT_QUALITY_BOSS number
---@alias UNIT_QUALITY_RAID_BOSS number
---@alias UNIT_QUALITY_RAID_ELITE number
---@alias UNIT_QUALITY_CRITTER number
---@alias UNIT_QUALITY UNIT_QUALITY_COMMON | UNIT_QUALITY_ELITE | UNIT_QUALITY_FLAVOR_ELITE | UNIT_QUALITY_MINI_BOSS | UNIT_QUALITY_BOSS | UNIT_QUALITY_RAID_BOSS | UNIT_QUALITY_RAID_ELITE | UNIT_QUALITY_CRITTER

---@alias ENUM_ZoneDanger
---| "ENUM_ZoneDanger_Neutral"
---| "ENUM_ZoneDanger_Enemy"
---| "ENUM_ZoneDanger_Friend"

---@alias ZONE_TYPE_ASTRAL number
---@alias ZONE_TYPE_ARENA number
---@alias ZONE_TYPE_CONTESTED number
---@alias ZONE_TYPE_FREE_PVP number
---@alias ZONE_TYPE_GRAVEYARD number
---@alias ZONE_TYPE_GUILD_BATTLEGROUND number
---@alias ZONE_TYPE_HOMELAND number
---@alias ZONE_TYPE_SANCTUARY number
---@alias ZONE_TYPE ZONE_TYPE_ASTRAL | ZONE_TYPE_ARENA | ZONE_TYPE_CONTESTED | ZONE_TYPE_FREE_PVP | ZONE_TYPE_GRAVEYARD | ZONE_TYPE_GUILD_BATTLEGROUND | ZONE_TYPE_HOMELAND | ZONE_TYPE_SANCTUARY

--[[ EVENTS --]]

---@alias EVENT_ACCOUNT_HAS_DESTROYED "EVENT_ACCOUNT_HAS_DESTROYED"
---@alias EVENT_AFK_STATE_CHANGED "EVENT_AFK_STATE_CHANGED"
---@alias EVENT_CROSSHAIR_TARGET_POS_CHANGED "EVENT_CROSSHAIR_TARGET_POS_CHANGED"
---@alias EVENT_HEAL_ABSORB_POOL_APPEARED "EVENT_HEAL_ABSORB_POOL_APPEARED"
---@alias EVENT_HEAL_ABSORB_POOL_CHANGED "EVENT_HEAL_ABSORB_POOL_CHANGED"
---@alias EVENT_ENDURE_BARRIER_DAMAGE "EVENT_ENDURE_BARRIER_DAMAGE"
---@alias EVENT_MOB_RELATED_GOALS_CHANGED "EVENT_MOB_RELATED_GOALS_CHANGED"
---@alias EVENT_MOB_RELATED_QUESTS_CHANGED "EVENT_MOB_RELATED_QUESTS_CHANGED"
---@alias EVENT_OBJECT_BUFF_ADDED "EVENT_OBJECT_BUFF_ADDED"
---@alias EVENT_OBJECT_BUFF_PROGRESS_ADDED "EVENT_OBJECT_BUFF_PROGRESS_ADDED"
---@alias EVENT_OBJECT_BUFF_PROGRESS_REMOVED "EVENT_OBJECT_BUFF_PROGRESS_REMOVED"
---@alias EVENT_OBJECT_BUFF_REMOVED "EVENT_OBJECT_BUFF_REMOVED"
---@alias EVENT_OBJECT_BUFFS_CHANGED "EVENT_OBJECT_BUFFS_CHANGED"
---@alias EVENT_OBJECT_BUFFS_ELEMENT_CHANGED "EVENT_OBJECT_BUFFS_ELEMENT_CHANGED"
---@alias EVENT_PLAYER_GEAR_SCORE_CHANGED "EVENT_PLAYER_GEAR_SCORE_CHANGED"
---@alias EVENT_PLAYER_GREAT_CHANGED "EVENT_PLAYER_GREAT_CHANGED"
---@alias EVENT_PLAYER_TITLE_CHANGED "EVENT_PLAYER_TITLE_CHANGED"
---@alias EVENT_PLAYER_TITLES_CHANGED "EVENT_PLAYER_TITLES_CHANGED"
---@alias EVENT_PURGE_BARRIER_DAMAGE "EVENT_PURGE_BARRIER_DAMAGE"
---@alias EVENT_RELIEF_BARRIER_DAMAGE "EVENT_RELIEF_BARRIER_DAMAGE"
---@alias EVENT_TARGET_POS_CHANGED "EVENT_TARGET_POS_CHANGED"
---@alias EVENT_UNIT_CLASS_CHANGED "EVENT_UNIT_CLASS_CHANGED"
---@alias EVENT_UNIT_DEAD_CHANGED "EVENT_UNIT_DEAD_CHANGED"
---@alias EVENT_UNIT_FAIRY_CHANGED "EVENT_UNIT_FAIRY_CHANGED"
---@alias EVENT_UNIT_FAIRY_RANK_CHANGED "EVENT_UNIT_FAIRY_RANK_CHANGED"
---@alias EVENT_UNIT_FATALITY_CHANGED "EVENT_UNIT_FATALITY_CHANGED"
---@alias EVENT_UNIT_HONOR_VALUE_CHANGED "EVENT_UNIT_HONOR_VALUE_CHANGED"
---@alias EVENT_UNIT_LEVEL_CHANGED "EVENT_UNIT_LEVEL_CHANGED"
---@alias EVENT_UNIT_MESSAGE "EVENT_UNIT_MESSAGE"
---@alias EVENT_UNIT_MOOD_CHANGED "EVENT_UNIT_MOOD_CHANGED"
---@alias EVENT_UNIT_MOUNT_HEALTH_CHANGED "EVENT_UNIT_MOUNT_HEALTH_CHANGED"
---@alias EVENT_UNIT_POS_CHANGED "EVENT_UNIT_POS_CHANGED"
---@alias EVENT_UNIT_PVP_FLAG_CHANGED "EVENT_UNIT_PVP_FLAG_CHANGED"
---@alias EVENT_UNIT_RAGE_CHANGED "EVENT_UNIT_RAGE_CHANGED"
---@alias EVENT_UNIT_RELATION_CHANGED "EVENT_UNIT_RELATION_CHANGED"
---@alias EVENT_UNITS_CHANGED "EVENT_UNITS_CHANGED"
---@alias EVENT_UNIT_TAG_CHANGED "EVENT_UNIT_TAG_CHANGED"
---@alias EVENT_UNIT_TOOK_MONEY "EVENT_UNIT_TOOK_MONEY"
---@alias EVENT_UNIT_VETERAN_RANK_CHANGED "EVENT_UNIT_VETERAN_RANK_CHANGED"
---@alias EVENT_UNIT_WILL_CHANGED "EVENT_UNIT_WILL_CHANGED"
---@alias EVENT_UNIT_ZONE_PVP_TYPE_CHANGED "EVENT_UNIT_ZONE_PVP_TYPE_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_ACCOUNT_HAS_DESTROYED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, isAfk: boolean }), sysEventName: EVENT_AFK_STATE_CHANGED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId }), sysEventName: EVENT_CROSSHAIR_TARGET_POS_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_HEAL_ABSORB_POOL_APPEARED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId, healAbsorb: number }), sysEventName: EVENT_HEAL_ABSORB_POOL_CHANGED)
---@overload fun(eventFunction: fun(data: { damage: integer }), sysEventName: EVENT_ENDURE_BARRIER_DAMAGE)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_MOB_RELATED_GOALS_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_MOB_RELATED_QUESTS_CHANGED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId, buffId: ObjectId, buffName: WString, sysName: string, resourceId: BuffId }), sysEventName: EVENT_OBJECT_BUFF_ADDED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId, buffId: ObjectId, buffName: WString, sysName: string }), sysEventName: EVENT_OBJECT_BUFF_PROGRESS_ADDED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId, buffId: ObjectId, buffName: WString, sysName: string }), sysEventName: EVENT_OBJECT_BUFF_PROGRESS_REMOVED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId, buffId: ObjectId, buffName: WString, sysName: string, resourceId: BuffId }), sysEventName: EVENT_OBJECT_BUFF_REMOVED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId }), sysEventName: EVENT_OBJECT_BUFFS_CHANGED)
---@overload fun(eventFunction: fun(data: table<ObjectId, table<ObjectId, boolean>>), sysEventName: EVENT_OBJECT_BUFFS_ELEMENT_CHANGED)
---@overload fun(eventFunction: fun(data: { playerId: ObjectId }), sysEventName: EVENT_PLAYER_GEAR_SCORE_CHANGED)
---@overload fun(eventFunction: fun(data: { playerId: ObjectId }), sysEventName: EVENT_PLAYER_GREAT_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_PLAYER_TITLE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_PLAYER_TITLES_CHANGED)
---@overload fun(eventFunction: fun(data: { damage: integer }), sysEventName: EVENT_PURGE_BARRIER_DAMAGE)
---@overload fun(eventFunction: fun(data: { damage: integer }), sysEventName: EVENT_RELIEF_BARRIER_DAMAGE)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_TARGET_POS_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_CLASS_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_DEAD_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_FAIRY_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_FAIRY_RANK_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_UNIT_FATALITY_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_HONOR_VALUE_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId, amount: integer }), sysEventName: EVENT_UNIT_LEVEL_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, message: WString, isWhisper: boolean }), sysEventName: EVENT_UNIT_MESSAGE)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_MOOD_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId, health: 0 | integer }), sysEventName: EVENT_UNIT_MOUNT_HEALTH_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_POS_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_PVP_FLAG_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_RAGE_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_RELATION_CHANGED)
---@overload fun(eventFunction: fun(data: { spawned: table<integer, ObjectId>, despawned: table<integer, ObjectId> }), sysEventName: EVENT_UNITS_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_TAG_CHANGED)
---@overload fun(eventFunction: fun(data: { ownerId: ObjectId, mobId: ObjectId | nil, money: integer }), sysEventName: EVENT_UNIT_TOOK_MONEY)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_VETERAN_RANK_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_WILL_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_ZONE_PVP_TYPE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param unitId ObjectId
---@return nil | { health: integer, healthlinit: integer }
function mount.GetUnitMountHealth( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.CanHaveEnemy( unitId ) end

---@param unitId ObjectId
---@return boolean
--- TODO: check dosc return type
function unit.CanSelectTarget( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.CanUse( unitId ) end

---@param unitId ObjectId
---@return nil | ObjectId
function unit.GetActivePet( unitId ) end

---@param id ObjectId
---@return LoginType | nil
function unit.GetAvatarLoginType(id) end

---@param unitId ObjectId
---@return CharacterFormId | nil
function unit.GetCharacterForm( unitId ) end

---@param id ObjectId
---@return nil | { className: string, manaType: MANA_TYPE, name: WString, greatname: WString, raceClassName: WString }
function unit.GetClass(id) end

---@param unitId ObjectId
---@return CharacterClassId | nil
function unit.GetClassId( unitId ) end

---@param unitId ObjectId
---@param slot DRESS_SLOT
---@param slotType ITEM_CONT
---@return ObjectId
--- TODO: what if item not exist
function unit.GetEquipmentItemId( unitId, slot, slotType ) end

---@param unitId ObjectId
---@param slotType ITEM_CONT
---@return table<DRESS_SLOT, ObjectId>
function unit.GetEquipmentItemIds( unitId, slotType ) end

---@param unitId ObjectId
---@param equipmentSlot DRESS_SLOT
---@return { isFullyUnlocked: boolean, qualities: table<integer, ITEM_QUALITY> }
function unit.GetEquipmentItemSlotUnlockedQualities( unitId, equipmentSlot ) end

---@param unitId ObjectId
---@return integer
function unit.GetEquipmentSize( unitId ) end

---@param unitId ObjectId
---@param slot DRESS_SLOT
---@param slotType ITEM_CONT
---@return table
--- TODO: check return type
function unit.GetEquipmentSlotBonus( unitId, slot, slotType ) end

---@param unitId ObjectId
---@return FactionId
function unit.GetFactionId( unitId ) end

---@param unitId ObjectId
---@return nil | { isExist: boolean, name: WString, description: WString, rank: integer, level: integer, experience: integer, levelExperience: integer, nextLEvelExperience: integer, isHungry: boolean, remainingMs: integer | nil, isAlwaysActive: boolean, currentRankRemainingMs: integer | nil, dpsBonus: integer, healBonus: integer, powerBonus: integer }
function unit.GetFairyInfo( unitId ) end

---@param unitId ObjectId
---@return nil | integer
function unit.GetFairyPowerBonus( unitId ) end

---@param unitId ObjectId
---@return ObjectId | nil
function unit.GetFollowerMaster( unitId ) end

---@param unitId ObjectId
---@return nil | table<integer, ObjectId>
function unit.GetFollowers( unitId ) end

---@param unitId ObjectId
---@return number
function unit.GetGearScore( unitId ) end

---@param unitId ObjectId
---@return nil | { name: WString, rank: nil | number, level: number | nil, guildId: integer | nil }
function unit.GetGuildInfo( unitId ) end

---@param unitId ObjectId
---@return nil | { healAbsorbValue: number, healAbsorbLimit: number, healAbsorbFactor: number }
function unit.GetHealAbsorbPoolInfo( unitId ) end

---@param unitId ObjectId
---@return PET_TYPE
function unit.GetLastPetType( unitId ) end

---@param unitId ObjectId
---@return integer
function unit.GetLevel( unitId ) end

---@param unitId ObjectId
---@return { mana: integer | nil, maxMana: integer | nil, percents: integer | nil }
function unit.GetMana( unitId ) end

---@param unitId ObjectId
---@return integer | nil
function unit.GetManaPercentage( unitId ) end

---@param unitId ObjectId # идентификатор юнита
---@return nil | { duration: integer, progress: integer, name: WString, spellId: SpellId | nil, isPrecast: boolean | nil, isChannel: boolean | nil }
function unit.GetMobActionProgress( unitId ) end

---@param unitId ObjectId
---@return ObjectId | nil
function unit.GetMoodEmoteId( unitId ) end

---@param unitId ObjectId
---@return ENUM_MobWorld_OvertipCustomView
function unit.GetOvertipCustomView( unitId ) end

---@param id ObjectId
---@return TextureId | nil
function unit.GetOvertipTexture(id) end

---@param unitId ObjectId
---@return WString | nil
function unit.GetPetName( unitId ) end

---@param unitId ObjectId
---@return ObjectId | nil
function unit.GetPetOwner( unitId ) end

---@param id ObjectId
---@return WString | nil
function unit.GetPlayerShardName(id) end

---@param unitId ObjectId
---@return nil | { name: WString, id: ObjectId }
function unit.GetPlayerTitle( unitId ) end

---@param unitId ObjectId
---@return nil | table<integer, { name: WString, id: ObjectId }>
function unit.GetPlayerTitles( unitId ) end

---@param name WString
---@param shardName WString
---@param uniqueId? WString
---@return ValuedObject
--- TODO: is uniqueId param type correct?
function unit.GetPlayerValuedObject( name, shardName, uniqueId ) end

---@param unitId ObjectId
---@return ObjectId | nil
function unit.GetPrimaryTarget( unitId ) end

---@param id ObjectId
---@return { isOn: boolean, serverFlag: boolean | nil, playerFlag: boolean | nil, timeLeft: nil | { h: integer, m: integer, s: integer, overallMs: number } }
--- TODO: incorrect docs timeLeft type
function unit.GetPvPFlagInfo(id) end

---@param unitId ObjectId
---@return UNIT_QUALITY
function unit.GetQuality( unitId ) end

---@param id ObjectId
---@return nil | { creatureRace: ENUM_CreatureRace, sysCreatureRace: ENUM_CreatureRace, characterRace: WString | nil, sysCharacterRaceName: string | nil }
function unit.GetRace(id) end

---@param unitId ObjectId
---@return integer
function unit.GetRage( unitId ) end

---@param unitId ObjectId
---@return nil | table<integer, ObjectId>
function unit.GetRelatedGoals( unitId ) end

---@param unitId ObjectId
---@return nil | table<integer, ObjectId>
function unit.GetRelatedQuestObjectives( unitId ) end

---@param mobId ObjectId
---@return REPUTATION_LEVEL
function unit.GetReputationLevel( mobId ) end

---@param unitId ObjectId
---@return integer
function unit.GetRuneWoundsComplexity( unitId ) end

---@param id ObjectId
---@return nil | { sex: SEX, name: WString, raceSexName: WString }
function unit.GetSex(id) end

---@param unitId ObjectId
---@return ObjectId | nil
function unit.GetTarget( unitId ) end

---@param unitId ObjectId
---@return WString
function unit.GetTitle( unitId ) end

---@param id ObjectId
---@return nil | { className: string, manaType: MANA_TYPE, name: WString }
function unit.GetTrainerClass(id) end

---@param unitId ObjectId
---@return ObjectId
function unit.GetTransport( unitId ) end

---@param unitId ObjectId
---@return nil | { name2: WString, name3: WString }
function unit.GetTrioInfo( unitId ) end

---@param unitId ObjectId
---@return ValuedObject
function unit.GetUnitValuedObject( unitId ) end

---@param unitId ObjectId
---@return nil | { name: WString, description: WString, image?: TextureId | nil }
function unit.GetVeteranRank( unitId ) end

---@param unitId ObjectId
---@return integer
function unit.GetWill( unitId ) end

---@param id ObjectId
---@return ENUM_ZoneDanger
function unit.GetZonePvPDanger( id ) end

---@param id ObjectId
---@return ZONE_TYPE
--- TODO: check return enum
function unit.GetZonePvPType(id) end

---@param unitId ObjectId
---@return ObjectId | nil
function unit.GetZonesMapId( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.HasBossPlate( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.HasEquipment( unitId ) end

---@param id ObjectId
---@return boolean
function unit.IsAfk(id) end

---@param unitId ObjectId
---@return boolean
function unit.IsAggressive( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.IsFatalityDeath( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.IsGreat( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.IsPet( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.IsPlayer( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.IsRitualEnabled( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.IsTagged( unitId ) end

---@param unitId ObjectId
---@return boolean
function unit.IsTaggedByMainPlayer( unitId ) end

---@param id ObjectId
---@return boolean
function unit.IsTrainer( id ) end

---@param unitId ObjectId
---@return boolean
function unit.IsUsable( unitId ) end

---@param unitId ObjectId
---@param visible boolean
---@param decalId DecalObjectId
---@param color Color | nil
---@param thickness number | nil
function unit.Select( unitId, visible, decalId, color, thickness ) end

---@param unitId ObjectId
---@param titleId ObjectId | nil
---@return boolean
function unit.SetPlayerTitle( unitId, titleId ) end