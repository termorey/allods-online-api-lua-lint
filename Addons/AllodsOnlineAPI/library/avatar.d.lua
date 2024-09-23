---@meta

---@class CharacterFormId
CharacterFormId = {}
---GetInfo
---@return { name: WString, sysName: string, image: TextureId }
function CharacterFormId:GetInfo() end

---@class avatar
avatar = {}

---@class guild
guild = {}

--[[ ENUMS --]]

---@alias ENUM_AccessionResult
---| "ENUM_AccessionResult_NoChat"
---| "ENUM_AccessionResult_Success"
---| "ENUM_AccessionResult_WrongFaction"
---| "ENUM_AccessionResult_AlreadyIn"

---@alias ENUM_DisassemblingResult_Client
---| "ENUM_DisassemblingFailCause_NoFail"
---| "ENUM_DisassemblingFailCause_ItemType"
---| "ENUM_DisassemblingFailCause_ItemLevel"
---| "ENUM_DisassemblingFailCause_System"
---| "ENUM_DisassemblingFailCause_NotDisassembler"
---| "ENUM_DisassemblingFailCause_NoSkill"
---@alias ENUM_DisassemblingResult_Server
---| "ENUM_DisassemblingOperationResult_SlotNumberOutOfBounds"
---| "ENUM_DisassemblingOperationResult_SlotIsEmpty"
---| "ENUM_DisassemblingOperationResult_ItemIsNotDisassembler"
---| "ENUM_DisassemblingOperationResult_CannotDisassembleThis"
---| "ENUM_DisassemblingOperationResult_AvatarBusy"
---| "ENUM_DisassemblingOperationResult_Success"
---@alias ENUM_DisassemblingResult ENUM_DisassemblingResult_Client | ENUM_DisassemblingResult_Server

-- ITEM_BINDING

-- ITEMMALL_ITEM

-- ITEM_QUALITY

-- ENUM_ItemSource

-- ENUM_SubElement

---@alias CLIENT_DETECTOR_QUEST_NPC unknown # NPC, принимающий или выдающий квесты
---@alias CLIENT_DETECTOR_TRAINER_NPC unknown # тренер
---@alias CLIENT_DETECTOR_VENDOR_NPC unknown # торговец (кроме крафтовых)
---@alias CLIENT_DETECTOR_SERVICE_NPC unknown # другие NPC
---@alias CLIENT_DETECTOR_PLAYER unknown # одногруппники или сорейдовики
---@alias CLIENT_DETECTOR_SPOUSE unknown # супруг
---@alias CLIENT_DETECTOR_BATTLEGROUND_CHECKPOINT unknown # контрольная точка баттлграунда
---@alias CLIENT_DETECTOR_PROFESSION_NPC unknown # крафтовый наставник (торговец)
---@alias CLIENT_DETECTOR CLIENT_DETECTOR_QUEST_NPC | CLIENT_DETECTOR_TRAINER_NPC | CLIENT_DETECTOR_VENDOR_NPC | CLIENT_DETECTOR_SERVICE_NPC | CLIENT_DETECTOR_PLAYER | CLIENT_DETECTOR_SPOUSE | CLIENT_DETECTOR_BATTLEGROUND_CHECKPOINT | CLIENT_DETECTOR_PROFESSION_NPC

---@alias ACTION_TYPE_SPELL unknown
---@alias ACTION_TYPE_ITEM unknown
---@alias ACTION_TYPE_MOUNT unknown
---@alias ACTION_TYPE_EMOTE unknown
---@alias ACTION_TYPE_MOUNT_METAMORPH unknown
---@alias ACTION_TYPE ACTION_TYPE_SPELL | ACTION_TYPE_ITEM | ACTION_TYPE_MOUNT | ACTION_TYPE_EMOTE | ACTION_TYPE_MOUNT_METAMORPH # типы действий

---@alias ENUM_CONTEXT_ACTION_TYPE
---| "ENUM_CONTEXT_ACTION_TYPE_UNKNOWN" # тип не известен
---| "ENUM_CONTEXT_ACTION_TYPE_SPELL" # запустить заклинание
---| "ENUM_CONTEXT_ACTION_TYPE_EXPLOIT" # использовать устройство
---| "ENUM_CONTEXT_ACTION_TYPE_LOOT" # собрать лут
---| "ENUM_CONTEXT_ACTION_TYPE_NPC_TALK" # поговорить с NPC
---| "ENUM_CONTEXT_ACTION_TYPE_ITEM" # использовать предмет из сумки

---@alias VENDOR_NO_VENDOR integer # не торговец
---@alias VENDOR_GENERAL integer # обычный торговец с предметами неясного назначения
---@alias VENDOR_WEAPON_ARMOR integer # торговец оружием и броней
---@alias VENDOR_CRAFTING_COMPONENTS integer # торговец компонентами для крафтинга
---@alias VENDOR_USABLE_ITEMS integer # торговец используемыми предметами (еда, бутылки, ступки и т.п.)
---@alias VENDOR_GUILD integer # у торговца есть хотя бы один гильдейский предмет
---@alias VENDOR_MYRRH integer # у торговца есть мирра
---@alias VENDOR_RUNE integer # у торговца есть руны
---@alias VENDOR_BADGE integer # торговец продает товары за астральные баджики
---@alias VENDOR VENDOR_NO_VENDOR | VENDOR_GENERAL | VENDOR_WEAPON_ARMOR | VENDOR_CRAFTING_COMPONENTS | VENDOR_USABLE_ITEMS | VENDOR_GUILD | VENDOR_MYRRH | VENDOR_RUNE | VENDOR_BADGE

---@alias INTERACTION_NONE integer
---@alias INTERACTION_BINDING_STONE integer
---@alias INTERACTION_ZONE_TELEPORTER integer
---@alias INTERACTION_HERALD integer
---@alias INTERACTION_CLASS_RELATED integer
---@alias INTERACTION_SECRET_KEEPER integer
---@alias INTERACTION_GUILD_AUCTIONER integer
---@alias INTERACTION_META_BLACKSMITH integer
---@alias INTERACTION_BADGE integer
---@alias INTERACTION_SHIP_MASTER integer
---@alias INTERACTION_SOUL_MASTER integer
---@alias INTERACTION INTERACTION_NONE | INTERACTION_BINDING_STONE | INTERACTION_ZONE_TELEPORTER | INTERACTION_HERALD | INTERACTION_CLASS_RELATED | INTERACTION_SECRET_KEEPER | INTERACTION_GUILD_AUCTIONER | INTERACTION_META_BLACKSMITH | INTERACTION_BADGE | INTERACTION_SHIP_MASTER | INTERACTION_SOUL_MASTER

---@alias QUEST_IN_PROGRESS number
---@alias QUEST_READY_TO_RETURN number
---@alias QUEST_COMPLETED number
---@alias QUEST_FAILED number
---@alias QUEST QUEST_IN_PROGRESS | QUEST_READY_TO_RETURN | QUEST_COMPLETED | QUEST_FAILED # состояние квеста

---@alias ENUM_AvatarKickCause
---| "ENUM_AvatarKickCause_Void"
---| "ENUM_AvatarKickCause_ExtraAvatar"
---| "ENUM_AvatarKickCause_InvalidGuild"
---| "ENUM_AvatarKickCause_NoGuild"
---| "ENUM_AvatarKickCause_NoTabard"
---| "ENUM_AvatarKickCause_NoGroup"
---| "ENUM_AvatarKickCause_NoRaid"
---| "ENUM_AvatarKickCause_LevelControl"
---| "ENUM_AvatarKickCause_EventFinished"
---| "ENUM_AvatarKickCause_NoShip"
---| "ENUM_AvatarKickCause_InvalidMap"
---| "ENUM_AvatarKickCause_RaidVarsConflict"

-- PET_AGGRO
---@alias PET_AGGRO number # тип поведения

-- PET_MOVE
---@alias PET_MOVE number

-- PSIONIC_CONTACT
---@alias PSIONIC_CONTACT number # тип контакта

---@alias QUEST_COUNT_KILL number
---@alias QUEST_COUNT_ITEM number
---@alias QUEST_COUNT_SPECIAL number
---@alias QUEST_COUNT_KILL_AVATAR number
---@alias QUEST_COUNT_MONEY number
---@alias QUEST_COUNT_SHIP_UPGRADE_MONEY number
---@alias QUEST_COUNT_UPGRADABLE_SHIP number
---@alias QUEST_COUNT_REPUTATION number
---@alias QUEST_COUNT_ALT_CURRENCY number
---@alias QUEST_COUNT QUEST_COUNT_KILL | QUEST_COUNT_ITEM | QUEST_COUNT_SPECIAL | QUEST_COUNT_KILL_AVATAR | QUEST_COUNT_MONEY | QUEST_COUNT_SHIP_UPGRADE_MONEY | QUEST_COUNT_UPGRADABLE_SHIP | QUEST_COUNT_REPUTATION | QUEST_COUNT_ALT_CURRENCY # тип цели квеста

-- ENUM_Element
---@alias ENUM_Element string

---@alias RESISTANCE_ELEMENTAL number
---@alias RESISTANCE_DIVINE number
---@alias RESISTANCE_NATURE number
---@alias RESISTANCE_PHYSICAL number
---@alias RESISTANCE RESISTANCE_ELEMENTAL | RESISTANCE_DIVINE | RESISTANCE_NATURE | RESISTANCE_PHYSICAL # сопротивляемости персонажа

-- ENUM_TalentType
---@alias ENUM_TalentType_GUILD number
---@alias ENUM_TalentType_BOSS number
---@alias ENUM_TalentType_GUILDHALL number
---@alias ENUM_TalentType ENUM_TalentType_GUILD | ENUM_TalentType_BOSS | ENUM_TalentType_GUILDHALL # тип таланата

--[[ EVENTS --]]

---@alias EVENT_ABILITIES_ELEMENT_ADDED "EVENT_ABILITIES_ELEMENT_ADDED"
---@alias EVENT_ACTION_PANEL_CHANGED "EVENT_ACTION_PANEL_CHANGED"
---@alias EVENT_ACTION_PANEL_ELEMENT_CHANGED "EVENT_ACTION_PANEL_ELEMENT_CHANGED"
---@alias EVENT_ADDRESSEE_NOT_FOUND "EVENT_ADDRESSEE_NOT_FOUND"
---@alias EVENT_AVATAR_ALIVE_CHANGED "EVENT_AVATAR_ALIVE_CHANGED"
---@alias EVENT_AVATAR_BARRIERS_CHANGED "EVENT_AVATAR_BARRIERS_CHANGED"
---@alias EVENT_AVATAR_BINDED_TRANSPORT_CHANGED "EVENT_AVATAR_BINDED_TRANSPORT_CHANGED"
---@alias EVENT_AVATAR_BUFF_REMOVING_FAILED "EVENT_AVATAR_BUFF_REMOVING_FAILED"
---@alias EVENT_AVATAR_CLASS_FORM_CHANGED "EVENT_AVATAR_CLASS_FORM_CHANGED"
---@alias EVENT_AVATAR_CLIENT_ZONE_CHANGED "EVENT_AVATAR_CLIENT_ZONE_CHANGED"
---@alias EVENT_AVATAR_CREATED "EVENT_AVATAR_CREATED"
---@alias EVENT_AVATAR_DESTINY_POINTS_CHANGED "EVENT_AVATAR_DESTINY_POINTS_CHANGED"
---@alias EVENT_AVATAR_DIR_CHANGED "EVENT_AVATAR_DIR_CHANGED"
---@alias EVENT_AVATAR_EXPERIENCE_CHANGED "EVENT_AVATAR_EXPERIENCE_CHANGED"
---@alias EVENT_AVATAR_LOGOUT_CANCELLED "EVENT_AVATAR_LOGOUT_CANCELLED"
---@alias EVENT_AVATAR_MAP_CHANGED "EVENT_AVATAR_MAP_CHANGED"
---@alias EVENT_AVATAR_MAP_INFO_AVAILABLE "EVENT_AVATAR_MAP_INFO_AVAILABLE"
---@alias EVENT_AVATAR_MAP_MODIFIERS_CHANGED "EVENT_AVATAR_MAP_MODIFIERS_CHANGED"
---@alias EVENT_AVATAR_MONEY_CHANGED "EVENT_AVATAR_MONEY_CHANGED"
---@alias EVENT_AVATAR_POS_CHANGED "EVENT_AVATAR_POS_CHANGED"
---@alias EVENT_AVATAR_PSIONIC_CHANNEL_CHANGED "EVENT_AVATAR_PSIONIC_CHANNEL_CHANGED"
---@alias EVENT_AVATAR_PSIONIC_CONTACT_ADDED "EVENT_AVATAR_PSIONIC_CONTACT_ADDED"
---@alias EVENT_AVATAR_PSIONIC_CONTACT_CHANGED "EVENT_AVATAR_PSIONIC_CONTACT_CHANGED"
---@alias EVENT_AVATAR_PSIONIC_CONTACT_REMOVED "EVENT_AVATAR_PSIONIC_CONTACT_REMOVED"
---@alias EVENT_AVATAR_PSIONIC_DANGER_SENSE_LOCATED "EVENT_AVATAR_PSIONIC_DANGER_SENSE_LOCATED"
---@alias EVENT_AVATAR_PSIONIC_DANGER_SENSE_TARGET "EVENT_AVATAR_PSIONIC_DANGER_SENSE_TARGET"
---@alias EVENT_AVATAR_PSIONIC_READ_THOUGHT "EVENT_AVATAR_PSIONIC_READ_THOUGHT"
---@alias EVENT_AVATAR_PSIONIC_UNREADABLE_THOUGHT "EVENT_AVATAR_PSIONIC_UNREADABLE_THOUGHT"
---@alias EVENT_AVATAR_STALKER_CARTRIDGE_BELT_CHANGED "EVENT_AVATAR_STALKER_CARTRIDGE_BELT_CHANGED"
---@alias EVENT_AVATAR_STALKER_DAMAGE_POOL_ADDED "EVENT_AVATAR_STALKER_DAMAGE_POOL_ADDED"
---@alias EVENT_AVATAR_STALKER_DAMAGE_POOL_CHANGED "EVENT_AVATAR_STALKER_DAMAGE_POOL_CHANGED"
---@alias EVENT_AVATAR_STALKER_DAMAGE_POOL_REMOVED "EVENT_AVATAR_STALKER_DAMAGE_POOL_REMOVED"
---@alias EVENT_AVATAR_STATS_CHANGED "EVENT_AVATAR_STATS_CHANGED"
---@alias EVENT_AVATAR_TARGET_CHANGED "EVENT_AVATAR_TARGET_CHANGED"
---@alias EVENT_AVATAR_TARGET_RECOMMENDED "EVENT_AVATAR_TARGET_RECOMMENDED"
---@alias EVENT_AVATAR_TARGET_TARGET_CHANGED "EVENT_AVATAR_TARGET_TARGET_CHANGED"
---@alias EVENT_AVATAR_TRANSPORT_CHANGED "EVENT_AVATAR_TRANSPORT_CHANGED"
---@alias EVENT_AVATAR_UNLOCK_ADDED "EVENT_AVATAR_UNLOCK_ADDED"
---@alias EVENT_AVATAR_UNLOCK_CHANGED "EVENT_AVATAR_UNLOCK_CHANGED"
---@alias EVENT_AVATAR_UNLOCK_REMOVED "EVENT_AVATAR_UNLOCK_REMOVED"
---@alias EVENT_AVATAR_UNLOCKS_CHANGED "EVENT_AVATAR_UNLOCKS_CHANGED"
---@alias EVENT_AVATAR_USED_OBJECT_CHANGED "EVENT_AVATAR_USED_OBJECT_CHANGED"
---@alias EVENT_AVATAR_WALK_MODE_CHANGED "EVENT_AVATAR_WALK_MODE_CHANGED"
---@alias EVENT_AVATAR_WARRIOR_COMBAT_ADVANTAGE_CHANGED "EVENT_AVATAR_WARRIOR_COMBAT_ADVANTAGE_CHANGED"
---@alias EVENT_AVATAR_WARRIOR_DAMAGE_POOL_ADDED "EVENT_AVATAR_WARRIOR_DAMAGE_POOL_ADDED"
---@alias EVENT_AVATAR_WARRIOR_DAMAGE_POOL_CHANGED "EVENT_AVATAR_WARRIOR_DAMAGE_POOL_CHANGED"
---@alias EVENT_AVATAR_WARRIOR_DAMAGE_POOL_REMOVED "EVENT_AVATAR_WARRIOR_DAMAGE_POOL_REMOVED"
---@alias EVENT_AVATAR_WILL_BE_REMOVED "EVENT_AVATAR_WILL_BE_REMOVED"
---@alias EVENT_AVATAR_ZONE_CHANGED "EVENT_AVATAR_ZONE_CHANGED"
---@alias EVENT_CALL_SPARK_COST_CHANGED "EVENT_CALL_SPARK_COST_CHANGED"
---@alias EVENT_CALL_SPARK_FAILED "EVENT_CALL_SPARK_FAILED"
---@alias EVENT_CANNON_TARGET_CHANGE "EVENT_CANNON_TARGET_CHANGE"
---@alias EVENT_CANT_LOOT_DISAPPEARED_LOOT_BAG "EVENT_CANT_LOOT_DISAPPEARED_LOOT_BAG"
---@alias EVENT_CHARACTER_CLASS_CHANGER_CHANGED "EVENT_CHARACTER_CLASS_CHANGER_CHANGED"
---@alias EVENT_CONTAINER_ITEM_ADDED "EVENT_CONTAINER_ITEM_ADDED"
---@alias EVENT_DEFAULT_SPELL_CHANGED "EVENT_DEFAULT_SPELL_CHANGED"
---@alias EVENT_DEFAULT_SPELL_EFFECT "EVENT_DEFAULT_SPELL_EFFECT"
---@alias EVENT_DISASSEMBLING_RESULT "EVENT_DISASSEMBLING_RESULT"
---@alias EVENT_DRUID_PET_COMMAND_POINTS_CHANGED "EVENT_DRUID_PET_COMMAND_POINTS_CHANGED"
---@alias EVENT_EMOTES_CHANGED "EVENT_EMOTES_CHANGED"
---@alias EVENT_FAIRY_BONUS_CHANGED "EVENT_FAIRY_BONUS_CHANGED"
---@alias EVENT_FOLLOW_MODE_CHANGED "EVENT_FOLLOW_MODE_CHANGED"
---@alias EVENT_FORGE_CRAFT_DIALOG "EVENT_FORGE_CRAFT_DIALOG"
---@alias EVENT_GAME_ITEM_CHANGED "EVENT_GAME_ITEM_CHANGED"
---@alias EVENT_GAME_ITEM_CURSED_CHANGED "EVENT_GAME_ITEM_CURSED_CHANGED"
---@alias EVENT_GENERAL_ERROR "EVENT_GENERAL_ERROR"
---@alias EVENT_GUILD_AVATAR_HISTORY "EVENT_GUILD_AVATAR_HISTORY"
---@alias EVENT_GUILD_TALENTS_CHANGED "EVENT_GUILD_TALENTS_CHANGED"
---@alias EVENT_INSPECT_FINISHED "EVENT_INSPECT_FINISHED"
---@alias EVENT_INSPECT_MOUNT_CHANGED "EVENT_INSPECT_MOUNT_CHANGED"
---@alias EVENT_INSPECT_SKILL_CHANGED "EVENT_INSPECT_SKILL_CHANGED"
---@alias EVENT_INSPECT_STARTED "EVENT_INSPECT_STARTED"
---@alias EVENT_INVENTORY_CHANGED "EVENT_INVENTORY_CHANGED"
---@alias EVENT_INVENTORY_OVERFLOW_CHANGED "EVENT_INVENTORY_OVERFLOW_CHANGED"
---@alias EVENT_INVENTORY_OVERFLOW_SLOT_ADDED "EVENT_INVENTORY_OVERFLOW_SLOT_ADDED"
---@alias EVENT_INVENTORY_OVERFLOW_SLOT_REMOVED "EVENT_INVENTORY_OVERFLOW_SLOT_REMOVED"
---@alias EVENT_INVENTORY_SIZE_CHANGED "EVENT_INVENTORY_SIZE_CHANGED"
---@alias EVENT_INVENTORY_SLOT_CHANGED "EVENT_INVENTORY_SLOT_CHANGED"
---@alias EVENT_ITEM_DISABLED "EVENT_ITEM_DISABLED"
---@alias EVENT_ITEM_MOVED "EVENT_ITEM_MOVED"
---@alias EVENT_LOOT_BAG_APPEARED "EVENT_LOOT_BAG_APPEARED"
---@alias EVENT_LOOT_BAG_CHANGED "EVENT_LOOT_BAG_CHANGED"
---@alias EVENT_LOOT_BAG_DISAPPEARED "EVENT_LOOT_BAG_DISAPPEARED"
---@alias EVENT_LOOT_BAG_ITEM_DISAPPEARED "EVENT_LOOT_BAG_ITEM_DISAPPEARED"
---@alias EVENT_LOOT_BAG_MONEY_DISAPPEARED "EVENT_LOOT_BAG_MONEY_DISAPPEARED"
---@alias EVENT_LOOT_BAG_OPEN_STATE_CHANGED "EVENT_LOOT_BAG_OPEN_STATE_CHANGED"
---@alias EVENT_LOOT_BAG_SELECTED "EVENT_LOOT_BAG_SELECTED"
---@alias EVENT_LOOT_CHEST_CAPTURED "EVENT_LOOT_CHEST_CAPTURED"
---@alias EVENT_LOOT_CHEST_DROPPED "EVENT_LOOT_CHEST_DROPPED"
---@alias EVENT_LOOT_CHEST_RETURNED "EVENT_LOOT_CHEST_RETURNED"
---@alias EVENT_LOOT_CHEST_TAKEN "EVENT_LOOT_CHEST_TAKEN"
---@alias EVENT_MAP_CHANNELS_INFO_CHANGED "EVENT_MAP_CHANNELS_INFO_CHANGED"
---@alias EVENT_MAP_INSTANCE_FULL "EVENT_MAP_INSTANCE_FULL"
---@alias EVENT_MAP_INSTANCE_KICK_TIMER_FINISHED "EVENT_MAP_INSTANCE_KICK_TIMER_FINISHED"
---@alias EVENT_MAP_INSTANCE_KICK_TIMER_STARTED "EVENT_MAP_INSTANCE_KICK_TIMER_STARTED"
---@alias EVENT_MOVE_BY_CLICK_CHANGED "EVENT_MOVE_BY_CLICK_CHANGED"
---@alias EVENT_MUTATION_ZONE_MAP_MODIFIERS_CHANGED "EVENT_MUTATION_ZONE_MAP_MODIFIERS_CHANGED"
---@alias EVENT_MUTATION_ZONE_POPULATION_CHANGED "EVENT_MUTATION_ZONE_POPULATION_CHANGED"
---@alias EVENT_NECROMANCER_BLOOD_POOL_CHANGED "EVENT_NECROMANCER_BLOOD_POOL_CHANGED"
---@alias EVENT_PASSANGER_STATE_CHANGED "EVENT_PASSANGER_STATE_CHANGED"
---@alias EVENT_READY_FOR_FINALLY_RESPAWN "EVENT_READY_FOR_FINALLY_RESPAWN"
---@alias EVENT_RESPAWN_FROM_GRAVEYARD "EVENT_RESPAWN_FROM_GRAVEYARD"
---@alias EVENT_RESPAWN_STARTED "EVENT_RESPAWN_STARTED"
---@alias EVENT_RESURRECT_REJECTED "EVENT_RESURRECT_REJECTED"
---@alias EVENT_RESURRECT_REQUESTED "EVENT_RESURRECT_REQUESTED"
---@alias EVENT_SHOW_ITEMS_INFO "EVENT_SHOW_ITEMS_INFO"
---@alias EVENT_TALENTS_CHANGED "EVENT_TALENTS_CHANGED"
---@alias EVENT_TALK_STARTED "EVENT_TALK_STARTED"
---@alias EVENT_TALK_STOPPED "EVENT_TALK_STOPPED"
---@alias EVENT_TARGET_SALES_ADDED "EVENT_TARGET_SALES_ADDED"
---@alias EVENT_TARGET_SALES_CHANGED "EVENT_TARGET_SALES_CHANGED"
---@alias EVENT_TELEPORT_OFFER_REQUEST "EVENT_TELEPORT_OFFER_REQUEST"
---@alias EVENT_TRAINER_LEARN_ERROR "EVENT_TRAINER_LEARN_ERROR"
---@alias EVENT_TREASURY_FULL "EVENT_TREASURY_FULL"
---@alias EVENT_UNEQUIP_FAILED "EVENT_UNEQUIP_FAILED"
---@alias EVENT_VARIABLE_ADDED "EVENT_VARIABLE_ADDED"
---@alias EVENT_VARIABLE_REMOVED "EVENT_VARIABLE_REMOVED"
---@alias EVENT_VARIABLE_VALUE_CHANGED "EVENT_VARIABLE_VALUE_CHANGED"
---@alias EVENT_VENDOR_BUY_NOT_ENOUGH_PLACE "EVENT_VENDOR_BUY_NOT_ENOUGH_PLACE"
---@alias EVENT_VENDOR_BUY_REPUTATION_IS_TOO_SMALL "EVENT_VENDOR_BUY_REPUTATION_IS_TOO_SMALL"
---@alias EVENT_VENDOR_BUY_REQUIRED_ACHIEVEMENT "EVENT_VENDOR_BUY_REQUIRED_ACHIEVEMENT"
---@alias EVENT_VENDOR_ITEM_ALREADY_SOLD "EVENT_VENDOR_ITEM_ALREADY_SOLD"
---@alias EVENT_VENDOR_ITEM_NOT_FOR_SALE "EVENT_VENDOR_ITEM_NOT_FOR_SALE"
---@alias EVENT_VENDOR_LIST_UPDATED "EVENT_VENDOR_LIST_UPDATED"
---@alias EVENT_VICTIM_TRACKER_CHANGED "EVENT_VICTIM_TRACKER_CHANGED"

---@overload fun(eventFunction: fun(data: { id: AbilityId, silent: boolean }), sysEventName: EVENT_ABILITIES_ELEMENT_ADDED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ACTION_PANEL_CHANGED)
---@overload fun(eventFunction: fun(data: { index: integer }), sysEventName: EVENT_ACTION_PANEL_ELEMENT_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString, sysRequestType: ENUM_RequestAddressByNameType, sysCause: ENUM_RequestAddressByNameFailCause }), sysEventName: EVENT_ADDRESSEE_NOT_FOUND)
---@overload fun(eventFunction: fun(data: { alive: boolean }), sysEventName: EVENT_AVATAR_ALIVE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_BARRIERS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_BINDED_TRANSPORT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_BUFF_REMOVING_FAILED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_CLASS_FORM_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_CLIENT_ZONE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_AVATAR_CREATED)
---@overload fun(eventFunction: fun(data: { total: integer, bonus: integer }), sysEventName: EVENT_AVATAR_DESTINY_POINTS_CHANGED)
---@overload fun(eventFunction: fun(data: { dir: number }), sysEventName: EVENT_AVATAR_DIR_CHANGED)
---@overload fun(eventFunction: fun(data: { currentExp: integer, currentLevelExp: integer, nextLevelExp: integer, extraExp: integer }), sysEventName: EVENT_AVATAR_EXPERIENCE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_LOGOUT_CANCELLED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_MAP_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_MAP_INFO_AVAILABLE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_MAP_MODIFIERS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_MONEY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_POS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_PSIONIC_CHANNEL_CHANGED)
---@overload fun(eventFunction: fun(data: { type: PSIONIC_CONTACT }), sysEventName: EVENT_AVATAR_PSIONIC_CONTACT_ADDED)
---@overload fun(eventFunction: fun(data: { type: PSIONIC_CONTACT }), sysEventName: EVENT_AVATAR_PSIONIC_CONTACT_CHANGED)
---@overload fun(eventFunction: fun(data: { type: PSIONIC_CONTACT }), sysEventName: EVENT_AVATAR_PSIONIC_CONTACT_REMOVED)
---@overload fun(eventFunction: fun(data: { octant: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7, hidden: boolean }), sysEventName: EVENT_AVATAR_PSIONIC_DANGER_SENSE_LOCATED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_AVATAR_PSIONIC_DANGER_SENSE_TARGET)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId, though: WString }), sysEventName: EVENT_AVATAR_PSIONIC_READ_THOUGHT)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId, factionName: WString }), sysEventName: EVENT_AVATAR_PSIONIC_UNREADABLE_THOUGHT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_STALKER_CARTRIDGE_BELT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_STALKER_DAMAGE_POOL_ADDED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_STALKER_DAMAGE_POOL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_STALKER_DAMAGE_POOL_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_STATS_CHANGED)
---@overload fun(eventFunction: fun(data: { isTargetDead: boolean | nil }), sysEventName: EVENT_AVATAR_TARGET_CHANGED)
---@overload fun(eventFunction: fun(data: { targetId: ObjectId }), sysEventName: EVENT_AVATAR_TARGET_RECOMMENDED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_TARGET_TARGET_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_TRANSPORT_CHANGED)
---@overload fun(eventFunction: fun(data: { unlockId: ObjectId, unlockName: WString, unlockEndTime: number | nil }), sysEventName: EVENT_AVATAR_UNLOCK_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_AVATAR_UNLOCK_CHANGED)
---@overload fun(eventFunction: fun(data: { unlockId: ObjectId, unlockName: WString }), sysEventName: EVENT_AVATAR_UNLOCK_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_UNLOCKS_CHANGED)
---@overload fun(eventFunction: fun(data: { isActive: boolean, type: USDEV | nil }), sysEventName: EVENT_AVATAR_USED_OBJECT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_WALK_MODE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_WARRIOR_COMBAT_ADVANTAGE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_WARRIOR_DAMAGE_POOL_ADDED)
---@overload fun(eventFunction: fun(data: { value: number, limit: number }), sysEventName: EVENT_AVATAR_WARRIOR_DAMAGE_POOL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_WARRIOR_DAMAGE_POOL_REMOVED)
---@overload fun(eventFunction: fun(data: { delay: integer }), sysEventName: EVENT_AVATAR_WILL_BE_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_ZONE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CALL_SPARK_COST_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CALL_SPARK_FAILED)
---@overload fun(eventFunction: fun(data: { target: CANNON_TARGET }), sysEventName: EVENT_CANNON_TARGET_CHANGE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CANT_LOOT_DISAPPEARED_LOOT_BAG)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CHARACTER_CLASS_CHANGER_CHANGED)
---@overload fun(eventFunction: fun(data: { ownerId: ObjectId, slotType: ITEM_CONT, slot: integer, itemId: ObjectId, sysName: string, isNewItem: boolean }), sysEventName: EVENT_CONTAINER_ITEM_ADDED)
---@overload fun(eventFunction: fun(data: { id: SpellId }), sysEventName: EVENT_DEFAULT_SPELL_CHANGED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, id: SpellId } | { effect: EFFECT_TYPE_COOLDOWN_STARTED, id: SpellId, duration: integer, remaining: integer } | { effect: EFFECT_TYPE_SPELL_PREPARED, id: SpellId, prepared: boolean } | { effect: EFFECT_TYPE_SPELL_ACTIVE_STATE_CHANGED, id: SpellId, isActive: boolean, objectId: ObjectId | nil }), sysEventName: EVENT_DEFAULT_SPELL_EFFECT)
---@overload fun(eventFunction: fun(data: { skillId: SkillId | nil, sysResult: ENUM_DisassemblingResult, value: integer | nil }), sysEventName: EVENT_DISASSEMBLING_RESULT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_DRUID_PET_COMMAND_POINTS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_EMOTES_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_FAIRY_BONUS_CHANGED)
---@overload fun(eventFunction: fun(data: { followObjectId: ObjectId | nil }), sysEventName: EVENT_FOLLOW_MODE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_FORGE_CRAFT_DIALOG)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId }), sysEventName: EVENT_GAME_ITEM_CHANGED)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId }), sysEventName: EVENT_GAME_ITEM_CURSED_CHANGED)
---@overload fun(eventFunction: fun(data: { sysCause: ENUM_ActionFailCause }), sysEventName: EVENT_GENERAL_ERROR)
---@overload fun(eventFunction: fun(data: table<integer, { moneyChange: integer, comment: WString, time: LuaFullDateTime, changeReason: ENUM_MoneyChangeReason, sysChangeReason: ENUM_MoneyChangeReason }>), sysEventName: EVENT_GUILD_AVATAR_HISTORY)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_TALENTS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_INSPECT_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_INSPECT_MOUNT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_INSPECT_SKILL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_INSPECT_STARTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_INVENTORY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_INVENTORY_OVERFLOW_CHANGED)
---@overload fun(eventFunction: fun(data: { slot: integer }), sysEventName: EVENT_INVENTORY_OVERFLOW_SLOT_ADDED)
---@overload fun(eventFunction: fun(data: { slot: integer }), sysEventName: EVENT_INVENTORY_OVERFLOW_SLOT_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_INVENTORY_SIZE_CHANGED)
---@overload fun(eventFunction: fun(data: { tabIndex: number, slotIndex: number, itemId: ObjectId }), sysEventName: EVENT_INVENTORY_SLOT_CHANGED)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId }), sysEventName: EVENT_ITEM_DISABLED)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId, from: ITEM_CONT, to: ITEM_CONT }), sysEventName: EVENT_ITEM_MOVED)
---@overload fun(eventFunction: fun(data: { lootBagId: ObjectId }), sysEventName: EVENT_LOOT_BAG_APPEARED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_LOOT_BAG_CHANGED)
---@overload fun(eventFunction: fun(data: { lootBagId: ObjectId }), sysEventName: EVENT_LOOT_BAG_DISAPPEARED)
---@overload fun(eventFunction: fun(data: { index: integer }), sysEventName: EVENT_LOOT_BAG_ITEM_DISAPPEARED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_LOOT_BAG_MONEY_DISAPPEARED)
---@overload fun(eventFunction: fun(data: { customFilter: integer }), sysEventName: EVENT_LOOT_BAG_OPEN_STATE_CHANGED)
---@overload fun(eventFunction: fun(data: { lootBagId: ObjectId }), sysEventName: EVENT_LOOT_BAG_SELECTED)
---@overload fun(eventFunction: fun(data: { playerId: ObjectId, isEnemyChest: boolean }), sysEventName: EVENT_LOOT_CHEST_CAPTURED)
---@overload fun(eventFunction: fun(data: { playerId: ObjectId, isEnemyChest: boolean }), sysEventName: EVENT_LOOT_CHEST_DROPPED)
---@overload fun(eventFunction: fun(data: { playerId: ObjectId, isEnemyChest: boolean }), sysEventName: EVENT_LOOT_CHEST_RETURNED)
---@overload fun(eventFunction: fun(data: { playerId: ObjectId, isEnemyChest: boolean }), sysEventName: EVENT_LOOT_CHEST_TAKEN)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MAP_CHANNELS_INFO_CHANGED)
---@overload fun(eventFunction: fun(data: { mapName: WString }), sysEventName: EVENT_MAP_INSTANCE_FULL)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MAP_INSTANCE_KICK_TIMER_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MAP_INSTANCE_KICK_TIMER_STARTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MOVE_BY_CLICK_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MUTATION_ZONE_MAP_MODIFIERS_CHANGED)
---@overload fun(eventFunction: fun(data: { table: table<integer, ObjectId> }), sysEventName: EVENT_MUTATION_ZONE_POPULATION_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_NECROMANCER_BLOOD_POOL_CHANGED)
---@overload fun(eventFunction: fun(data: { passangerState: boolean }), sysEventName: EVENT_PASSANGER_STATE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_READY_FOR_FINALLY_RESPAWN)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_RESPAWN_FROM_GRAVEYARD)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_RESPAWN_STARTED)
---@overload fun(eventFunction: fun(data: { resurrecterName: WString, unitId: ObjectId | nil }), sysEventName: EVENT_RESURRECT_REJECTED)
---@overload fun(eventFunction: fun(data: { resurrecterName: WString, unitId: ObjectId, timeOutMs: integer }), sysEventName: EVENT_RESURRECT_REQUESTED)
---@overload fun(eventFunction: fun(data: { items: table<integer, ValuedObject>, reason: ENUM_ShowItemsInfoReason }), sysEventName: EVENT_SHOW_ITEMS_INFO)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_TALENTS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_TALK_STARTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_TALK_STOPPED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TARGET_SALES_ADDED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_TARGET_SALES_CHANGED)
---@overload fun(eventFunction: fun(data: { requesterId: ObjectId, timeoutMs: integer }), sysEventName: EVENT_TELEPORT_OFFER_REQUEST)
---@overload fun(eventFunction: fun(data: table<integer, LEARN_ERROR>), sysEventName: EVENT_TRAINER_LEARN_ERROR)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_TREASURY_FULL)
---@overload fun(eventFunction: fun(data: { slot: integer, sysCode: ENUM_DressResult }), sysEventName: EVENT_UNEQUIP_FAILED)
---@overload fun(eventFunction: fun(data: { id: VariableId, sysName: string }), sysEventName: EVENT_VARIABLE_ADDED)
---@overload fun(eventFunction: fun(data: { id: VariableId }), sysEventName: EVENT_VARIABLE_REMOVED)
---@overload fun(eventFunction: fun(data: { id: VariableId, sysName: string, delta: number }), sysEventName: EVENT_VARIABLE_VALUE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_VENDOR_BUY_NOT_ENOUGH_PLACE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_VENDOR_BUY_REPUTATION_IS_TOO_SMALL)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_VENDOR_BUY_REQUIRED_ACHIEVEMENT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_VENDOR_ITEM_ALREADY_SOLD)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId }), sysEventName: EVENT_VENDOR_ITEM_NOT_FOR_SALE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_VENDOR_LIST_UPDATED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_VICTIM_TRACKER_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return nil | table<integer | { id: ObjectId, item: ItemId | nil, alternativeItem: ItemId | nil, text: WString, tag: ENUM_SaleTag, endTime: LuaFullDateTime, amount: nil | { min: integer, max: integer } }>
function avatar.GetTargetSales() end

---@param saleId ObjectId # идентификатор
function avatar.RejectTargetSale( saleId ) end

---@param questId QuestId # идентификатор задания
function avatar.AcceptQuest( questId ) end

---@param shareId ObjectId # уникальный идентификатор предложения
function avatar.AcceptShareQuest( shareId ) end

---@param itemId ObjectId # идентификатор предмета
---@param instrumentId ObjectId # идентификатор инструмента-активатора
--- TODO: check instrumentId type
function avatar.ActivateItem( itemId, instrumentId ) end

---@param itemId ObjectId # идентификатор предмета
function avatar.ActivateItemAlternative( itemId ) end

function avatar.ApplyStoredTalents() end

---@param moves table<integer, integer> # индексом является номер слота В который надо поместить итем, а значением - номер слота (считая с начала кармана) ИЗ которого надо переместить итем
---@param compact boolean # производить ли компактинг стекающихся итемов и пустых слотов
---@param containerType ITEM_CONT # в каком контейнере переставляем предметы. Допустимые контейнеры: сумка, банковская ячейка. В банковской ячейке нельзя переставлять предметы, если она не открыта.
---@param pocket number | nil # карман. Базовый карман имеет индекс -1, остальные считаются с нуля. Значение по умолчанию -1.
function avatar.ArrangeContainerItems( moves, compact, containerType, pocket ) end

---@param emoteId ObjectId # Id эмоции, привязываемой к слоту
---@param index integer # индекс слота от 0 до max
function avatar.BindEmoteToActionPanel( emoteId, index ) end

---@param itemId ObjectId # Id предмета, привязываемого к слоту
---@param index integer # индекс слота от 0 до max
function avatar.BindItemToActionPanel( itemId, index ) end

---@param index integer # индекс слота от 0 до max
function avatar.BindMountMetamorphToActionPanel( index ) end

---@param skinId ObjectId # Id скина маунта из конюшни, привязываемого к слоту
---@param index integer # индекс слота от 0 до max
function avatar.BindMountSkinToActionPanel( skinId, index ) end

---@param mountId ObjectId # Id маунта из конюшни, привязываемого к слоту
---@param index integer # индекс слота от 0 до max
function avatar.BindMountToActionPanel( mountId, index ) end

---@param spellId SpellId # Id умения, привязываемого к слоту
---@param index integer # индекс слота от 0 до max
function avatar.BindSpellToActionPanel( spellId, index ) end

---@param objectId ObjectId # Id предмета для покупки
---@param quantity integer # количество предметов для покупки
function avatar.Buy( objectId, quantity ) end

---@param objectId ObjectId # Id предмета для покупки
---@param quantity integer # количество предметов для покупки
---@param slot integer # номер слота инвентаря
function avatar.BuyToSlot( objectId, quantity, slot ) end

---@return number # текущее значение рейтинга
function avatar.CalcCurrentGearScore() end

function avatar.CallSpark() end

---@param itemId ObjectId # идентификатор предмета
---@param instrumentId ObjectId # идентификатор инструмента-активатора
--- TODO: check instrumentId type 
function avatar.CanActivateItem( itemId, instrumentId ) end

---@param itemId ObjectId # идентификатор предмета
---@param currencyId CurrencyId # идентификатор альтернативной валюты
function avatar.CanActivateItemAlternative( itemId, currencyId ) end

function avatar.CancelAlchemy() end

function avatar.CancelClassChanger() end

---@param instrumentId ObjectId # идентификатор инструмента для дизассемблинга в контейнере
---@param itemId integer # идентификатор разламываемого предмета в контейнере
---@return boolean # можно ли разломать данный предмет данным инструментом
function avatar.CanDisassembleItem( instrumentId, itemId ) end

---@return boolean # true, если можно распределять свободные пункты характеристик
function avatar.CanImproveInnateStats() end

---@param layer integer # номер строки
---@param line integer # номер столбца
---@return boolean # можно ли проапдейтить (или выучить) талант
function avatar.CanUpdateBaseTalent( layer, line ) end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
---@return boolean # можно ли проапдейтить (или выучить) талант
function avatar.CanUpdateFieldTalent( field, row, column ) end

---@param statIndex integer # индекс характеристики из таблицы fairyBonus.allowedStats
function avatar.ChangeFairyBonus( statIndex ) end

---@param itemId ObjectId # идентификатор предмета
---@param isSendEvent boolean # если true, то выводит сообщение о провале
---@return boolean # true, если можно использовать
function avatar.CheckCanUseItem( itemId, isSendEvent ) end

---@param itemId ObjectId # идентификатор предмета
---@param position table<integer, GamePosition> # таблица GamePosition, точка на ландшафте
---@param isSendEvent boolean # если true, то выводит сообщение о провале
---@return boolean # true, если можно использовать
--- TODO: check position type
function avatar.CheckCanUseItemOnPoint( itemId, position, isSendEvent )  end

function avatar.ClearMood() end

function avatar.ClearStoredTalents() end

function avatar.CloseLootBag() end

---@param itemId ObjectId # идентификатор конвертируемого метапредмета в контейнере; должен быть метапредметом-улучшителем (иное считается ошибкой и команда игнорируется), проверяется с помощью avatar.GetItemMetaInfo( itemId ) по флагу isMetaEnchancer
---@param instrumentId ObjectId # идентификатор инструмента в контейнере; должен быть специализированным преметом-конвертором, иное считается ошибкой (иное считается ошибкой и команда игнорируется), проверяется с помощью avatar.GetItemInfo( itemId ) по флагу isMetaEnhancerConvertor
function avatar.ConvertMetaEnhancer( itemId, instrumentId ) end

function avatar.DeactivateUsableDevice() end

---@param shareId ObjectId # уникальный идентификатор предложения
function avatar.DeclineShareQuest( shareId ) end

---@param questId QuestId # идентификатор задания
function avatar.DiscardQuest( questId ) end

function avatar.DistributeStatPoints() end

---@param itemId ObjectId # идентификатор конвертируемого метапредмета в контейнере; должен быть метапредметом-улучшителем (иное считается ошибкой и команда игнорируется), проверяется с помощью avatar.GetItemMetaInfo( itemId ) по флагу isMetaEnchancer
---@param instrumentId ObjectId # идентификатор инструмента в контейнере; должен быть специализированным преметом-дубликатором, иное считается ошибкой (иное считается ошибкой и команда игнорируется), проверяется с помощью avatar.IsMetaEnhancerDuplicator( itemId )
function avatar.DuplicateMetaEnhancerItem( itemId, instrumentId ) end

---@param type CLIENT_DETECTOR # тип детектора
---@param enable boolean # true - включить / false выключить
function avatar.EnableClientDetector( type, enable ) end

---@param enable boolean # для включения: true, для выключения: false
function avatar.EnableFreeKeys( enable ) end

function avatar.EndInspect() end

---@param slot integer # индекс слота в инвентаре [0..GetInventorySize() - 1]
function avatar.EquipItem( slot ) end

---@param itemId ObjectId # идентификатор предмета
function avatar.EquipItemById( itemId ) end

---@param itemId ObjectId # идентификатор предмета
---@param equipSlot DRESS_SLOT # индекс слота в экипировке
function avatar.EquipItemByIdToSlot( itemId, equipSlot ) end

---@param slot integer # индекс слота в инвентаре [0..GetInventorySize() - 1]
---@param equipSlot DRESS_SLOT # индекс слота в экипировке
function avatar.EquipItemToSlot( slot, equipSlot ) end

function avatar.FinallyRespawn() end

---@param mode QUEST_FIND_NEXT_QUEST_MODE # где искать следующий квест (зона, в которой находится аватар или весь игровой мир)
---@return boolean # TODO: check
function avatar.FindNextQuest( mode ) end

---@param secretId QuestId # id основного квеста тайны мира
---@param componentIndex integer # порядковый номер интересующей компоненты (берется из avatar.GetSecretComponents( secretId ))
--- TODO: check returned value
function avatar.FindNextSecretComponentQuest( secretId, componentIndex ) end

---@return table<integer, AbilityId> # список идентификаторов ресурсов абилок
function avatar.GetAbilities() end

---@param abilityId AbilityId # Id ресурса умения
---@return nil | { id: AbilityId, name: WString, description: nil | ValuedText, level: integer, rank: integer, sysInfo: string, hasReplacementSpell: boolean, texture: TextureId }
function avatar.GetAbilityInfo( abilityId ) end

---@param abilityId AbilityId # идентификатор ресурса умения
---@return nil | SpellId
function avatar.GetAbilityReplacementSpell( abilityId ) end

---@param abilityId AbilityId # идентификатор ресурса умения
---@return nil | table<integer, SpellId> # список идентификаторов ресурсов заклинания или nil если его нет, индексация с 1
function avatar.GetAbilityReplacementSpells( abilityId ) end

---@param abilityId AbilityId # Id ресурса умения
---@return ValuedObject # экземпляр ValuedObject
function avatar.GetAbilityValuedObject( abilityId ) end

---@param ruleId ResourceId # идентификатор события
---@return integer # количество очков
function avatar.GetAchievementValue( ruleId ) end

---@param actionGroupId ActionGroupId # идентификатор ресурса группы заклинаний
---@param characterClassId CharacterClassId # идентификатор ресурса класса игрока
---@return table<integer, SpellId> # индексированный с 0 список идентификаторов ресурсов спеллов
function avatar.GetActionGroupSpells( actionGroupId, characterClassId) end

---@param actionGroupId ActionGroupId # Id группы заклинаний
---@return nil | table<ENUM_InnateStats, number> # если некорректный аргумент, то nil; иначе таблица
function avatar.GetActionGroupStatBonus( actionGroupId ) end

---@param index integer # индекс слота от 0 до max
---@return nil | { type: ACTION_TYPE, id: ObjectId }
function avatar.GetActionInfo( index ) end

---@return nil | integer # номер активной специализации аватара (нумерация начинается от 0); если ошибка, то nil
function avatar.GetActiveBuild() end

---@return nil | SkillId # идентификатор ресурса скила
function avatar.GetActiveCraftingSkill() end

---@return nil | ObjectId # идентификатор устройства
function avatar.GetActiveUsableDevice() end

---@param drum integer # номер барабана (слота) текущего алхимического действа
---@return nil | { itemId: ObjectId, maxCorrectionsPerColumn: integer, position: integer, correction: integer, components: table<integer, ComponentId> }
function avatar.GetAlchemyDrumInfo( drum ) end

---@return nil | { id: SkillId, recipes: table<integer, RecipeId>, correctionCount: integer, drumsCount: integer, drumSize: integer, perfectBonus: integer, perComponentBonus: integer, unusedRollsBonus: number, defaultResultCount: integer, active: boolean, reactionInited: boolean, finished: boolean }
function avatar.GetAlchemyInfo() end

---@param line integer # строка в которой необходимо узнать результат
---@return nil | { recipeId: RecipeId, perfectRecipe: boolean }
function avatar.GetAlchemyMatchedRecipe( line ) end

---@param itemId ObjectId # id предмета; предмет должен находиться в слоте какого-либо контейнера (сумка, переполненная сумка, банковская ячейка)
---@return table<integer, QuestId> # список идентификаторов квестов
function avatar.GetAvailableItemQuests( itemId ) end

---@return table<integer, QuestId> # список идентификаторов квестов
function avatar.GetAvailableQuests() end

---@return integer # время до разрешения барьера
function avatar.GetBarriersDelay() end

---@return table<integer, { damage: integer, remainingTimeMs: integer }>
function avatar.GetBarriersInfo() end

---@param layer integer # номер строки
---@param line integer # номер столбца
---@return nil | BaseTalentInfo
function avatar.GetBaseTalentInfo( layer, line ) end
---@alias BaseTalentInfo { canUpdate: boolean, isEmpty: boolean, isLearned: boolean, isRecomended: boolean, requiredSpentTP: integer, currentRank: integer | nil, nextRank: integer | nil, replacement: nil | { text: WString, image: TextureId }, ranks: nil | { rank: integer, name: WString, desc: WString, spellId: nil | SpellId, abilityId: nil | AbilityId, image: TextureId }, unlockInfo: { isLocked: boolean, isLockable: boolean, unlockName: nil | WString, unlockDescription: nil | WString }, parentTalentInfo: nil | { spellId: nil | SpellId, abilityId: nil | AbilityId, layer: integer, line: integer }, relatedSpells: nil | table<integer, SpellId> }

---@return { layersCount: integer, linesCount: integer }
--- TODO: check return type
function avatar.GetBaseTalentTableSize() end

---@return nil | ObjectId # идентификатор транспортного средства, если есть
function avatar.GetBindedTransport() end

---@return table<integer, { type: ENUM_DevelopmentTrack, sysType: ENUM_DevelopmentTrack, total: integer, left: integer }>
function avatar.GetBonusPools() end

---@param resourceId BuffId # Id умения
---@return nil | { id: ObjectId, buffId: BuffId, ownerId: nil | ObjectId, name: WString, description: nil | ValuedText, debugName: nil | string, sysName: string, durationMs: integer, remainingMs: integer, isStockable: boolean, stackCount: integer, stackLimit: integer, isPositibe: boolean, isGradual: boolean, canDetach: boolean, isNeedVisualize: boolean, isNeedVisualizeDuration: boolean, interfaceHighPriority: boolean, gainSpells: nil | table<integer, SpellId>, groups: table<number, string>, producer: { casterId: nil | ObjectId, spellId: nil | SpellId, abilityId: nil | AbilityId, buffId: nil | BuffId }, texture: nil | TextureId, debugGroup: nil | table<number, string> }
function avatar.GetBuffInfoById( resourceId ) end

---@param buffId BuffId # Id ресурса бафа
---@return ValuedObject # экземпляр ValuedObject
function avatar.GetBuffValuedObject( buffId ) end

---@return nil | integer # количество доступных специализации аватара; если ошибка, то nil
function avatar.GetBuildsCount() end

---@return QuestId # id спелла, переключающего специализацию аватара
--- TODO: not a SpellId ?
function avatar.GetBuildSwitchSpell() end

---@param categoryId CurrencyCategoryId # категория валюты
---@return table<integer, CurrencyId> # индексированная с 0 таблица с идентификаторами ресурсов имеющихся валют
function avatar.GetCategoryCurrencies( categoryId ) end

---@return { currentChannel: integer, [integer]: nil | { busyness: number, raidMembers: nil | table<integer, UniqueId>, groupMembers: nil | table<integer, UniqueId> } }
function avatar.GetChannelsInfo() end

---@return string
function avatar.GetClass() end

---@param changeList table
---@return unknown
--- TODO: need to change type
function avatar.GetClassChangerBonusStats( changeList ) end

---@return nil | { charClassId: ResourceId, substs: nil | table<integer, { itemId: ObjectId, itemSubstitutions: table<integer, { itemSubstituteParts: table<integer, { substItemId: ObjectId, isRemoved: boolean, enchantsSubstitutions: table<integer, { sourceEnchantItemId: ObjectId, oneOfEnchantSubstitution: table<integer, ObjectId> }> }> }> }> }
function avatar.GetClassChangerInfo() end

---@param changeList table
---@return unknown
--- TODO: need to change type
function avatar.GetClassChangerRangeBonusStats( changeList ) end

---@return CharacterClassId
function avatar.GetClassId() end

---@param field integer # номер поля (от 1)
---@return nil | { name: WString, image: UISingleTexture }
function avatar.GetCommonFieldTalentInfo( field ) end

---@param id ComponentPropertyId
---@return nil | { id: ComponentPropertyId, name: WString, description: WString, image: nil | TextureId }
function avatar.GetComponentInfo( id ) end

---@param itemSlot integer # индекс слота предмета в контейнере
---@param itemSlotType ITEM_CONT # тип контейнера
---@return nil | ObjectId # идентификатор предмета, если найден
function avatar.GetContainerItem( itemSlot, itemSlotType ) end

---@param id ObjectId # идентификатор контекстного действия
---@return nil | { durationMs: integer, remainingMs: integer } # если действие есть, то информация по кулдауну
function avatar.GetContextActionCooldown( id ) end

---@param id ObjectId # идентификатор контекстного действия
---@return nil | { id: ObjectId, priority: integer, name: WString, description: nil | ValuedText, image: nil | TextureId, enable: boolean, sysType: ENUM_CONTEXT_ACTION_TYPE, objectId: nil | ObjectId, spellId: nil | SpellId, itemId: nil | ObjectId, cooldown: nil | { durationMs: integer, remainingMs: integer }, pointInfo: nil | { range: 0 | number, minRange: 0 | number, radius: 0 | number }, sysNameAEMark: nil | string }
function avatar.GetContextActionInfo( id ) end

---@param withMount? boolean # true добавлять контекстные действия маунта; по-умолчанию true
---@return table<integer, ObjectId> # список[1, n] идентификаторов экземпляров контекстных действий; где n - число идентификаторов
function avatar.GetContextActions( withMount ) end

---@param id ObjectId # идентификатор контекстного действия
---@return nil | { image: nil | TextureId, enable: boolean, sysType: ENUM_CONTEXT_ACTION_TYPE, objectId: nil | ObjectId, cooldown: nil | { durationMs: integer, remainingMs: integer } }
function avatar.GetContextActionShortInfo( id ) end

---@return table<integer, CurrencyId> # индексированная с 0 таблица с идентификаторами ресурсов имеющихся валют
function avatar.GetCurrencies() end

---@return table<integer, CurrencyCategoryId> # индексированная с 0 таблица с идентификаторами ресурсов категорий имеющихся валют
function avatar.GetCurrencyCategories() end

---@param сurrencyId CurrencyId
---@return nil | ValuedText # описание с подставленными текущими значениями параметров
function avatar.GetCurrencyDescription( сurrencyId ) end

---@param sysName? string # внутриигровое имя альтернативной валюты
---@return nil | CurrencyId # идентификатор ресурса альтернативной валюты
function avatar.GetCurrencyId(sysName) end

---@param currencyId? CurrencyId # идентификатор ресурса альтернативной валюты
---@return nil | { value: integer, maxValue: integer | nil } # если нет ошибки, то таблица с полями
function avatar.GetCurrencyValue(currencyId) end

---@param skillId ObjectId # идентификатор скилла
---@return integer # максимально возможный уровень скилла
function avatar.GetCurrentMaxSkillScore( skillId ) end

---@return nil | QuestId # id текущего квеста, если таковой объявлен; иначе nil
function avatar.GetCurrentQuest() end

---@return { total: integer, bonus: integer }
function avatar.GetDestinyPoints() end

---@return table<integer, ObjectId> # идентификаторы отслеживаемых объектов (устройство или юнит)
function avatar.GetDetectedObjects() end

---@return table<integer, ObjectId> # индексированный с 1 cписок идентификаторов видимых девайсов
function avatar.GetDeviceList() end

---@return number # угол направления (в радианах)
function avatar.GetDir() end

---@param dressSlot DRESS_SLOT # номер слота ( enum DRESS_SLOT_... )
---@return nil | { minLevel: integer }
function avatar.GetDressSlotInfo( dressSlot ) end

---@return nil | { value: integer, minValue: integer, maxLevel: integer } # возвращаемые значения для друидского класса аватара при наличие пета - таблица / nil - в остальных случаях (нет пета или аватар не друид)
function avatar.GetDruidPetCommandPoints() end

---@param emoteId integer # индекс слота от 0 до max
---@return nil | { id: ObjectId, canRun: boolean, hasMood: boolean, name: WString, description: WString, aliases: table<integer, WString>, sysName: string, textTarget: WString, textNoTarget: WString, image: nil | TextureId, image2: nil | TextureId }
function avatar.GetEmoteInfo( emoteId ) end

---@return table<integer, ObjectId> # список идентификаторов эмоций
function avatar.GetEmotes() end

---@return table<integer, SpellId> # индексированный с 1 список идентификаторов ресурсов спеллов
function avatar.GetEngineerPetCommands() end

---@param itemId ObjectId # идентификатор предмета
---@return nil | DRESS_SLOT # индекс ячейки в экипировке
function avatar.GetEquipmentItemSlot( itemId ) end

---@return { currentExp: integer, currentLevelExp: integer, nextLevelExp: integer, extraExp: integer, extraExpCap: integer, bonus: integer, pvpExp: integer }
function avatar.GetExperience() end

---@param level integer # уровень, для которого нужно вернуть опыт
---@return integer # кол-во опыта
function avatar.GetExpToLevel( level ) end

---@param factionId FactionId
---@return { isSame: boolean, isFriend: boolean, isPassive: boolean } # таблица c дополнительным описанием фракции
function avatar.GetFactionInfo( factionId ) end

---@return nil | { description: WString, groups: table<integer, { spells: table<integer, SpellId>, entries: table<integer, { fairyRank: integer, immunityTimeMs: integer, durationMod: number }> }> }
function avatar.GetFairyMechanicsInfo() end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
---@return nil | BaseTalentInfo
function avatar.GetFieldTalentInfo( field, row, column ) end

---@return { fieldsCount: integer, rowsCount: integer, columnsCount: integer }
function avatar.GetFieldTalentTableSize() end

---@return integer | nil # если нет информации, то nil; иначе количество доступных для распределения пунктов характеристик
function avatar.GetFreeStatPointsToDistribute() end

---@return nil | { currentValue: number, levelPass: table<integer, number>, levelsRecipe: table<integer, number> }
function avatar.GetGearScoreInfo() end

---@return table<integer, { isCustom: boolean, type: ENUM_GlobalScalerType | nil, sysType: ENUM_GlobalScalerType | nil, title: string | nil, description: string | nil, value: number, remainingMs: integer | nil }>
function avatar.GetGlobalRates() end

---@return { base: integer, talents: integer, equipment: integer, buffs: integer, effective: integer, tickMs: integer }
function avatar.GetHealthRegen() end

---@return { durationMs: integer, remainingMs: integer }
function avatar.GetHearthStoneCooldown() end

---@return { map: WString, zone: WString, locator: WString, locationId: ObjectId }
function avatar.GetHearthStoneLocator() end

---@return nil | SpellId # заклинание, посредством которого реализовано перемещение с использованием HearthSton
function avatar.GetHearthStoneSpell() end

---@return ObjectId # идентификатор аватара
function avatar.GetId() end

---@return nil | table<integer, InnateStats>
function avatar.GetImprovedInnateStats() end

---@return nil | table<integer, ObjectId> # nil если анлоков нет; индексированная с 1 таблица с идентификаторами возможностей
function avatar.GetInfiniteUnlocks() end

---@param sysName ENUM_InnateStats # служебное имя характеристики
---@return nil | ValuedText # описание с подставленными текущими значениями параметров
function avatar.GetInnateStatDescription( sysName ) end

---@return table<integer, InnateStats>
function avatar.GetInnateStats() end
---@alias InnateStats { sysName: ENUM_InnateStats, base: number, effective: number, talents: number, equipment: number, enchants: number, isCursed: boolean, buffs: number, fairyBonus: number, secondary: { current: InnateStatSecondary, next: InnateStatSecondary } }
---@alias InnateStatSecondary { N1: number, N2: number, N3: number, N4: number, isLow: boolean, isReduced: boolean }

---@return { rank: integer | nil, playerId: ObjectId | nil, mountId: ObjectId | nil }
function avatar.GetInspectInfo() end

---@return nil | InteractorCue
function avatar.GetInteractorCue() end
---@alias InteractorCue { name: WString, text: WString, data: table<integer, CueData>, isSpecial: boolean }
---@alias CueData { alias: nil | string, image: nil | TextureId, titlePicture: nil | TextureId, money: nil | number, number: nil | number, itemId: nil | ObjectId, string: nil | WString }

---@return nil | ObjectId # идентификатор точки телепортации или nil, если такой информации нет
function avatar.GetInteractorCurrentLocation() end

---@return nil | InteractorInfo
function avatar.GetInteractorInfo() end
---@alias InteractorInfo { interactorId: ObjectId, isVendor: boolean, isRawVendor: boolean, vendorType: VENDOR, isReputationVendor: boolean, isQuestGiver: boolean, isSecretFinisher: boolean, isTrainer: boolean, isMailBox: boolean, isAuction: boolean, isTeleportMaster: boolean, isRemortMaster: boolean, isDepositeBoxAccessor: boolean, isBestiary: boolean, isCurrencyExchanger: boolean, isChangeRoomMaster: boolean, isBattlegroundControlpoint: boolean, isRewardsExchanger: boolean, canTakeRestedExp: boolean, hasCues: boolean, extended: table<INTERACTION, boolean>, hasInteraction: boolean }

---@return table<integer, InteractorCue> # список реплик, приходящих после соответствующего ответа по индексу от 0
function avatar.GetInteractorNextCues() end

---@return table<integer, ObjectId> # индексированный с 0 список идентификаторов точек телепортации
function avatar.GetInteractorTeleportLocations() end

---@return nil | ObjectId # идентификатор собеседника или nil, если его нет
function avatar.GetInterlocutor() end

---@return nil | ObjectId # идентификатор предмета-сумки или nil
function avatar.GetInventoryBagItemId() end

---@param index integer # индекс слота в инвентаре (0..)
---@return nil | ObjectId # идентификатор предмета или nil, если слот пустой
function avatar.GetInventoryItemId( index ) end

---@return table<integer, nil | ObjectId> # таблица с идентификаторами предметов, индексация [0..avatar.GetInventorySize() - 1], элементы - ObjectId - идентификатор предмета или nil, если слот пустой
function avatar.GetInventoryItemIds() end

---@param itemId ObjectId # идентификатор предмета
---@return nil | integer # индекс слота в инвентаре [0..], если предмет найден
function avatar.GetInventoryItemSlot( itemId ) end

---@return table<integer, nil | ObjectId> # таблица с идентификаторами предметов, индексация от 0, элементы - ObjectId - идентификатор предмета или nil, если слот пустой
function avatar.GetInventoryOverflowItemIds() end

---@return integer # число слотов в инвентаре
function avatar.GetInventoryOverflowSize() end

---@return integer # число слотов в инвентаре
function avatar.GetInventorySize() end

---@return table<integer, unknown> # таблица со значениями типа ItemClass, индексированная [0..]
--- TODO: change unknown class
function avatar.GetItemClassList() end

---@return nil | integer # nil если нет информации; иначе число PvP-убийств, совершённых аватаром за всю карьеру
function avatar.GetKills() end

---@param layer integer # номер строки
---@return table<integer, SpellId> # таблица с Id ресурсами спелов
function avatar.GetLayerRelatedSpells( layer ) end

---@return integer # число слотов в сумке
function avatar.GetLootBagSlotCount() end

---@return { money: number, items: table<integer, nil | ObjectId> }
function avatar.GetLootBagSlots() end

---@return { base: number, effective: number }
function avatar.GetMainhandSpeed() end

---@return { base: number, talents: integer, equipment: integer, buffs: integer, effective: integer, tickMs: integer }
function avatar.GetManaRegen() end

---@return nil | { durationMs: integer, remainingMs: integer, sysCause: ENUM_AvatarKickCause }
function avatar.GetMapInstanceKick() end

---@return number
function avatar.GetMaxActionCount() end

---@param skillId ObjectId # идентификатор скилла
---@return integer # максимально возможный уровень скилла
function avatar.GetMaxSkillScore( skillId ) end

---@param sourceId ObjectId # идентификатор предмета который улучшаем
---@param enhancerId ObjectId # идентификатор предмета-улучшителя
---@param agentId ObjectId # идентификатор агента улучшения
---@return number # стоимость улучшения в меди
function avatar.GetMetaUpgradeCost( sourceId, enhancerId, agentId)  end

---@param sourceId ObjectId # идентификатор улучшаемого предмета
---@param enhancerId ObjectId # идентификатор предмета-улучшителя
---@param agentId ObjectId # идентификатор предмета-агента, требуемого для улучшения
---@param agentCount integer # количество используемых агентов
---@return nil | { canUpgrade: boolean, upgradeChance: nil | number, upgradeChanceBehavior: nil | ENUM_UpgradeChanceBehavior, sysUpgradeChanceBehavior: nil | ENUM_UpgradeChanceBehavior, sysUpgradeVector: META_UPGRADE, improvement: nil | number, maxImprovement: nil | number, resultId: ObjectId }
function avatar.GetMetaUpgradeResults( sourceId, enhancerId, agentId, agentCount ) end

---@return number
function avatar.GetMoney() end

---@return { isMoving: boolean, position?: { posX: number, posY: number, posZ: number } }
function avatar.GetMoveToPointState() end

---@return { value: integer, minValue: integer, maxValue: integer }
function avatar.GetNecromancerBloodPool() end

---@return nil | { unlockName: WString, unlockDescription: WString }
function avatar.GetNextLevelUnlockInfo() end

---@return nil | ObjectId # идентификатор просматриваемого астрального моба
function avatar.GetObservedAstralUnit() end

---@return nil | ObjectId # идентификатор просматриваемого транспортного средства
function avatar.GetObservedTransport() end

---@return { base: number, effective: number }
function avatar.GetOffhandSpeed() end

---@param index? unknown
---@return integer # индекс заклинания. -1 в случае ошибки
--- TODO: is index needed
function avatar.GetPetActiveSpell( index ) end

---@return PET_AGGRO # тип поведения
function avatar.GetPetAggroMode() end

---@return PET_MOVE # тип поведения
function avatar.GetPetMoveMode() end

---@return table<integer, SpellId> # индексированная с 0 таблица идентификаторов ресурсов переключаеых заклинаний
function avatar.GetPetSpells() end

---@return GamePosition
function avatar.GetPos() end

---@return table<integer, InnateStats>
function avatar.GetPower() end

---@return table<integer, ObjectId> # список идентификаторов профессий (индексированный с 0)
function avatar.GetProficiencies() end

---@param id ObjectId # Id объекта профессии
---@return nil | { id: ObjectId, name: WString, description: WString, sysInfo: string, image?: TextureId }
function avatar.GetProficiencyInfo( id ) end

---@return table<PSIONIC_CONTACT, { unitId: ObjectId, durationMs: integer, remainingMs: integer }>
function avatar.GetPsionicContacts() end

---@return table<integer, SpellId> # индексированный с 1 список идентификаторов ресурсов спеллов
function avatar.GetPsionicOrders() end

---@return table<integer, QuestId> # cписок идентификаторов квестов
function avatar.GetQuestBook() end

---@return table<integer, QuestId> # cписок идентификаторов выполненных квестов
function avatar.GetQuestHistory() end

---@param questId QuestId # идентификатор ресурса задания
---@return nil | TextureId # идентификатор текстуры изображения, если оно есть
function avatar.GetQuestImage( questId ) end

---@param questId QuestId # идентификатор задания
---@return table<integer, QuestInfo>
function avatar.GetQuestInfo( questId ) end
---@alias QuestInfo { id: QuestId, name: nil | ValuedText, sysName: string, debugName: nil | string, level: integer, isHideLevel: boolean, requiredLevel: integer, goal: nil | ValuedText, startText: nil | ValuedText, checkText: nil | ValuedText, finishText: nil | ValuedText, kickText: nil | ValuedText, plotLine: string, shared: boolean, canCancel: boolean, canBeSkipped: boolean, type: QUEST_TYPE, isAutomatic: boolean, isForInstance: boolean, isPvP: boolean, isInSecretSequence: boolean, isTutorial: boolean, isItemMall: boolean, isLowPriority: boolean, isNextQuestFinder: boolean, uiPriority: integer, isRepeatable: boolean, canRepeat: boolean, repeatPeriod: integer, isSecret: boolean, zoneName: WString, zonesMapId: nil | ObjectId, returnLocation: nil | QuestLocation }
---@alias QuestLocation { zonesMapId: ObjectId, position: GamePosition, isIndoor: boolean }

---@param objectiveId ObjectId # идентификатор цели задания
---@return nil | QuestObjectiveInfo
function avatar.GetQuestObjectiveInfo( objectiveId ) end
---@alias QuestObjectiveInfo { questId: QuestId, name: WString, description: WString, sysDebugName: nil | string, progress: integer, required: integer, isInternal: boolean, type: QUEST_COUNT, showCounterValue: boolean, alwaysShowMarker: boolean, items: table<integer, ObjectId>, dressSlots: table<integer, DRESS_SLOT>, locations: table<integer, QuestLocation> }

---@param questId QuestId # идентификатор квеста
---@return nil | table<integer, QuestProgress>
function avatar.GetQuestProgress( questId ) end
---@alias QuestProgress { id: QuestId, state: QUEST, returnLocation: nil | QuestLocation, zonesMapId: nil | ObjectId, timerDurationMs: nil | integer, timerTimeLeftMs: nil | integer }

---@param questId QuestId # идентификатор задания
---@return nil | QuestReward
function avatar.GetQuestReward( questId ) end
---@alias QuestReward { money: integer, experience: integer, loyalty: integer, authority: integer, mandatoryItems: table<integer, ObjectId>, mandatoryItemsCount: integer, alternativeItems: table<integer, ObjectId>, reputation: table<integer, { faction: WString, value: integer }>, currencies: table<integer, { currencyId: CurrencyId, value: integer }>, unlocks: table<integer, ObjectId> }

---@return table<integer, { shareId: ObjectId, questId: QuestId, sharerName: WString }> # таблица со списком приглашений, индексация [0..]
function avatar.GetQuestShareInvitations() end

---@return integer # максимальное количество заданий
function avatar.GetQuestsLimit() end

---@return { base: number, effective: number }
function avatar.GetRangedSpeed() end

---@param id RecipeId
---@return nil | ItemId # если рецепт не найден по идентификатору, или итем озарения не прописан в рецепте
function avatar.GetRecipeAfflatusItem( id ) end

---@param id RecipeId
---@return nil | RecipeInfo
function avatar.GetRecipeInfo( id ) end
---@alias RecipeInfo { id: RecipeId, name: WString, description: nil | ValuedText, skillId: nil | SkillId, score: integer, image?: TextureId, components: table<integer, ObjectId | ResourceId>, resultQuantity: integer, defaultItem: nil | ObjectId, nextRecipeId: nil | RecipeId, nextRecipePoints: integer, qualificaionPoints: CurrencyId, resultItems: table<integer, ObjectId>, bindResult: boolean }

---@return { commonGoldStats: nil | table<integer, { resourceId: SpecialStatId, innateType: nil | ENUM_InnateStats }>, commonSilverStats: nil | table<integer, { resourceId: SpecialStatId, innateType: nil | ENUM_InnateStats }>, slots: nil | table<DRESS_SLOT, { goldStats: nil | table, silverStats: nil | table }> }
function avatar.GetRecommendedStats() end

---@param factionId FactionId
---@return nil | ReputationInfo
function avatar.GetReputationInfo( factionId ) end
---@alias ReputationInfo { factionId: FactionId, rep: integer, level: REPUTATION_LEVEL, nextLevel: REPUTATION_LEVEL, repCurrLevel: nil | integer, repNextLevel: nil | integer }

---@return table<integer, ReputationInfo>
function avatar.GetReputationsList() end

---@param reputationLevel REPUTATION_LEVEL
---@return nil | integer # значение репутации для получения заданного уровня репутации; nil - если уровень репутации задан некорректно
function avatar.GetReputationValue( reputationLevel ) end

---@return table<RESISTANCE, InnateStats>
function avatar.GetResistances() end

---@return table<integer, QuestId> # список идентификаторов заданий
function avatar.GetReturnableQuests() end

---@return integer # уровень главного игрока, с которого доступно распределение вех
function avatar.GetRubyStartLevel() end

---@param itemId ObjectId # идентификатор предмета
---@return integer # общее количество предметов в инвентаре с описанными условиями
function avatar.GetSameBindingStackCount( itemId ) end

---@return table<integer, VendorItems>
function avatar.GetSecondhandList() end
---@alias VendorItems { id: ObjectId, quantity: integer, counter: integer, isBound: integer, isSecondhand: boolean, price: integer, requiredUnlocks: nil | table<integer, UnlockId>, requiredAchivements: nil | table<integer, { ruleId: RuleId, achivement: integer }>, alternativePrices: nil | table<integer, { currencyId: CurrencyId, value: integer }> }

---@param secretId ObjectId
---@return table<integer, { opened: boolean, closed: boolean, text: nil | WString, level: number, index: number }> # индексированный с 0 список таблиц описаний компонент тайны мира
function avatar.GetSecretComponents( secretId ) end

---@param secretId ObjectId # идентификатор тайны мира
---@return nil | SecretInfo
function avatar.GetSecretInfo( secretId ) end
---@alias SecretInfo { id: ObjectId, questId: QuestId, closed: boolean, finished: boolean, level: number, image?: TextureId }

---@return table<integer, ObjectId> # индексированный с 0 список идентификаторов тайн мира, открытых игроком
function avatar.GetSecrets() end

---@return PersistentId
function avatar.GetServerId() end

---@param id SkillId
---@return nil | { id: SkillId, score: nil | integer, exp: nil | integer }
function avatar.GetSkillInfo( id ) end

---@return table<integer, SkillId> # таблица идентификаторов ресурсов скилов главного героя
function avatar.GetSkills() end

---@return nil | integer # стоимость вызова искры в мирро. Если игрок не в состоянии воскрешения, то nil
function avatar.GetSparkCost() end

---@return nil | integer # время в миллисекундах требуемое для возвращения искры. Если игрок не в состоянии воскрешения, то nil
function avatar.GetSparkReturnDelay() end

---@return table<integer, SpecialStat>
function avatar.GetSpecialStats() end
---@alias SpecialStat { id: SpecialStatId, name: WString, tooltipName: WString, sysName: string, base: number, effective: number, talents: number, equipment: number, enchants: number, isCursed: boolean, buffs: number, fairyBonus: number, description: nil | ValuedText }

---@return table<integer, SkillId> # список SpellId умений и заклинаний
function avatar.GetSpellBook() end

---@return integer # количество вложенных очков талантов
function avatar.GetSpentTalentPoints() end

---@return table<integer, { enchantSpellId: SpellId, shotSpellId: SpellId, arrowCount: integer, maxArrowCount: integer }>
function avatar.GetStalkerCartridge() end

---@return nil | table<integer, { damage: number, resolveTime: number, intervalId: integer }>
function avatar.GetStalkerDamagePoolInfo() end

---@return integer # лимит времени жизни дамага в барьере, в миллисекундах
function avatar.GetStalkerDamagePoolSize() end

---@return table<integer, InnateStats>
function avatar.GetStamina() end

---@return table<integer, InnateStats> | nil
function avatar.GetStatPointsToDistribute() end

---@return nil | StatsBonusesPart
function avatar.GetStatsBonusesPart() end
---@alias StatsBonusesPart { isBonusesEmpty: boolean, fairyBonus: nil | { statPointsCount: integer, currentStat: integer, stats: table<integer, { id: SpecialStatId, isAllowed: boolean, name: WString, tooltipName: WString, sysName: string, base: number, effective: number, talents: number, equipment: number, enchants: number, isCursed: boolean, buffs: number, fairyBonus: number, description: nil | ValuedText }> } }

---@return number # минимальный уровень, начиная с которого доступно распределение очков таланта
function avatar.GetTalentSelectMinLevel() end

---@return nil | ObjectId # идентификатор цели аватара или nil, если цели нет
function avatar.GetTarget() end

---@param locationId ObjectId | TeleportMasterId | table # идентификатор точки телепорта
---@return nil | { id: ObjectId, name: WString, isHighPriority: boolean, minLevel: 0 | integer, maxLevel: 0 | integer }
function avatar.GetTeleportLocationInfo( locationId ) end

---@return table<integer, ObjectId> # индексированный с 0 список идентификаторов точек телепортации
function avatar.GetTeleportLocations() end

---@return nil | table<integer, ObjectId> # nil если анлоков нет; индексированная с 0 таблица с идентификаторами возможностей
function avatar.GetTemporaryUnlocks() end

---@return nil | integer # время в миллисекундах после появления игрока на кладбище. Если игрок не в состоянии воскрешения, то nil
function avatar.GetTimeAfterRespawn() end

---@return table<integer, TeleportId> # cписок идентификаторов (индексирован с 1) видимых транспортов
function avatar.GetTransportList() end

---@return UniqueId
function avatar.GetUniqueId() end

---@return table<integer, ObjectId> # индексированный с 1 cписок идентификаторов видимых юнитов
function avatar.GetUnitList() end

---@return nil | table<integer, UnlockCategoryId> # nil если анлоков нет; иначе список (таблица, индексированная с 0) UnlockCategoryId
function avatar.GetUnlockCategories() end

---@param unlockId ObjectId | UnlockId
---@return nil | UnlockInfo
function avatar.GetUnlockInfo( unlockId ) end
---@alias UnlockInfo { id: nil | ObjectId, unlockId: nil | UnlockId, name: WString, description: WString, sysName: string, sysDebugName: nil | string, image?: TextureId, isBoundToRemort: boolean, edTime: nil | LuaFullDateTime, category: nil | { name: WString, sysName: string, categoryId: UnlockCategoryId } }

---@return nil | table<integer, ObjectId> # nil если анлоков нет; индексированная с 0 таблица с идентификаторами возможностей
function avatar.GetUnlocks() end

---@param unlockCategoryId UnlockCategoryId
---@return nil | table<integer, ObjectId> # nil если анлоков нет; иначе индексированная с 0 таблица с идентификаторами возможностей(анлоков)
function avatar.GetUnlocksInCategory( unlockCategoryId ) end

---@param deviceId unknown
---@return nil | UsableDeviceInfo
--- TODO: is deviceId needed?
function avatar.GetUsableDeviceInfo( deviceId ) end
---@alias UsableDeviceInfo { id: ObjectId, name: WString, hasCrosshaie: boolean, activeAction: nil | integer, action: table<integer, { name: WString, description: nil | ValuedText, image?: TextureId, enable: boolean, active: boolean, cost: nil | integer, isPointed: boolean, radius?: number, range?: number, minRange?: number }> }

---@param variableId VariableId | string # идентификатор ресурса переменной или алиас
---@return nil | table<integer, VariableInfo>
function avatar.GetVariableInfo( variableId ) end
---@alias VariableInfo { id: VariableId, sysName: string, name: WString, sysDebugName: WString, value: number, minValue: number, maxValue: number, hasRelatedSpell: boolean }

---@return table<integer, VariableId> # индексированная с 0 таблица с идентификаторами ресурсов имеющихся переменных
function avatar.GetVariables() end

---@return table<integer, { id: ObjectId, quantity: integer, price: integer, counter: integer, isBound: boolean }>
function avatar.GetVendorBuyback() end

---@return table<integer, { id: ObjectId, quantity: integer, counter: integer, isBound: boolean, isSecondhand: boolean, price: integer, requiredUnlocks: nil | table<integer, UnlockId>, requiredAchivements: nil | table<integer, { ruleId: RuleId, achivement: integer }>, alternativePrices: nil | table<integer, { currencyId: CurrencyId, value: integer }> }>
function avatar.GetVendorList() end

---@return nil | integer # номер показываемой специализации аватара (нумерация начинается от 0); если ошибка, то nil
function avatar.GetViewedBuild() end

---@return integer # количество вех развиия, доступных для распределения в просматриваемой специализации
function avatar.GetViewedBuildFreeRubyPoints() end

---@return integer # количество пунктов характеристик, доступных для распределения в просматриваемой специализации
function avatar.GetViewedBuildFreeStatPoints() end

---@return integer # количество очков умений, доступных для распределения в просматриваемой специализации
function avatar.GetViewedBuildFreeTalentPoints() end

---@return integer # величина боевого духа война
function avatar.GetWarriorCombatAdvantage() end

---@return nil | { value: number, limit: number }
function avatar.GetWarriorDamagePoolInfo() end

---@return table<integer, InnateStats>
function avatar.GetWisdom() end

---@return boolean # имеется ли у аватара HearthStone
function avatar.HasHearthStone() end

---@return boolean # true, если собеседник имеет активные квесты на выдачу или принятие
function avatar.HasInteractorCue() end

---@return boolean # true, если собеседник имеет активные квесты на выдачу или принятие
function avatar.HasInteractorQuest() end

---@param itemId ObjectId # идентификатор предмета
---@return boolean # true если гильдейский компонент есть
function avatar.HasItemGuildComponent( itemId ) end

---@return boolean # есть доступ к каналу
function avatar.HasPsionicChannel() end

---@param unlockId UnlockId | ResourceId
---@return boolean # имеется ли у аватара данный анлок
function avatar.HasUnlock( unlockId ) end

---@param stat ENUM_InnateStats
---@param amount integer
function avatar.ImproveInnateStat( stat, amount ) end

---@param itemId ObjectId # идентификатор предмета
---@param slot integer # индекс слота
---@return boolean # true, если предмет подходит по типу для этого слота
function avatar.InventoryCanPlaceItemToSlot( itemId, slot ) end

---@return integer # базовое число слотов в инвентаре
function avatar.InventoryGetBaseBagSlotCount() end

---@param itemId ObjectId # идентификатор предмета
---@return integer # индекс кармана, начиная с 0, или -1, если предмет можно положить в базовую сумку
function avatar.InventoryGetItemPocket( itemId ) end

---@param slot integer # индекс слота
---@return integer # индекс кармана, начиная с 0, или -1, если слот в базовой сумке
function avatar.InventoryGetPocketIndexBySlot( slot ) end

---@param pocketIndex integer # индекс кармана, начиная с 0
---@return nil | { firstIndex: integer, size: integer, name: WString, description: WString, image?: WString }
function avatar.InventoryGetPocketInfo( pocketIndex ) end

---@return integer # число карманов в инвентаре
function avatar.InventoryGetPocketsCount() end

---@param slotFrom integer # индекс исходной ячейки в инвентаре [0..GetInventorySize() - 1]
---@param slotTo integer # индекс целевой ячейки в инвентаре [0..GetInventorySize() - 1]
function avatar.InventoryMoveItem( slotFrom, slotTo ) end

---@param slotFrom integer # индекс исходной ячейки в инвентаре [0..GetInventorySize() - 1]
---@param slotTo integer # индекс целевой ячейки в инвентаре [0..GetInventorySize() - 1]
---@param count integer # количество отделяемых предметов в стопке
function avatar.InventorySplitItem( slotFrom, slotTo, count ) end

---@return boolean # false - управление клиентским перемещением аватара блокировано (как, например, при charge)
function avatar.IsAbleToMove() end

---@return boolean # true, если компонентов достаточно
function avatar.IsAlchemyComponentsReady() end

---@param line integer # строка результата (-1, 0, 1)
---@return boolean # true, если строка доступна
function avatar.IsAlchemyLineAvailable( line ) end

---@return boolean # возвращает жив ли аватар (умер или находится в чистилище)
function avatar.IsAlive() end

---@param buffId ObjectId # Id буффа
---@return boolean # true, если в группах баффа есть Disease
function avatar.IsBuffDisease( buffId ) end

---@param buffId ObjectId # Id буффа
---@return boolean # true, если в группах баффа есть Magic
function avatar.IsBuffMagic( buffId ) end

---@param buffId ObjectId # Id буффа
---@return boolean # true, если в группах баффа есть Poison
function avatar.IsBuffPoison( buffId ) end

---@param type CLIENT_DETECTOR
---@return boolean # true - включен / false выключен
function avatar.IsClientDetectorEnabled( type ) end

---@param alias string # строковое название условия
---@return boolean # выполняется ли условие
function avatar.IsConditionValid( alias ) end

---@return boolean # true, если главный игрок уже существует
function avatar.IsExist() end

---@return boolean # true, если игрок в состоянии воскрешения
function avatar.IsInRespawn() end

---@return boolean # true если инспектирование доступно, иначе false
function avatar.IsInspectAllowed() end

---@return boolean # true, если во время разговора мы находимся в начальной реплике
function avatar.IsInteractorRootCue() end

---@return boolean # true, если собеседник является учителем
function avatar.IsInteractorTrainer() end

---@return boolean # true, если собеседник является торговцем
function avatar.IsInteractorVendor() end

---@param slotFrom integer # индекс исходной ячейки в инвентаре [0..GetInventorySize() - 1]
---@param slotTo integer # индекс целевой ячейки в инвентаре [0..GetInventorySize() - 1]
---@return boolean # изменятся ли предметы
function avatar.IsInventoryMoveItemModified( slotFrom, slotTo ) end

---@param slot ObjectId # идентификатор предмета
---@return boolean # предмет готов к действиям
function avatar.IsItemEnabledForActions( slot ) end

---@param itemFromId ObjectId # перемещаемый предмет (должен находиться в одном из контейнеров)
---@param itemToId ObjectId # предмет, находящийся в слоте, куда предполагается переместить предмет itemFromId
---@return boolean # true если указанные предметы при перемещении itemFromId будут объединены (хотя бы частично), иначе false
function avatar.IsItemsStackable( itemFromId, itemToId ) end

---@return boolean # открыта ли сумка с лутом
function avatar.IsLootBagOpen() end

---@param itemId ObjectId # идентификатор предмета
---@return boolean # является ли инструментом для копирования метаитема-улучшителя
function avatar.IsMetaEnhancerDuplicator( itemId ) end

---@return boolean # true, если в данный момент бежим до точки на карте по найденному пути
function avatar.IsNavigateToPoint() end

---@return boolean # true, если получение следующего уровня невозможно
function avatar.IsNextLevelLocked() end

---@return boolean # является ли персонаж пассажиром, к примеру, на двухместном маунте
function avatar.IsPassangerState() end

---@return boolean # true, если активный пет главного игрока находится в состоянии боя
function avatar.IsPetInCombat() end

---@param questId QuestId
---@return boolean # true если автонавигация доступна
function avatar.IsQuestAutoNavigationAllowed( questId ) end

---@param questId QuestId
---@return boolean # true если задание завершено иначе false
function avatar.IsQuestFinished( questId ) end

---@return boolean # true, если игрок может окончательно воскреснуть из чистилища
function avatar.IsReadyForFinallyRespawn() end

---@return boolean # продолжается ли разговор
function avatar.IsTalking() end

---@return boolean # если находиться в радиусе "MeleeRange" - true, иначе - false (в том числе, если юнит не выбран)
function avatar.IsTargetInMeleeRange() end

---@return boolean # true, если текущая цель инспектируется
function avatar.IsTargetInspected() end

---@param locationId ObjectId | TeleportMasterId | table # идентификатор точки телепорта
---@return boolean # true, если locationId валидный
function avatar.IsTeleportLocationValid( locationId ) end

---@return boolean # находится ли персонаж игрока в режиме ходьбы
function avatar.IsWalkMode() end

---@param boxId ObjectId # item id сундучка, сундучок должен находиться в одном из контейнеров (например в инвентаре или переполненной сумке)
---@param quantity? integer # необязательный параметр, количество открываемых сундуков; по умолчанию 1
function avatar.OpenBox( boxId, quantity ) end

function avatar.PetAttack() end

---@param itemId nil | ObjectId # идентификатор ингридиента (предмета из инвентаря). nil - очистить слот
---@param slot integer # номер барабана (слота)
function avatar.PutAlchemyItemToSlot( itemId, slot ) end

function avatar.RequestInteractions() end

---@param itemId ObjectId # id предмета; предмет должен находиться в слоте какого-либо контейнера (сумка, переполненная сумка, банковская ячейка)
function avatar.RequestQuestsForItem( itemId ) end

function avatar.RequestVendor() end

function avatar.Respawn() end

---@param accept boolean # true, если главный игрок согласен на оживление. Иначе false.
function avatar.ResurrectReply( accept ) end

---@param questId QuestId # идентификатор квеста
---@param rewardId ObjectId # идентификатор награды
function avatar.ReturnQuest( questId, rewardId ) end

function avatar.ReturnToStartCue() end

---@param spellId SpellId
---@param position GamePosition
function avatar.RunAESpell( spellId, position ) end

---@param spellId SpellId
function avatar.RunSpell( spellId ) end

---@param index integer # индекс действия
function avatar.RunUsableDeviceAction( index ) end

---@param index integer # индекс действия
---@param pos GamePosition # точка применения действия
function avatar.RunUsableDeviceActionPoint( index, pos ) end

---@param index integer # индекс ответа
function avatar.SelectInteractorCue( index ) end

---@param unitId ObjectId # идентификатор юнита
function avatar.SelectTarget( unitId ) end

---@param index integer # номер специализации аватара; доступный диапазон - от 0 до величины, на 1 меньшей результата avatar.GetBuildsCount()
function avatar.SetActiveBuild( index ) end

---@param changeList table # список ObjectId предметов (вещей и самоцветов), выбранных на замену имеющимся у аватара и не совместимых с новым классом
--- TODO: change type
function avatar.SetClassChangerInfo( changeList ) end

---@param questId nil | QuestId # id квеста, задаваемого как текущий; если nil, то никакой квест не будет текущим
function avatar.SetCurrentQuest( questId ) end

---@param questId nil | QuestId # id квеста, задаваемого как текущий; если nil, то никакой квест не будет текущим
function avatar.SetCurrentQuest( questId ) end

---@param message WString # фраза
function avatar.SetFatalityPhrase( message ) end

---@param isFollow boolean # если true - включить режим следования, если false - выключить
function avatar.SetFollowTarget(isFollow) end

---@param index integer # индекс заклинания
function avatar.SetPetActiveSpell( index ) end

---@param mode PET_AGGRO
function avatar.SetPetAggroMode( mode ) end

---@param index integer # номер специализации аватара; доступный диапазон - от 0 до величины, на 1 меньшей результата avatar.GetBuildsCount()
function avatar.SetViewedBuild( index ) end

---@param walk boolean # задать режим ходьбы или бега
function avatar.SetWalkMode( walk ) end

---@param questId QuestId
function avatar.ShareQuest( questId ) end

function avatar.SheathNext() end

---@param show boolean # true, если начали показывать диалог
function avatar.ShowMetaUpgradeDialog( show ) end

---@param unitId ObjectId # идентификатор игрока
function avatar.StartInspect( unitId ) end

---@param unitId ObjectId # идентификатор юнита
function avatar.StartInteract( unitId ) end

function avatar.StopCasting() end

function avatar.StopInteract() end

function avatar.StopMoveToPoint() end

---@param layer integer # номер строки
---@param line integer # номер столбца
function avatar.StoreBaseTalent( layer, line ) end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
function avatar.StoreFieldTalent( field, row, column ) end

--- TODO: unkown type
function avatar.SwapActionsInActionPanel( slot1, slot2 ) end

---@param isOn boolean # true, если надо включить PvP флаг
function avatar.SwitchPvPFlag( isOn ) end

---@param channelIndex integer # индекс выбранного канала
function avatar.SwitchToChannel( channelIndex ) end

function avatar.TargetSelf() end

---@param accept boolean # true, если игрок согласен на телепортацию
function avatar.TeleportOfferReply( accept ) end

---@param locationId ObjectId # идентификатор точки телепортации
function avatar.TeleportToLocation( locationId ) end

---@param index integer # индекс слота от 0 до max
function avatar.UnBindFromActionPanel( index ) end

---@param itemId ObjectId # идентификатор предмета
function avatar.UnequipItem( itemId ) end

---@param itemId ObjectId # идентификатор предмета
---@param inventorySlot integer # индекс ячейки в инвентаре [0..GetInventorySize() - 1]
function avatar.UnequipItemToSlot( itemId, inventorySlot ) end

function avatar.UnselectTarget() end

---@param sourceId ObjectId # идентификатор улучшаемого предмета
---@param enhancerId ObjectId # идентификатор предмета-улучшителя
---@param agentId ObjectId # идентификатор предмета-агента, требуемого для улучшения
---@param agentCount integer # количество используемых агентов
function avatar.UpgradeMetaItem( sourceId, enhancerId, agentId, agentCount ) end

function avatar.UseHearthStone() end

---@param locationId ObjectId # идентификатор точки телепортации
function avatar.UseHearthStoneToLocation( locationId ) end

---@param itemId ObjectId # идентификатор предмета
function avatar.UseItem( itemId ) end

---@param itemId ObjectId # идентификатор предмета (должен иметь парт UseItemAndTakeActions - проверяется itemLib.IsUseItemAndTakeActions( itemId ))
---@param count? number # количество используемых предметов из стека (по умолчанию - 1)
---@param useAction? number # индекс (sysIndex) выбранного Usage (по умолчанию - -1)
function avatar.UseItemAndTakeActions( itemId, count, useAction ) end

---@param sourceItemId ObjectId # идентификатор предмета, который применяется на другой итем (должен иметь парт UseOnItemAndTakeActions - проверяется itemLib.IsUseOnItemAndTakeActions( itemId ))
---@param targetItemId ObjectId # идентификатор предмета, на который отправляется запрос на действие и на котором будут проверяться предикаты
---@param count? number # количество используемых предметов из стека waitingItemId (по умолчанию - 1)
---@param useAction? number # индекс (sysIndex) выбранного Usage (по умолчанию - -1)
function avatar.UseItemOnItemAndTakeActions( sourceItemId, targetItemId, count, useAction ) end

---@param itemId ObjectId # идентификатор предмета, который применяется на маунта
---@param mountId ObjectId # идентификатор маунта, на который будет применятся предмет
---@param useAction? number # индекс (sysIndex) выбранного Usage (по умолчанию - -1)
function avatar.UseItemOnMountAndTakeActions( itemId, mountId, useAction ) end

---@param itemId ObjectId # идентификатор предмета
---@param position GamePosition # таблица GamePosition, точка на ландшафте
function avatar.UseItemOnPoint( itemId, position ) end

---@param agentId ObjectId # идентификатор улучшаемого предмета
function avatar.CanPlaceMetaUpgradeAgent( agentId ) end

---@param sourceId ObjectId | nil # идентификатор улучшаемого предмета, если требуется
---@param enhancerId ObjectId # идентификатор предмета-улучшителя
function avatar.CanPlaceMetaUpgradeEnhancer( sourceId, enhancerId ) end

---@param sourceId ObjectId # идентификатор улучшаемого предмета
function avatar.CanPlaceMetaUpgradeSource( sourceId ) end

function guild.ApplyStoredTalents() end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer #номер столбца
---@return { result: boolean, talents: nil | table<integer, { field: integer, row: integer, column: integer }> } 
function guild.CanDropTalent( field, row, column ) end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
---@param talentType nil | ENUM_TalentType # тип таланата, по-умолчанию ENUM_TalentType_GUILD
---@return nil | { result: boolean, requirements: nil | { nearFieldClosed: boolean, talentsPoint: integer, talentsPointRequired: integer, experience: integer, experienceRequired: integer, requiredCurrency: nil | CurrencyId } }
function guild.CanLearnTalent( field, row, column, talentType ) end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
---@return boolean # можно ли проапдейтить (или выучить) талант гильдии
function guild.CanUpdateTalent( field, row, column ) end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
---@overload fun () # если нужно сбросить все вехи на изучение
function guild.ClearStoredTalents( field, row, column ) end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
function guild.DropTalent( field, row, column ) end

---@return { fieldsCount: integer, rowsCount: integer, columnsCount: integer, learnTalentCurrency: CurrencyId | nil, dropTalentCurrency: CurrencyId | nil }
function guild.GetCommonTalentsInfo() end

---@return integer # цена
function guild.GetDropTalentCost() end

---@param field integer # номер поля
---@return nil | { name: WString, image: UISingleTexture | nil, description: WString | nil, startRow: integer, startColumn: integer }
function guild.GetFieldInfo( field ) end

---@return integer # количество вех
function guild.GetStoredTalentsCount() end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
---@return nil | { field: integer, row: integer, column: integer, canUpdate: boolean, isStart: boolean, isStored: boolean, isLocked: boolean, isEmpty: boolean, isLearned: boolean, groupName: nil | string, groupQuality: integer, abilityId: nil | GuildAbilityId }
function guild.GetTalentInfo( field, row, column ) end

---@param groupName string # имя группы
---@return nil | { field: integer, row: integer, column: integer }
function guild.GetTalentsByGroup( groupName ) end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
---@return boolean # выбран ли талант
function guild.IsStoredTalent( field, row, column ) end

---@param field integer # номер поля
---@param row integer # номер строки
---@param column integer # номер столбца
function guild.StoreTalent( field, row, column ) end