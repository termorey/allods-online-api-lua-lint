---@meta

---@class guild
guild = {}

---@class guildBossLib
guildBossLib = {}

---@class guildHallLib
guildHallLib = {}

--[[ ENUMS --]]

---@alias ENUM_AvatarOnlineStatus
---| "ENUM_AvatarOnlineStatus_Offline"
---| "ENUM_AvatarOnlineStatus_Online" - аватар в игре
---| "ENUM_AvatarOnlineStatus_OnAlt" - в игре другое перерождение этого аватара
---| "ENUM_AvatarOnlineStatus_Shadow" - не в игре, но в чате (например с мобильника)

---@alias ENUM_BattleMemberRole
---| "ENUM_BattleMemberRole_Attacker" - нападающий
---| "ENUM_BattleMemberRole_Defender" - защитник

---@alias ENUM_GuildBossAbilitySlot
---| "ENUM_GuildBossAbilitySlot_CommonPassive"
---| "ENUM_GuildBossAbilitySlot_CommonActive"
---| "ENUM_GuildBossAbilitySlot_RarePassive"
---| "ENUM_GuildBossAbilitySlot_RareActive"
---| "ENUM_GuildBossAbilitySlot_LegendaryPassive"
---| "ENUM_GuildBossAbilitySlot_LegendaryActive"

---@alias GUILD_MEMBER_RIGHT_CHAT unknown
---@alias GUILD_MEMBER_RIGHT_OFFICER_CHAT unknown
---@alias GUILD_MEMBER_RIGHT_RECRUIT unknown
---@alias GUILD_MEMBER_RIGHT_PROMOTE_DEMOTE unknown
---@alias GUILD_MEMBER_RIGHT_KICK unknown
---@alias GUILD_MEMBER_RIGHT_WEAR_SYMBOLICS unknown
---@alias GUILD_MEMBER_RIGHT_MODIFY_SYMBOLICS unknown
---@alias GUILD_MEMBER_RIGHT_MODIFY_MESSAGE unknown
---@alias GUILD_MEMBER_RIGHT_MODIFY_DESCRIPTION unknowns
---@alias GUILD_MEMBER_RIGHT_MODIFY_MEMBER_DESCRIPTION unknown
---@alias GUILD_MEMBER_RIGHT_PUT_MONEY unknown
---@alias GUILD_MEMBER_RIGHT_GET_MONEY unknown
---@alias GUILD_MEMBER_RIGHT_DUE unknown
---@alias GUILD_MEMBER_RIGHT_MWAR_COMMANDER unknown
---@alias GUILD_MEMBER_RIGHT_APPLY_TALENTS unknown
---@alias GUILD_MEMBER_RIGHT_FORGET_TALENTS unknown
---@alias GUILD_MEMBER_RIGHT_DISTRIBUTE_TABARDS unknown
---@alias GUILD_MEMBER_RIGHT_CREATE_GUILD_HALL unknown
---@alias GUILD_MEMBER_RIGHT GUILD_MEMBER_RIGHT_CHAT | GUILD_MEMBER_RIGHT_OFFICER_CHAT | GUILD_MEMBER_RIGHT_RECRUIT | GUILD_MEMBER_RIGHT_PROMOTE_DEMOTE | GUILD_MEMBER_RIGHT_KICK | GUILD_MEMBER_RIGHT_WEAR_SYMBOLICS | GUILD_MEMBER_RIGHT_MODIFY_SYMBOLICS | GUILD_MEMBER_RIGHT_MODIFY_MESSAGE | GUILD_MEMBER_RIGHT_MODIFY_DESCRIPTION | GUILD_MEMBER_RIGHT_MODIFY_MEMBER_DESCRIPTION | GUILD_MEMBER_RIGHT_PUT_MONEY | GUILD_MEMBER_RIGHT_GET_MONEY | GUILD_MEMBER_RIGHT_DUE | GUILD_MEMBER_RIGHT_MWAR_COMMANDER | GUILD_MEMBER_RIGHT_APPLY_TALENTS | GUILD_MEMBER_RIGHT_FORGET_TALENTS | GUILD_MEMBER_RIGHT_DISTRIBUTE_TABARDS | GUILD_MEMBER_RIGHT_CREATE_GUILD_HALL

---@alias ENUM_GUILD_RESULT
---| "ENUM_GUILD_RESULT_NOT_ENOUGH_RIGHTS"
---| "ENUM_GUILD_RESULT_CANT_CREATE_WRONG_GROUP_SIZE"
---| "ENUM_GUILD_RESULT_CANT_CREATE_GROUP_MEMBER_TOO_FAR"
---| "ENUM_GUILD_RESULT_CANT_CREATE_NO_GROUP"
---| "ENUM_GUILD_RESULT_CANT_CREATE_NOT_GROUP_LEADER"
---| "ENUM_GUILD_RESULT_CANT_CREATE_PLAYER_ALREADY_IN_GUILD"
---| "ENUM_GUILD_RESULT_PLAYER_IS_NOT_IN_GUILD"
---| "ENUM_GUILD_RESULT_PLAYER_ALREADY_IN_GUILD"
---| "ENUM_GUILD_RESULT_CANT_OPERATE_WITH_THIS_RANK"
---| "ENUM_GUILD_RESULT_LEADER_CANT_LEAVE"
---| "ENUM_GUILD_RESULT_ALREADY_FULL"
---| "ENUM_GUILD_RESULT_NO_GUILD"
---| "ENUM_GUILD_RESULT_BANK_NOT_EMPTY"

---@alias GUILD_SIMBOLICS_TEXTURE_TYPE_PATTERN unknown - Field, гербовое поле (заливка гербового поля)
---@alias GUILD_SIMBOLICS_TEXTURE_TYPE_EMBLEM1 unknown - Fringe, оторочка (обрамление герба по краям)
---@alias GUILD_SIMBOLICS_TEXTURE_TYPE_EMBLEM2 unknown - CrestBase, основа (под фигуркой)
---@alias GUILD_SIMBOLICS_TEXTURE_TYPE_EMBLEM3 unknown - CrestFill, наполнение (между основой и фигуркой)
---@alias GUILD_SIMBOLICS_TEXTURE_TYPE_EMBLEM4 unknown - CrestFigure, фигурка (самый верхний элемент)
---@alias GUILD_SIMBOLICS_TEXTURE_TYPE GUILD_SIMBOLICS_TEXTURE_TYPE_PATTERN | GUILD_SIMBOLICS_TEXTURE_TYPE_EMBLEM1 | GUILD_SIMBOLICS_TEXTURE_TYPE_EMBLEM2 | GUILD_SIMBOLICS_TEXTURE_TYPE_EMBLEM3 | GUILD_SIMBOLICS_TEXTURE_TYPE_EMBLEM4

---@alias ENUM_GuildBankOperation
---| "ENUM_GuildBankOperation_RaiseFunds"
---| "ENUM_GuildBankOperation_TransferMoney"
---| "ENUM_GuildBankOperation_GetHistory"

---@alias ENUM_InvalidNameKind
---| "ENUM_InvalidNameKind_AlreadyInUse"
---| "ENUM_InvalidNameKind_InternalError"
---| "ENUM_InvalidNameKind_InvalidLength"
---| "ENUM_InvalidNameKind_InvalidSubstring"
---| "ENUM_InvalidNameKind_InvalidSymbols"
---| "ENUM_InvalidNameKind_None"

---@alias ENUM_TabardType_None unknown | "ENUM_TabardType_None"
---@alias ENUM_TabardType_Common unknown | "ENUM_TabardType_Common"
---@alias ENUM_TabardType_Champion unknown | "ENUM_TabardType_Champion"
---@alias ENUM_TabardType_BannerTier1 unknown | "ENUM_TabardType_BannerTier1"
---@alias ENUM_TabardType_BannerTier2 unknown | "ENUM_TabardType_BannerTier2"
---@alias ENUM_TabardType_BannerTier3 unknown | "ENUM_TabardType_BannerTier3"
---@alias ENUM_TabardType ENUM_TabardType_None | ENUM_TabardType_Common | ENUM_TabardType_Champion | ENUM_TabardType_BannerTier1 | ENUM_TabardType_BannerTier2 | ENUM_TabardType_BannerTier3

---@alias ENUM_GuildHistoryOrder_OPERATIONTIME string -- по времени
---@alias ENUM_GuildHistoryOrder_OPERATIONTYPE string -- по типу операции
---@alias ENUM_GuildHistoryOrder_AFFECTEDMONEY string -- по сумме денег
---@alias ENUM_GuildHistoryOrder_AVATARNAME string -- по имени игрока
---@alias ENUM_GuildHistoryOrder ENUM_GuildHistoryOrder_OPERATIONTIME | ENUM_GuildHistoryOrder_OPERATIONTYPE | ENUM_GuildHistoryOrder_AFFECTEDMONEY | ENUM_GuildHistoryOrder_AVATARNAME

---@alias ENUM_GuildItemsHistoryOrder_TIME string -- по времени
---@alias ENUM_GuildItemsHistoryOrder_VENDOR string -- по продавцу
---@alias ENUM_GuildItemsHistoryOrder_AVATAR string -- по покупателю
---@alias ENUM_GuildItemsHistoryOrder ENUM_GuildItemsHistoryOrder_TIME | ENUM_GuildItemsHistoryOrder_VENDOR | ENUM_GuildItemsHistoryOrder_AVATAR

---@alias ENUM_TransferMoneyOperationDirection_Avatar2GuildBank unknown | "ENUM_TransferMoneyOperationDirection_Avatar2GuildBank"
---@alias ENUM_TransferMoneyOperationDirection_GuildBank2Avatar unknown | "ENUM_TransferMoneyOperationDirection_GuildBank2Avatar"
---@alias ENUM_TransferMoneyOperationDirection ENUM_TransferMoneyOperationDirection_Avatar2GuildBank | ENUM_TransferMoneyOperationDirection_GuildBank2Avatar

--[[ EVENTS --]]

---@alias EVENT_CAN_CREATE_GUILD_HERE_RESPONSE "EVENT_CAN_CREATE_GUILD_HERE_RESPONSE"
---@alias EVENT_DISBAND_GUILD_REQUEST "EVENT_DISBAND_GUILD_REQUEST"
---@alias EVENT_GUILD_ACCEPTED "EVENT_GUILD_ACCEPTED"
---@alias EVENT_GUILD_ALLOD_ATTACK_FAILED "EVENT_GUILD_ALLOD_ATTACK_FAILED"
---@alias EVENT_GUILD_ALLOD_ATTACK_SUCCESSFUL "EVENT_GUILD_ALLOD_ATTACK_SUCCESSFUL"
---@alias EVENT_GUILD_ALLOD_OWNER_CHANGED "EVENT_GUILD_ALLOD_OWNER_CHANGED"
---@alias EVENT_GUILD_ALREADY_IN_GUILD "EVENT_GUILD_ALREADY_IN_GUILD"
---@alias EVENT_GUILD_APPEARED "EVENT_GUILD_APPEARED"
---@alias EVENT_GUILD_AUTHORITY_CHANGED "EVENT_GUILD_AUTHORITY_CHANGED"
---@alias EVENT_GUILD_BANK_HISTORY_CHANGED "EVENT_GUILD_BANK_HISTORY_CHANGED"
---@alias EVENT_GUILD_BANK_MINIMUM_TRANSACTION_CHANGED "EVENT_GUILD_BANK_MINIMUM_TRANSACTION_CHANGED"
---@alias EVENT_GUILD_BANK_MONEY_CHANGED "EVENT_GUILD_BANK_MONEY_CHANGED"
---@alias EVENT_GUILD_BANK_OPERATION_RESULT "EVENT_GUILD_BANK_OPERATION_RESULT"
---@alias EVENT_GUILD_BOSS_ABILITIES_CHANGED "EVENT_GUILD_BOSS_ABILITIES_CHANGED"
---@alias EVENT_GUILD_BOSS_CHANGED "EVENT_GUILD_BOSS_CHANGED"
---@alias EVENT_GUILD_BOSS_EXPERIENCE_CHANGED "EVENT_GUILD_BOSS_EXPERIENCE_CHANGED"
---@alias EVENT_GUILD_BOSS_GEAR_SCORE_CHANGED "EVENT_GUILD_BOSS_GEAR_SCORE_CHANGED"
---@alias EVENT_GUILD_BOSS_QUESTS_CHANGED "EVENT_GUILD_BOSS_QUESTS_CHANGED"
---@alias EVENT_GUILD_BOSS_QUESTS_STATUS_CHANGED "EVENT_GUILD_BOSS_QUESTS_STATUS_CHANGED"
---@alias EVENT_GUILD_BOSS_SPELLS_CHANGED "EVENT_GUILD_BOSS_SPELLS_CHANGED"
---@alias EVENT_GUILD_BOSS_STATE_CHANGED "EVENT_GUILD_BOSS_STATE_CHANGED"
---@alias EVENT_GUILD_BUFFS_CHANGED "EVENT_GUILD_BUFFS_CHANGED"
---@alias EVENT_GUILD_CANT_ACCEPT "EVENT_GUILD_CANT_ACCEPT"
---@alias EVENT_GUILD_CREATED "EVENT_GUILD_CREATED"
---@alias EVENT_GUILD_CURRENCIES_CHANGED "EVENT_GUILD_CURRENCIES_CHANGED"
---@alias EVENT_GUILD_DECLINE "EVENT_GUILD_DECLINE"
---@alias EVENT_GUILD_DECLINE_BUSY "EVENT_GUILD_DECLINE_BUSY"
---@alias EVENT_GUILD_DECLINE_IGNORED "EVENT_GUILD_DECLINE_IGNORED"
---@alias EVENT_GUILD_DESCRIPTION_CHANGED "EVENT_GUILD_DESCRIPTION_CHANGED"
---@alias EVENT_GUILD_DISAPPEARED "EVENT_GUILD_DISAPPEARED"
---@alias EVENT_GUILD_ENABLE_PROGRESS_REQUEST "EVENT_GUILD_ENABLE_PROGRESS_REQUEST"
---@alias EVENT_GUILD_FAILED "EVENT_GUILD_FAILED"
---@alias EVENT_GUILD_HALL_EXPERIENCE_CHANGED "EVENT_GUILD_HALL_EXPERIENCE_CHANGED"
---@alias EVENT_GUILD_HALL_EXPERIENCE_DAILY_CHANGED "EVENT_GUILD_HALL_EXPERIENCE_DAILY_CHANGED"
---@alias EVENT_GUILD_HALL_QUESTS_CHANGED "EVENT_GUILD_HALL_QUESTS_CHANGED"
---@alias EVENT_GUILD_HALL_QUESTS_STATUS_CHANGED "EVENT_GUILD_HALL_QUESTS_STATUS_CHANGED"
---@alias EVENT_GUILD_HALL_STATE_CHANGED "EVENT_GUILD_HALL_STATE_CHANGED"
---@alias EVENT_GUILD_INVITE "EVENT_GUILD_INVITE"
---@alias EVENT_GUILD_ITEMS_HISTORY_CHANGED "EVENT_GUILD_ITEMS_HISTORY_CHANGED"
---@alias EVENT_GUILD_ITEMS_OPERATION_RESULT "EVENT_GUILD_ITEMS_OPERATION_RESULT"
---@alias EVENT_GUILD_LEADER_CHANGED "EVENT_GUILD_LEADER_CHANGED"
---@alias EVENT_GUILD_LEVEL_CHANGED "EVENT_GUILD_LEVEL_CHANGED"
---@alias EVENT_GUILD_LIST_CHANGED "EVENT_GUILD_LIST_CHANGED"
---@alias EVENT_GUILD_MEMBER_ADDED "EVENT_GUILD_MEMBER_ADDED"
---@alias EVENT_GUILD_MEMBER_AUTHORITY_CHANGED "EVENT_GUILD_MEMBER_AUTHORITY_CHANGED"
---@alias EVENT_GUILD_MEMBER_BALANCE_CHANGED "EVENT_GUILD_MEMBER_BALANCE_CHANGED"
---@alias EVENT_GUILD_MEMBER_CHANGED "EVENT_GUILD_MEMBER_CHANGED"
---@alias EVENT_GUILD_MEMBER_DAY_AUTHORITY_CHANGED "EVENT_GUILD_MEMBER_DAY_AUTHORITY_CHANGED"
---@alias EVENT_GUILD_MEMBER_KICKED "EVENT_GUILD_MEMBER_KICKED"
---@alias EVENT_GUILD_MEMBER_LOYALTY_CHANGED "EVENT_GUILD_MEMBER_LOYALTY_CHANGED"
---@alias EVENT_GUILD_MEMBER_MONTH_AUTHORITY_CHANGED "EVENT_GUILD_MEMBER_MONTH_AUTHORITY_CHANGED"
---@alias EVENT_GUILD_MEMBER_ONLINE_STATUS_CHANGED "EVENT_GUILD_MEMBER_ONLINE_STATUS_CHANGED"
---@alias EVENT_GUILD_MEMBER_RANK_CHANGED "EVENT_GUILD_MEMBER_RANK_CHANGED"
---@alias EVENT_GUILD_MEMBER_REMOVED "EVENT_GUILD_MEMBER_REMOVED"
---@alias EVENT_GUILD_MEMBER_SYMBOLICS "EVENT_GUILD_MEMBER_SYMBOLICS"
---@alias EVENT_GUILD_MEMBER_TABARD_CHANGED "EVENT_GUILD_MEMBER_TABARD_CHANGED"
---@alias EVENT_GUILD_MEMBER_WEEK_AUTHORITY_CHANGED "EVENT_GUILD_MEMBER_WEEK_AUTHORITY_CHANGED"
---@alias EVENT_GUILD_MESSAGE_CHANGED "EVENT_GUILD_MESSAGE_CHANGED"
---@alias EVENT_GUILD_MONTH_AUTHORITY_CHANGED "EVENT_GUILD_MONTH_AUTHORITY_CHANGED"
---@alias EVENT_GUILD_NAME_CHANGED "EVENT_GUILD_NAME_CHANGED"
---@alias EVENT_GUILD_NAME_NOT_AVAILABLE "EVENT_GUILD_NAME_NOT_AVAILABLE"
---@alias EVENT_GUILD_NEED_RENAME_CHANGED "EVENT_GUILD_NEED_RENAME_CHANGED"
---@alias EVENT_GUILD_SEASON_AUTHORITY_BONUS_POOL_CHANGED "EVENT_GUILD_SEASON_AUTHORITY_BONUS_POOL_CHANGED"
---@alias EVENT_GUILD_SEASON_AUTHORITY_CHANGED "EVENT_GUILD_SEASON_AUTHORITY_CHANGED"
---@alias EVENT_GUILD_SEASON_LEVEL_CHANGED "EVENT_GUILD_SEASON_LEVEL_CHANGED"
---@alias EVENT_GUILD_SEASON_SECURE_AUTHORITY_CHANGED "EVENT_GUILD_SEASON_SECURE_AUTHORITY_CHANGED"
---@alias EVENT_GUILD_SYMBOLICS_CHANGED "EVENT_GUILD_SYMBOLICS_CHANGED"
---@alias EVENT_GUILD_TABARDS_CHANGED "EVENT_GUILD_TABARDS_CHANGED"
---@alias EVENT_GUILD_TEXTURE_CHANGED "EVENT_GUILD_TEXTURE_CHANGED"
---@alias EVENT_GUILD_UNLOCKED_LEVEL_CHANGED "EVENT_GUILD_UNLOCKED_LEVEL_CHANGED"
---@alias EVENT_UNIT_GUILD_CHANGED "EVENT_UNIT_GUILD_CHANGED"

---@overload fun(eventFunction: fun(data: { success: boolean }), sysEventName: EVENT_CAN_CREATE_GUILD_HERE_RESPONSE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_DISBAND_GUILD_REQUEST)
---@overload fun(eventFunction: fun(data: { invitee: WString, inviter: WString, guild: WString }), sysEventName: EVENT_GUILD_ACCEPTED)
---@overload fun(eventFunction: fun(data: { allodId: ObjectId | nil, allod: WString, attacker: WString, deffender: WString }), sysEventName: EVENT_GUILD_ALLOD_ATTACK_FAILED)
---@overload fun(eventFunction: fun(data: { allodId: ObjectId | nil, allod: WString, attacker: WString, deffender: WString }), sysEventName: EVENT_GUILD_ALLOD_ATTACK_SUCCESSFUL)
---@overload fun(eventFunction: fun(data: { allodId: ObjectId | nil, allod: WString, newOwner: WString, oldOwner: WString }), sysEventName: EVENT_GUILD_ALLOD_OWNER_CHANGED)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_GUILD_ALREADY_IN_GUILD)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_APPEARED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_AUTHORITY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BANK_HISTORY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BANK_MINIMUM_TRANSACTION_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BANK_MONEY_CHANGED)
---@overload fun(eventFunction: fun(data: { success: boolean, sysOperationType: ENUM_GuildBankOperation }), sysEventName: EVENT_GUILD_BANK_OPERATION_RESULT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BOSS_ABILITIES_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BOSS_CHANGED)
---@overload fun(eventFunction: fun(data: { experience: integer }), sysEventName: EVENT_GUILD_BOSS_EXPERIENCE_CHANGED)
---@overload fun(eventFunction: fun(data: { gearScore: integer }), sysEventName: EVENT_GUILD_BOSS_GEAR_SCORE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BOSS_QUESTS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BOSS_QUESTS_STATUS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BOSS_SPELLS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BOSS_STATE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_BUFFS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_CANT_ACCEPT)
---@overload fun(eventFunction: fun(data: { guildName: WString, leaderName: WString }), sysEventName: EVENT_GUILD_CREATED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_CURRENCIES_CHANGED)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_GUILD_DECLINE)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_GUILD_DECLINE_BUSY)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_GUILD_DECLINE_IGNORED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_DESCRIPTION_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_DISAPPEARED)
---@overload fun(eventFunction: fun(data: { timeoutMs: integer }), sysEventName: EVENT_GUILD_ENABLE_PROGRESS_REQUEST)
---@overload fun(eventFunction: fun(data: { sysCause: ENUM_GUILD_RESULT }), sysEventName: EVENT_GUILD_FAILED)
---@overload fun(eventFunction: fun(data: { value: integer }), sysEventName: EVENT_GUILD_HALL_EXPERIENCE_CHANGED)
---@overload fun(eventFunction: fun(data: { value: integer }), sysEventName: EVENT_GUILD_HALL_EXPERIENCE_DAILY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_HALL_QUESTS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_HALL_QUESTS_STATUS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_HALL_STATE_CHANGED)
---@overload fun(eventFunction: fun(data: { inviterName: WString, guildName: WString }), sysEventName: EVENT_GUILD_INVITE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_ITEMS_HISTORY_CHANGED)
---@overload fun(eventFunction: fun(data: { success: boolean }), sysEventName: EVENT_GUILD_ITEMS_OPERATION_RESULT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_LEADER_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_LEVEL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_LIST_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString }), sysEventName: EVENT_GUILD_MEMBER_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, delta: integer }), sysEventName: EVENT_GUILD_MEMBER_AUTHORITY_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_GUILD_MEMBER_BALANCE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString }), sysEventName: EVENT_GUILD_MEMBER_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, delta: integer }), sysEventName: EVENT_GUILD_MEMBER_DAY_AUTHORITY_CHANGED)
---@overload fun(eventFunction: fun(data: { kicked: WString, kicker: WString }), sysEventName: EVENT_GUILD_MEMBER_KICKED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, delta: integer }), sysEventName: EVENT_GUILD_MEMBER_LOYALTY_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, delta: integer }), sysEventName: EVENT_GUILD_MEMBER_MONTH_AUTHORITY_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString }), sysEventName: EVENT_GUILD_MEMBER_ONLINE_STATUS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString }), sysEventName: EVENT_GUILD_MEMBER_RANK_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString }), sysEventName: EVENT_GUILD_MEMBER_REMOVED)
---@overload fun(eventFunction: fun(data: { mount: ObjectId | nil, smile: ObjectId | nil, lifestyle: ObjectId | nil, ability: ObjectId | nil, granted: boolean, member: WString, guild: WString }), sysEventName: EVENT_GUILD_MEMBER_SYMBOLICS)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString }), sysEventName: EVENT_GUILD_MEMBER_TABARD_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, delta: integer }), sysEventName: EVENT_GUILD_MEMBER_WEEK_AUTHORITY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_MESSAGE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_MONTH_AUTHORITY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_NAME_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString, sysNameErrorKind: ENUM_InvalidNameKind, notAllowedSubstring: WString }), sysEventName: EVENT_GUILD_NAME_NOT_AVAILABLE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_NEED_RENAME_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_SEASON_AUTHORITY_BONUS_POOL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_SEASON_AUTHORITY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_SEASON_LEVEL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_SEASON_SECURE_AUTHORITY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_SYMBOLICS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_TABARDS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_TEXTURE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GUILD_UNLOCKED_LEVEL_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_GUILD_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function guild.Accept() end

---@return nil | table<ENUM_GuildBossAbilitySlot, { spells: table<integer, SpellId | nil>, abilities: table<integer, AbilityId | nil> }>
function guildBossLib.GetAbilitiesSlots() end

---@return nil | { experience: integer, gearScore: integer, name: WString | nil, description: WString, currentState: integer | nil, states: nil | table<integer, { experienceLimit: integer, availableAbilitySlots: nil | table<integer, ENUM_GuildBossAbilitySlot> }> }
function guildBossLib.GetInfo() end

---@param questId QuestId
---@return QuestInfo
function guildBossLib.GetQuestInfo( questId ) end

---@param questId QuestId
---@return QuestReward
function guildBossLib.GetQuestReward( questId ) end

---@return nil | table<integer, { questId: QuestId, count: integer, texture: TextureId | nil, requiredItems: nil | table<integer, ItemId> }>
function guildBossLib.GetQuests() end

---@return nil | table<integer, AbilityId>
function guildBossLib.GetSelectedAbilities() end

---@return nil | table<integer, SpellId>
function guildBossLib.GetSelectedSpells() end

---@return nil | WString
function guildBossLib.GetSelfName() end

---@return nil | table<integer, { name: WString | nil, description: WString, preview: TextureId, background: TextureId, spells: table<integer, SpellId>, abilities: table<integer, AbilityId>, previewStates: table<integer, number> }>
function guildBossLib.GetVariations() end

---@return boolean
function guildBossLib.IsExist() end

---@param abilities table<integer, SpellId | AbilityId>
function guildBossLib.SelectAbilities( abilities ) end

---@param inventorySlot integer
function guild.CanCreateGuildHereRequest( inventorySlot ) end

---@param memberId ObjectId
---@return boolean
function guild.CanDistributeTabard( memberId ) end

---@return boolean
function guild.CanRename() end

---@param memberId ObjectId
---@param rank integer
function guild.ChangeRank( memberId, rank ) end

---@param memberId ObjectId
---@param changeSum integer
---@param comment WString
--- TODO: non correct docs title
function guild.CorrectMemberBalance( memberId, changeSum, comment ) end

---@param inventorySlot integer
---@param guildName WString
function guild.Create( inventorySlot, guildName ) end

---@param guildHallName WString
function guild.CreateGuildHall( guildHallName ) end

function guild.Decline() end

---@param memberId ObjectId
---@param tabardType ENUM_TabardType
function guild.DistributeTabard( memberId, tabardType ) end

---@param accept boolean
function guild.EnableProgressReply( accept ) end

---@param guildAbilityId GuildAbilityId
---@return nil | { id: GuildAbilityId, spells: nil | table<integer, SpellId>, name: WString, description: ValuedText | nil, shortDescription: ValuedText | nil, rank: integer, sysInfo: string, texture?: TextureId }
function guild.GetAbilityInfo( guildAbilityId ) end

function guild.GetAvatarHistory() end

---@return nil | ObjectId
function guild.GetAvatarMemberId() end

---@return nil | { realMinimumTransaction: integer, minimumTransaction: integer, maximumTransaction: integer, maximumGuildMoney: integer, operationHistorySize: integer, moneyHistorySize: integer, memberHistorySize: integer, guildHistoryPageSize: integer, guildHistorySize: integer }
function guild.GetBankInfo() end

---@return nil | { hasBoss: boolean, experience: integer, gearScore: integer, name: WString | nil, maxAvailableAbilities: nil | integer, currentState: nil | integer, states: nil | table<integer, { experienceRequired: integer, maxAvailableAbilities: integer }> }
function guild.GetBossInfo() end

---@param Id ObjectId | BuffId
---@return BuffInfo
function guild.GetBuffInfo( Id ) end

---@return table<integer, ObjectId>
function guild.GetBuffs() end

---@return nil | table<integer, LuaFullDateTime>
function guild.GetCreationTime() end

---@return table<integer, CurrencyId>
function guild.GetCurrencies() end

---@return WString
function guild.GetDescription() end

---@return nil | table<ENUM_TabardType, integer | nil>
function guild.GetDistributedTabards() end

---@return nil | { y: integer, m: integer, d: integer }
function guild.GetEnableTime() end

---@param page integer
---@param orderBy ENUM_GuildHistoryOrder
---@param rearOrder boolean
function guild.GetHistory( page, orderBy, rearOrder ) end

---@param page integer
---@param orderBy ENUM_GuildItemsHistoryOrder
---@param rearOrder boolean
function guild.GetItemsHistory( page, orderBy, rearOrder ) end

---@return nil | { operationHistorySize: integer, guildHistoryPageSize: integer, guildHistorySize: integer }
function guild.GetItemsInfo() end

---@return table<integer, { time: LuaFullDateTime, actorMemberId: ObjectId | nil, actorMemberName: WString, itemId: ObjectId | nil, vendorName: WString | nil }>
function guild.GetItemsOperationHistory() end

---@return ObjectId | nil
function guild.GetLeader() end

---@return { guildMembersLimit: integer, guildMessageLimit: integer, guildMemberDescriptionLimit: integer, maxGuildLoyalty: integer, minGuildLoyalty: integer, maxGuildLevel: integer, tabardDistributionDelayMs: integer, tabardDistributionDelay: { d: integer, h: integer, m: integer, s: integer } }
function guild.GetLimits() end

---@param playerName WString
---@return nil | ObjectId
function guild.GetMember( playerName ) end

---@param memberId ObjectId
---@return integer
function guild.GetMemberBalance( memberId ) end

---@param memberId ObjectId
---@return WString
function guild.GetMemberDescription( memberId ) end

---@param memberId ObjectId
---@return nil | { id: ObjectId, playerId: ObjectId, name: WString, level: integer, onlineStatus: ENUM_AvatarOnlineStatus, authority: integer, monthAuthority: integer, weekAuthority: integer, dayAuthority: integer, fame: integer, monthFame: integer, weekFame: integer, dayFame: integer, loyalty: integer, description: WString, zoneName: WString, subZoneName: WString, class: WString, sysClassName: string, tabardType: ENUM_TabardType, joinTime: table, lastOnlineTime: table, profit: nil | table<CurrencyId, { totalProfit: integer, profitForPeriod: integer }> }
function guild.GetMemberInfo( memberId ) end

---@return table<integer, ObjectId>
function guild.GetMembers() end

---@return WString
function guild.GetMessage() end

---@return nil | table<integer, { currency: CurrencyId, softCap: integer, name: WString, description: WString, image: TextureId, reward: QuestReward }>
function guild.GetMissions() end

---@return integer
function guild.GetMoney() end

---@return nil | table<integer, { id: ObjectId, ranks: table<integer, integer> }>
function guild.GetMounts() end

---@return WString
function guild.GetName() end

---@return table<integer, { balanceChange: integer, comment: WString, operationType: ENUM_MoneyChangeReason, sysOperationType: ENUM_MoneyChangeReason, time: LuaFullDateTime, actorMemberId: ObjectId | nil, actorMemberName: WString | nil, members: table<integer, { id: ObjectId | nil, name: WString | nil }>, ranks: table<integer, integer>, tabards: table<integer, ENUM_TabardType> }>
function guild.GetOperationHistory() end

---@return nil | table<integer, CurrencyId>
function guild.GetProfitableCurrencies() end

---@return nil | { authority: integer, monthAuthority: integer, maxAuthority: integer, minAuthority: integer, unlockedLevel: integer, level: integer, nextLevelPrice: integer }
function guild.GetProgress() end

---@param memberId ObjectId
---@return integer
function guild.GetRank( memberId ) end

---@param rank integer
---@return nil | { rank: integer, sysName: string, name: WString, description: WString }
function guild.GetRankInfo( rank ) end

---@return integer
function guild.GetRanksCount() end

---@return number | nil
function guild.GetRewardFactor() end

---@return nil | table<integer, { level: integer, amount: integer, name: WString, description: WString, image?: TextureId }>
function guild.GetRewards() end

---@param memberId ObjectId
---@return table<integer, GUILD_MEMBER_RIGHT>
function guild.GetRights( memberId ) end

---@return nil | { championTabard: ItemId, tabard: ItemId, banners: nil | table<integer, { previewItem: nil | ItemId }> }
function guild.GetRootInfo() end

---@return nil | { bonusPool: integer, authority: integer, secureAuthority: integer, maxAuthority: integer, minAuthority: integer, unlockedLevel: integer, level: integer }
function guild.GetSeasonProgress() end

---@param unitId ObjectId | nil
---@return { alchemyDurationPercent: integer, characteristicBonus: number, characteristicPercent: number, reputationBonus: number, reputationPercent: number }
function guild.GetTabardBonus( unitId ) end

---@return nil | table<ENUM_TabardType, integer | nil>
function guild.GetTabards() end

---@return nil | TextureId
function guild.GetTexture() end

---@return { result: boolean, reason: RequirementsTable }
--- TODO: need to check reason type
function guildHallLib.CanCreate() end

---@param hallName WString
---@param bossName WString
---@param bossIndex integer
function guildHallLib.Create( hallName, bossName, bossIndex ) end

---@return nil | { description: WString, requiredExp: integer, prevRequiredExp: integer }
function guildHallLib.GetCurrentStateInfo() end

---@return integer
function guildHallLib.GetExperience() end

---@return integer
function guildHallLib.GetExperienceDaily() end

---@return WString
function guildHallLib.GetName() end

---@param questId QuestId
---@return QuestInfo
function guildHallLib.GetQuestInfo( questId ) end

---@param questId QuestId
---@return QuestReward
function guildHallLib.GetQuestReward( questId ) end

---@return nil | table<integer, { questId: QuestId, count: integer, texture: TextureId | nil, requiredItems: nil | table<integer, ItemId> }>
function guildHallLib.GetQuests() end

---@return nil | table<integer, { description: WString, requiredExp: integer }>
function guildHallLib.GetStatesInfo() end

---@return nil | SpellId
function guildHallLib.GetTeleportSpell() end

---@return boolean
function guildHallLib.IsExist() end

---@param unitId ObjectId
--- TODO: dosc title - non args
function guild.Invite( unitId ) end

---@param playerName WString
function guild.InviteByName( playerName ) end

---@return boolean
function guild.IsExist() end

---@param memberId ObjectId
---@return boolean
function guild.IsLeader( memberId ) end

---@return boolean
function guild.IsNeedRename() end

---@param sum integer
---@param comment WString
---@param ranks table<integer, integer>
---@param tabards table<integer, ENUM_TabardType>
function guild.RaiseFunds( sum, comment, ranks, tabards ) end

---@param name WString
function guild.Rename( name ) end

---@param description  WString
function guild.SetDescription( description ) end

---@param memberId ObjectId
---@param description WString
function guild.SetMemberDescription( memberId, description ) end

---@param message WString
function guild.SetMessage( message ) end

---@param minimumTransaction integer
function guild.SetMinimumTransaction( minimumTransaction ) end

---@param sum integer
---@param changeReason ENUM_MoneyChangeReason
---@param direction ENUM_TransferMoneyOperationDirection
---@param comment WString
--- TODO: non correct docs title args
function guild.TransferMoney( sum, changeReason, direction, comment ) end