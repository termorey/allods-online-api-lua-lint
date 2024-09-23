---@meta

---@class raid
raid = {}

--[[ ENUMS --]]

---@alias ENUM_RAID_FAILED
---| "ENUM_RAID_FAILED_NOT_ENOUGH_RIGHTS"
---| "ENUM_RAID_FAILED_PLAYER_IS_NOT_IN_RAID"
---| "ENUM_RAID_FAILED_PLAYER_ALREADY_IN_RAID"
---| "ENUM_RAID_FAILED_LEADER_CANT_LEAVE"
---| "ENUM_RAID_FAILED_ZONE_NOT_ALLOWED"
---| "ENUM_RAID_FAILED_ALREADY_FULL"

---@alias RAID_MEMBER_RIGHT_LEADER_HELPER unknown # игрок является помощником лидера
---@alias RAID_MEMBER_RIGHT_LOOT_MASTER unknown # игрок является лут-мастером
---@alias RAID_MEMBER_RIGHT RAID_MEMBER_RIGHT_LEADER_HELPER | RAID_MEMBER_RIGHT_LOOT_MASTER

---@alias RAID_MEMBER_STATE_OFFLINE unknown # игрок не находится в игре
---@alias RAID_MEMBER_STATE_NEAR unknown # по игроку доступна вся информация
---@alias RAID_MEMBER_STATE_FAR unknown # игрок в игре, но информация по нему недоступна либо доступна только частично
---@alias RAID_MEMBER_STATE_AFK unknown # игрок в статусе AFK
---@alias RAID_MEMBER_STATE RAID_MEMBER_STATE_OFFLINE | RAID_MEMBER_STATE_NEAR | RAID_MEMBER_STATE_FAR | RAID_MEMBER_STATE_AFK

--[[ EVENTS --]]

---@alias EVENT_RAID_ALREADY_IN "EVENT_RAID_ALREADY_IN"
---@alias EVENT_RAID_APPEARED "EVENT_RAID_APPEARED"
---@alias EVENT_RAID_CANT_ACCEPT "EVENT_RAID_CANT_ACCEPT"
---@alias EVENT_RAID_CANT_ENTER_MAP "EVENT_RAID_CANT_ENTER_MAP"
---@alias EVENT_RAID_CHANGED "EVENT_RAID_CHANGED"
---@alias EVENT_RAID_DECLINE "EVENT_RAID_DECLINE"
---@alias EVENT_RAID_DECLINE_BUSY "EVENT_RAID_DECLINE_BUSY"
---@alias EVENT_RAID_DECLINE_IGNORED "EVENT_RAID_DECLINE_IGNORED"
---@alias EVENT_RAID_DISAPPEARED "EVENT_RAID_DISAPPEARED"
---@alias EVENT_RAID_ENTER_VARS_MAP_UNAVALIABLE "EVENT_RAID_ENTER_VARS_MAP_UNAVALIABLE"
---@alias EVENT_RAID_ENTER_VARS_MAP_WARNING "EVENT_RAID_ENTER_VARS_MAP_WARNING"
---@alias EVENT_RAID_FAILED "EVENT_RAID_FAILED"
---@alias EVENT_RAID_INVITE "EVENT_RAID_INVITE"
---@alias EVENT_RAID_LEADER_CHANGED "EVENT_RAID_LEADER_CHANGED"
---@alias EVENT_RAID_LEADER_HELPER_CHANGED "EVENT_RAID_LEADER_HELPER_CHANGED"
---@alias EVENT_RAID_LOOT_MASTER_CHANGED "EVENT_RAID_LOOT_MASTER_CHANGED"
---@alias EVENT_RAID_MEMBER_ADDED "EVENT_RAID_MEMBER_ADDED"
---@alias EVENT_RAID_MEMBER_CHANGED "EVENT_RAID_MEMBER_CHANGED"
---@alias EVENT_RAID_MEMBER_POSITION_UPDATED "EVENT_RAID_MEMBER_POSITION_UPDATED"
---@alias EVENT_RAID_MEMBER_REMOVED "EVENT_RAID_MEMBER_REMOVED"
---@alias EVENT_RAID_SAVE_MAP_QUESTION "EVENT_RAID_SAVE_MAP_QUESTION"

---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_RAID_ALREADY_IN)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_RAID_APPEARED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_RAID_CANT_ACCEPT)
---@overload fun(eventFunction: fun(data: { mapName: WString | nil }), sysEventName: EVENT_RAID_CANT_ENTER_MAP)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_RAID_CHANGED)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_RAID_DECLINE)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_RAID_DECLINE_BUSY)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_RAID_DECLINE_IGNORED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_RAID_DISAPPEARED)
---@overload fun(eventFunction: fun(data: { mapName: WString, variables: table<integer, VariableId | ResourceId> }), sysEventName: EVENT_RAID_ENTER_VARS_MAP_UNAVALIABLE)
---@overload fun(eventFunction: fun(data: { mapName: WString, variables: table<integer, VariableId | ResourceId> }), sysEventName: EVENT_RAID_ENTER_VARS_MAP_WARNING)
---@overload fun(eventFunction: fun(data: { sysReason: ENUM_RAID_FAILED }), sysEventName: EVENT_RAID_FAILED)
---@overload fun(eventFunction: fun(data: { inviterName: WString, inviterShardName:WString }), sysEventName: EVENT_RAID_INVITE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_RAID_LEADER_CHANGED)
---@overload fun(eventFunction: fun(data: { oldLeaderHekper: UniqueId | nil, newLeaderHelper: UniqueId | nil }), sysEventName: EVENT_RAID_LEADER_HELPER_CHANGED)
---@overload fun(eventFunction: fun(data: { oldLootMaster: UniqueId | nil, newLootMaster: UniqueId | nil }), sysEventName: EVENT_RAID_LOOT_MASTER_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString, id: ObjectId | nil, uniqueId: UniqueId | nil }), sysEventName: EVENT_RAID_MEMBER_ADDED)
---@overload fun(eventFunction: fun(data: { name: WString, id: ObjectId | nil, uniqueId: UniqueId | nil }), sysEventName: EVENT_RAID_MEMBER_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_RAID_MEMBER_POSITION_UPDATED)
---@overload fun(eventFunction: fun(data: { name: WString, id: ObjectId | nil, uniqueId: UniqueId | nil }), sysEventName: EVENT_RAID_MEMBER_REMOVED)
---@overload fun(eventFunction: fun(data: { timeoutMs: integer, mapName: WString | nil }), sysEventName: EVENT_RAID_SAVE_MAP_QUESTION)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function raid.Accept() end

---@param playerId UniqueId
---@param right RAID_MEMBER_RIGHT
function raid.AddRight( playerId, right ) end

---@param uniqueId UniqueId
---@return boolean # true, если можно пригласить
function raid.CanInvite( uniqueId ) end

---@return boolean # true, если можно выгонять
function raid.CanKick() end

---@return boolean # true, если можно покинуть
function raid.CanLeave() end

---@param playerId UniqueId
function raid.ChangeLeader( playerId ) end

function raid.Create() end

function raid.CreateSmall() end

function raid.Decline() end

function raid.Disband() end

---@return UniqueId
function raid.GetLeader() end

---@return table<integer, UniqueId> | nil
function raid.GetLeaderHelpers() end

---@return UniqueId | nil
function raid.GetLootMaster() end

---@return number | nil # количество групп или nil если рейда не существует
function raid.GetMaxGroupCount() end

---@param memberId UniqueId | WString | ObjectId
---@return { id: ObjectId, uniqueId: UniqueId, name: WString, className: string, classLocalName: WString, level: integer | nil, state: RAID_MEMBER_STATE, isInCombat: boolean }
function raid.GetMemberInfo( memberId ) end

---@param playerId UniqueId
---@return table<integer, RAID_MEMBER_RIGHT>
--- TODO: check return type
function raid.GetMemberRights( playerId) end

---@return table<integer, table<integer, { id: ObjectId, uniqueId: UniqueId | nil, name: WString, className: string, classLocalName: WString, level: integer | nil, state: RAID_MEMBER_STATE }>>
function raid.GetMembers() end

---@return nil | { isInProgress: boolean, remainingTimeMs: integer, initiatorId: UniqueId, memers: table<integer, { uniqueId: UniqueId, state: READY_CHECK_READY_STATE }> }
function raid.GetReadyCheckInfo() end

---@param unitId ObjectId
function raid.Invite( unitId ) end

---@param name WString # имя персонажа, приглашаемого в рейд
function raid.InviteByName( name ) end

---@return boolean # true, если рейд собран автоматически
function raid.IsAutomatic() end

---@return boolean # есть ли рейд
function raid.IsExist() end

---@param id nil | ObjectId | UniqueId | WString
---@return boolean # является ли аватар лидером рейда
function raid.IsLeader( id ) end

---@param memberId UniqueId
function raid.IsolateMember( memberId ) end

---@param playerName WString | ObjectId | UniqueId # имя игрока
---@return boolean # находится ли игрок в том же рейде что и аватар
function raid.IsPlayerInAvatarsRaid( playerName ) end

---@param uniqueId UniqueId
---@return boolean # находится ли игрок в том же рейде что и аватар
function raid.IsPlayerInAvatarsRaidById( uniqueId ) end

---@param playerName WString # имя игрока
---@return boolean # игрок в той же группе рейда, что и аватар
function raid.IsPlayerInAvatarsRaidGroup( playerName ) end

---@param uniqueId UniqueId
---@return boolean # игрок в той же группе рейда, что и аватар
function raid.IsPlayerInAvatarsRaidGroupById( uniqueId ) end

---@param playerId UniqueId
function raid.Kick( playerId ) end

function raid.Leave() end

---@param response boolean # true, если согласны на сохранение
function raid.MapSaveResponse( response ) end

---@param value boolean # true, если согласны принять прогресс инста
function avatar.MapVarsSaveResponse( value ) end

---@param playerId UniqueId
---@param groupNumber integer # номер новой группы (группа должна уже существовать), нумерация групп начинается с нуля
function raid.MoveMemberToGroup( playerId, groupNumber ) end

---@param playerId UniqueId
---@param right RAID_MEMBER_RIGHT
function raid.RemoveRight( playerId, right ) end

---@param ready boolean # готов ли игрок к действиям
function raid.ReportReadyCheck( ready ) end

function raid.StartReadyCheck() end

---@param playerId1 UniqueId
---@param playerId2 UniqueId
function raid.SwapMembers( playerId1, playerId2 ) end