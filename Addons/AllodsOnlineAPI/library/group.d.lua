---@meta

---@class group
group = {}

--[[ ENUMS --]]

---@alias ENUM_GROUP_INVITE_FAILED
---| "ENUM_GROUP_INVITE_FAILED_NOT_EXIST" # игрока с заданным именем не существует
---| "ENUM_GROUP_INVITE_FAILED_NOT_LOGGED_IN" # игрока с заданным именем нет в игре
---| "ENUM_GROUP_INVITE_FAILED_CANT_INVITE_SELF" # нельзя приглашать себя
---| "ENUM_GROUP_INVITE_FAILED_FULL_GROUP" # нельзя приглашать игроков в полную группу
---| "ENUM_GROUP_INVITE_FAILED_ALREADY_IN" # указанный игрок уже состоит в группе
---| "ENUM_GROUP_INVITE_FAILED_ZONE_NOT_ALLOWED" # запрещено приглашение на этой зоне
---| "ENUM_GROUP_INVITE_FAILED_NOT_LEADER" # главный игрок состоит в группе и не лидер. Он не может приглашать в группу

---@alias ENUM_GROUP_KICK_FAILED
---| "ENUM_GROUP_KICK_FAILED_NOT_IN_GROUP" # главный игрок не состоит в группе
---| "ENUM_GROUP_KICK_FAILED_OTHER_PLAYER_NOT_IN_GROUP" # указанный игрок не состоит в группе главного игрока
---| "ENUM_GROUP_KICK_FAILED_NOT_LEADER" # главный игрок не является лидером группы

---@alias GROUP_MEMBER_STATE_OFFLINE unknown # игрок не находится в игре
---@alias GROUP_MEMBER_STATE_NEAR unknown # по игроку доступна вся информация
---@alias GROUP_MEMBER_STATE_FAR unknown # игрок в игре, но информация по нему недоступна либо доступна только частично
---@alias GROUP_MEMBER_STATE_MERC unknown # это не игрок, а NPC-наемник
---@alias GROUP_MEMBER_STATE_AFK unknown # игрок в статусе AFK
---@alias GROUP_MEMBER_STATE GROUP_MEMBER_STATE_OFFLINE | GROUP_MEMBER_STATE_NEAR | GROUP_MEMBER_STATE_FAR | GROUP_MEMBER_STATE_MERC | GROUP_MEMBER_STATE_AFK

---@alias READY_CHECK_READY_STATE_UNKNOWN unknown
---@alias READY_CHECK_READY_STATE_READY unknown
---@alias READY_CHECK_READY_STATE_NOT_READY unknown
---@alias READY_CHECK_READY_STATE READY_CHECK_READY_STATE_UNKNOWN | READY_CHECK_READY_STATE_READY | READY_CHECK_READY_STATE_NOT_READY

--[[ EVENTS --]]

---@alias EVENT_AVATAR_ITEM_TAKEN_BY_GROUPMATE "EVENT_AVATAR_ITEM_TAKEN_BY_GROUPMATE"
---@alias EVENT_AVATAR_MONEY_TAKEN_BY_GROUPMATE "EVENT_AVATAR_MONEY_TAKEN_BY_GROUPMATE"
---@alias EVENT_GROUP_ACCEPT_ERROR "EVENT_GROUP_ACCEPT_ERROR"
---@alias EVENT_GROUP_APPEARED "EVENT_GROUP_APPEARED"
---@alias EVENT_GROUP_CHANGED "EVENT_GROUP_CHANGED"
---@alias EVENT_GROUP_CONVERTED "EVENT_GROUP_CONVERTED"
---@alias EVENT_GROUP_DECLINE "EVENT_GROUP_DECLINE"
---@alias EVENT_GROUP_DECLINE_BUSY "EVENT_GROUP_DECLINE_BUSY"
---@alias EVENT_GROUP_DECLINE_IGNORED "EVENT_GROUP_DECLINE_IGNORED"
---@alias EVENT_GROUP_DISAPPEARED "EVENT_GROUP_DISAPPEARED"
---@alias EVENT_GROUP_INVITE "EVENT_GROUP_INVITE"
---@alias EVENT_GROUP_INVITE_FAILED "EVENT_GROUP_INVITE_FAILED"
---@alias EVENT_GROUP_ITEM_QUALITY_CHANGED "EVENT_GROUP_ITEM_QUALITY_CHANGED"
---@alias EVENT_GROUP_KICK_FAILED "EVENT_GROUP_KICK_FAILED"
---@alias EVENT_GROUP_LEADER_CHANGED "EVENT_GROUP_LEADER_CHANGED"
---@alias EVENT_GROUP_LOOT_SCHEME_CHANGED "EVENT_GROUP_LOOT_SCHEME_CHANGED"
---@alias EVENT_GROUP_MEMBER_ADDED "EVENT_GROUP_MEMBER_ADDED"
---@alias EVENT_GROUP_MEMBER_CHANGED "EVENT_GROUP_MEMBER_CHANGED"
---@alias EVENT_GROUP_MEMBER_REMOVED "EVENT_GROUP_MEMBER_REMOVED"
---@alias EVENT_PARTY_MEMBER_POSITION_UPDATED "EVENT_PARTY_MEMBER_POSITION_UPDATED"
---@alias EVENT_READY_CHECK_ENDED "EVENT_READY_CHECK_ENDED"
---@alias EVENT_READY_CHECK_INFO_CHANGED "EVENT_READY_CHECK_INFO_CHANGED"
---@alias EVENT_READY_CHECK_STARTED "EVENT_READY_CHECK_STARTED"

---@overload fun(eventFunction: fun(data: { playerId: ObjectId | nil, itemObject: ValuedObject, actionType: ENUM_EnumTakeItemActionType }), sysEventName: EVENT_AVATAR_ITEM_TAKEN_BY_GROUPMATE)
---@overload fun(eventFunction: fun(data: { playerId: ObjectId | nil, money: integer, actionType: ENUM_EnumTakeItemActionType }), sysEventName: EVENT_AVATAR_MONEY_TAKEN_BY_GROUPMATE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_ACCEPT_ERROR)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_APPEARED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_CONVERTED)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_GROUP_DECLINE)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_GROUP_DECLINE_BUSY)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_GROUP_DECLINE_IGNORED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_DISAPPEARED)
---@overload fun(eventFunction: fun(data: { inviterName: WString, inviterShardName: WString }), sysEventName: EVENT_GROUP_INVITE)
---@overload fun(eventFunction: fun(data: { name: WString, sysReason: ENUM_GROUP_INVITE_FAILED }), sysEventName: EVENT_GROUP_INVITE_FAILED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_ITEM_QUALITY_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString, sysReason: ENUM_GROUP_KICK_FAILED }), sysEventName: EVENT_GROUP_KICK_FAILED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_LEADER_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_LOOT_SCHEME_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString, id: ObjectId | nil, uniqueId: UniqueId | nil }), sysEventName: EVENT_GROUP_MEMBER_ADDED)
---@overload fun(eventFunction: fun(data: { name: WString, id: ObjectId | nil, uniqueId: UniqueId | nil }), sysEventName: EVENT_GROUP_MEMBER_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString, id: ObjectId | nil, uniqueId: UniqueId | nil }), sysEventName: EVENT_GROUP_MEMBER_REMOVED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_PARTY_MEMBER_POSITION_UPDATED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_READY_CHECK_ENDED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_READY_CHECK_INFO_CHANGED)
---@overload fun(eventFunction: fun(data: { initiatorId: UniqueId }), sysEventName: EVENT_READY_CHECK_STARTED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function group.Accept() end

---@return boolean # может ли игрок приглашать в группу
function group.CanInvite() end

---@return boolean # может ли игрок выгонять из группы
function group.CanKick() end

---@return boolean # true, если главный игрок может выгонять из группы
function group.CanKickMember() end

---@return boolean # может ли игрок покинуть группу
function group.CanLeave() end

function group.Decline() end

---@return { invited: boolean, inviterName: WString, inviterShardName: WString }
function group.GetInviteInfo() end

---@return -1 | integer # индекс [0..] лидера в группе или -1, если группы нет или лидер еще неизвестен
function group.GetLeaderIndex() end

---@return UniqueId
function group.GetLeader() end

---@return UniqueId
---@deprecated Метод устарел. ; удалён 15.0.02 x64rc1
function group.GetLeaderUniqueId() end

---@param name WString # имя игрока
---@return -1 | integer # индекс [0..] игрока в группе или -1, если такого игрока в группе нет
---@deprecated Метод устарел. ; удалён 15.0.02 x64rc1
function group.GetMemberIndexByName( name ) end

---@param id WString | UniqueId | ObjectId
---@return nil | GroupMemberInfo
function group.GetMemberInfo( id ) end
---@alias GroupMemberInfo { name: WString, state: GROUP_MEMBER_STATE, isInCombat: boolean, id: ObjectId | nil, uniqueId: UniqueId, level: integer | nil, className: string | nil, classLocalName: WString | nil }

---@param memberId UniqueId
---@return nil | { name: WString, state: GROUP_MEMBER_STATE, isInCombat: boolean, id: ObjectId, uniqueId: UniqueId, level: integer | nil, className: string | nil, classLocalName: WString | nil }
---@deprecated Метод устарел. ; удалён 15.0.02 x64rc1
function group.GetMemberInfoById( memberId ) end

---@param index integer
---@return nil | GroupMemberInfo
function group.GetMemberInfoByIndex( index ) end

---@param index integer # индекс [0..] игрока в группе
---@return WString | nil # имя игрока или nil, если оно не найдено (ошибочный индекс или имя еще неизвестно)
---@deprecated Метод устарел. ; удалён 15.0.02 x64rc1
function group.GetMemberNameByIndex( index ) end

---@return nil | table<integer, { name: WString, state: GROUP_MEMBER_STATE, isInCombat: boolean, id: ObjectId, uniqueId: UniqueId, level: integer | nil, className: string | nil, classLocalName: WString | nil }>
--- TODO: check return type
function group.GetMembers() end

---@return nil | { isInProgress: boolean, remainingTimeMs: integer, initiatorId: UniqueId, members: table<integer, { uniqueId: UniqueId, state: READY_CHECK_READY_STATE }> }
function group.GetReadyCheckInfo() end

---@param unitId ObjectId # идентификатор персонажа, приглашаемого в группу
function group.Invite( unitId ) end

---@param name WString # имя персонажа, приглашаемого в группу
function group.InviteByName( name ) end

---@return boolean # true, если группа собрана автоматически
function group.IsAutomatic() end

---@param id ObjectId # Id игрока или наемника
---@return boolean # true, если в группе
function group.IsCreatureInGroup( id ) end

---@return boolean # есть ли группа
function group.IsExist() end

---@return boolean # true, если главный игрок является лидером группы
function group.IsLeader() end

---@param name WString # имя игрока в группе
function group.KickMember( name ) end

---@param objectId ObjectId # идентификатор наемника
function group.KickMerc( objectId ) end

function group.Leave() end

---@param ready boolean # готов ли игрок к действиям
function group.ReportReadyCheck( ready ) end

---@param uniqueId UniqueId
function group.SetLeader( uniqueId ) end

function group.StartReadyCheck() end