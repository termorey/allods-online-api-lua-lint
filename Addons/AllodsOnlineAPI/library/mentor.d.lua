---@meta

---@class mentor
mentor = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_APPRENTICE_MENTOR_CHANGED "EVENT_APPRENTICE_MENTOR_CHANGED"
---@alias EVENT_MENTOR_APPRENTICE_ADDED "EVENT_MENTOR_APPRENTICE_ADDED"
---@alias EVENT_MENTOR_APPRENTICE_REMOVED "EVENT_MENTOR_APPRENTICE_REMOVED"
---@alias EVENT_MENTOR_APPRENTICE_REWARD_CHANGED "EVENT_MENTOR_APPRENTICE_REWARD_CHANGED"
---@alias EVENT_MENTOR_CHANGED "EVENT_MENTOR_CHANGED"
---@alias EVENT_MENTOR_COOLDOWNS_CHANGED "EVENT_MENTOR_COOLDOWNS_CHANGED"
---@alias EVENT_MENTOR_DATA_CHANGED "EVENT_MENTOR_DATA_CHANGED"
---@alias EVENT_MENTOR_INFO_CHANGED "EVENT_MENTOR_INFO_CHANGED"
---@alias EVENT_MENTOR_MESSAGE_CHANGED "EVENT_MENTOR_MESSAGE_CHANGED"
---@alias EVENT_MENTOR_PLAYER_INFO_CHANGED "EVENT_MENTOR_PLAYER_INFO_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_APPRENTICE_MENTOR_CHANGED)
---@overload fun(eventFunction: fun(data: { mentorId: ObjectId, mentorPlayerId: ObjectId }), sysEventName: EVENT_MENTOR_APPRENTICE_ADDED)
---@overload fun(eventFunction: fun(data: { mentorId: ObjectId, mentorPlayerId: ObjectId }), sysEventName: EVENT_MENTOR_APPRENTICE_REMOVED)
---@overload fun(eventFunction: fun(data: { mentorId: ObjectId, apprenticeId: ObjectId }), sysEventName: EVENT_MENTOR_APPRENTICE_REWARD_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MENTOR_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MENTOR_COOLDOWNS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MENTOR_DATA_CHANGED)
---@overload fun(eventFunction: fun(data: { mentorId: ObjectId }), sysEventName: EVENT_MENTOR_INFO_CHANGED)
---@overload fun(eventFunction: fun(data: { mentorId: ObjectId }), sysEventName: EVENT_MENTOR_MESSAGE_CHANGED)
---@overload fun(eventFunction: fun(data: { mentorPlayerId: ObjectId }), sysEventName: EVENT_MENTOR_PLAYER_INFO_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param mentorPlayerId ObjectId
---@return table<integer, ObjectId>
function mentor.GetApprentices( mentorPlayerId ) end

---@return nil | { mentorRefuseRemainingMs: integer, apprenticeRefuseRemainingMs: integer, mentorFlagRemainingMs: integer, apprenticeFlagRemainingMs: integer }
function mentor.GetCooldownsInfo() end

---@return nil | { apprenticeMentorID: ObjectId, mentorId: ObjectId, avatarApprenticeId: ObjectId, apprenticeFlag: boolean, mentorFlag: boolean, canBeMentor: boolean, canBeApprentice: boolean }
function mentor.GetManagerInfo() end

---@param mentorId ObjectId
---@return WString
function mentor.GetMessage( mentorId ) end

---@param mentorPlayerId ObjectId
---@return nil | { id: ObjectId, isOnline: boolean, playerId: ObjectId | nil, mentorId: ObjectId | nil, canRefuse: boolean, offlineInfo: { name: WString, guild: WString | nil, level: integer, zoneId: ObjectId | nil, raceClass: LuaRaceClassInfoPart | nil, sex: LuaSexInfoPart | nil, startTime: LuaFullDateTime | nil, lastOnlineTime: LuaFullDateTime | nil } }
function mentor.GetPlayerInfo( mentorPlayerId ) end

---@param mentorPlayerId ObjectId
---@return nil | { moneyPercent: integer, realMoney: integer, items: table<integer, { itemId: ObjectId, percent: integer, realCount: integer }> }
function mentor.GetPlayerReward( mentorPlayerId ) end

---@return nil | { mentorRefuseRemainingMs: integer, apprenticeRefuseRemainingMs: integer, mentorFlagRemainingMs: integer, apprenticeFlagRemainingMs: integer }
function mentor.GetPredictedCooldownsInfo() end

---@param mentorPlayerId ObjectId
function mentor.RefuseApprentice( mentorPlayerId ) end

function mentor.RefuseMentor() end

---@param flag boolean
function mentor.SetApprenticeFlag( flag ) end

---@param flag boolean
function mentor.SetMentorFlag( flag ) end

---@param message WString
function mentor.SetMessage( message ) end