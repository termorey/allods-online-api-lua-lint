---@meta

---@class matchMaking
matchMaking = {}

--[[ ENUMS --]]

---@alias ENUM_MatchMakingMechanicsType_UNKNOWN unknown - тип неизвестен
---@alias ENUM_MatchMakingMechanicsType_BATTLEGROUND unknown - баттлграунд
---@alias ENUM_MatchMakingMechanicsType_FOOTBALL unknown - гоблинобол
---@alias ENUM_MatchMakingMechanicsType_SUMMERBOSS unknown - летний босс
---@alias ENUM_MatchMakingMechanicsType_LASTSTAND unknown - последний рубеж
---@alias ENUM_MatchMakingMechanicsType_CAPTURE_POINTS unknown - захват точек
---@alias ENUM_MatchMakingMechanicsType_RATING_ARENA unknown - рейтинговая арена
---@alias ENUM_MatchMakingMechanicsType_VESSEL_DOMINATION unknown - домининрование
---@alias ENUM_MatchMakingMechanicsType_VESSEL_BASE_CAPTURE unknown - захват базы
---@alias ENUM_MatchMakingMechanicsType_VESSEL_CONQUEST unknown - завоевание
---@alias ENUM_MatchMakingMechanicsType ENUM_MatchMakingMechanicsType_UNKNOWN | ENUM_MatchMakingMechanicsType_BATTLEGROUND | ENUM_MatchMakingMechanicsType_FOOTBALL | ENUM_MatchMakingMechanicsType_SUMMERBOSS | ENUM_MatchMakingMechanicsType_LASTSTAND | ENUM_MatchMakingMechanicsType_CAPTURE_POINTS | ENUM_MatchMakingMechanicsType_RATING_ARENA | ENUM_MatchMakingMechanicsType_VESSEL_DOMINATION | ENUM_MatchMakingMechanicsType_VESSEL_BASE_CAPTURE | ENUM_MatchMakingMechanicsType_VESSEL_CONQUEST

---@alias ENUM_RatingArenaType_1x1 integer
---@alias ENUM_RatingArenaType_3x3 integer
---@alias ENUM_RatingArenaType_6x6 integer
---@alias ENUM_RatingArenaType_HPI integer -- героические приключения
---@alias ENUM_RatingArenaType ENUM_RatingArenaType_1x1 | ENUM_RatingArenaType_3x3 | ENUM_RatingArenaType_6x6 | ENUM_RatingArenaType_HPI

--[[ EVENTS --]]

---@alias EVENT_MATCH_MAKING_AUTO_DEPART_TIME_CHANGED "EVENT_MATCH_MAKING_AUTO_DEPART_TIME_CHANGED"
---@alias EVENT_MATCH_MAKING_CURRENT_BATTLE_CHANGED "EVENT_MATCH_MAKING_CURRENT_BATTLE_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_ADDED "EVENT_MATCH_MAKING_EVENT_ADDED"
---@alias EVENT_MATCH_MAKING_EVENT_AVAILABILITY_CHANGED "EVENT_MATCH_MAKING_EVENT_AVAILABILITY_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_DOUBLE_BONUS_CHANGED "EVENT_MATCH_MAKING_EVENT_DOUBLE_BONUS_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_PROGRESS_ADDED "EVENT_MATCH_MAKING_EVENT_PROGRESS_ADDED"
---@alias EVENT_MATCH_MAKING_EVENT_PROGRESS_COMPLETED_CHANGED "EVENT_MATCH_MAKING_EVENT_PROGRESS_COMPLETED_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_PROGRESS_DURATION_CHANGED "EVENT_MATCH_MAKING_EVENT_PROGRESS_DURATION_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_PROGRESS_MEMBER_CHANGED "EVENT_MATCH_MAKING_EVENT_PROGRESS_MEMBER_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_PROGRESS_MEMBERS_CHANGED "EVENT_MATCH_MAKING_EVENT_PROGRESS_MEMBERS_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_PROGRESS_REMOVED "EVENT_MATCH_MAKING_EVENT_PROGRESS_REMOVED"
---@alias EVENT_MATCH_MAKING_EVENT_PROGRESS_ROUNDS_CHANGED "EVENT_MATCH_MAKING_EVENT_PROGRESS_ROUNDS_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_QUEUE_ADDED "EVENT_MATCH_MAKING_EVENT_QUEUE_ADDED"
---@alias EVENT_MATCH_MAKING_EVENT_QUEUE_REMOVED "EVENT_MATCH_MAKING_EVENT_QUEUE_REMOVED"
---@alias EVENT_MATCH_MAKING_EVENT_QUEUES_REMOVED "EVENT_MATCH_MAKING_EVENT_QUEUES_REMOVED"
---@alias EVENT_MATCH_MAKING_EVENT_REMOVED "EVENT_MATCH_MAKING_EVENT_REMOVED"
---@alias EVENT_MATCH_MAKING_EVENTS_AVAILABILITY_CHANGED "EVENT_MATCH_MAKING_EVENTS_AVAILABILITY_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENTS_CHANGED "EVENT_MATCH_MAKING_EVENTS_CHANGED"
---@alias EVENT_MATCH_MAKING_EVENT_TELEPORT_REJECTED "EVENT_MATCH_MAKING_EVENT_TELEPORT_REJECTED"
---@alias EVENT_MATCH_MAKING_EVENT_TELEPORT_REQUEST "EVENT_MATCH_MAKING_EVENT_TELEPORT_REQUEST"
---@alias EVENT_MATCH_MAKING_EVENT_VISITS_CHANGED "EVENT_MATCH_MAKING_EVENT_VISITS_CHANGED"
---@alias EVENT_MATCH_MAKING_JOIN_TIME_CHANGED "EVENT_MATCH_MAKING_JOIN_TIME_CHANGED"
---@alias EVENT_MATCH_MAKING_MEMBERS_ROLES_CHANGED "EVENT_MATCH_MAKING_MEMBERS_ROLES_CHANGED"
---@alias EVENT_MATCH_MAKING_PROGRESS_ACHIEVEMENTS_CHANGED "EVENT_MATCH_MAKING_PROGRESS_ACHIEVEMENTS_CHANGED"
---@alias EVENT_MATCH_MAKING_PROGRESS_MEMBERS_ACHIEVEMENTS_CHANGED "EVENT_MATCH_MAKING_PROGRESS_MEMBERS_ACHIEVEMENTS_CHANGED"

---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_AUTO_DEPART_TIME_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_CURRENT_BATTLE_CHANGED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_EVENT_ADDED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_EVENT_AVAILABILITY_CHANGED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_EVENT_DOUBLE_BONUS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENT_PROGRESS_ADDED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENT_PROGRESS_COMPLETED_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENT_PROGRESS_DURATION_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENT_PROGRESS_MEMBER_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENT_PROGRESS_MEMBERS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENT_PROGRESS_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENT_PROGRESS_ROUNDS_CHANGED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_EVENT_QUEUE_ADDED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_EVENT_QUEUE_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENT_QUEUES_REMOVED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_EVENT_REMOVED)
---@overload fun(eventFunction: fun(data: { isAvailable: boolean }), sysEventName: EVENT_MATCH_MAKING_EVENTS_AVAILABILITY_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_EVENTS_CHANGED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId, isTimeout: boolean }), sysEventName: EVENT_MATCH_MAKING_EVENT_TELEPORT_REJECTED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId, timeoutMs: integer, isDelayedInvite: boolean }), sysEventName: EVENT_MATCH_MAKING_EVENT_TELEPORT_REQUEST)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_EVENT_VISITS_CHANGED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId }), sysEventName: EVENT_MATCH_MAKING_JOIN_TIME_CHANGED)
---@overload fun(eventFunction: fun(data: { eventId: ObjectId | nil }), sysEventName: EVENT_MATCH_MAKING_MEMBERS_ROLES_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_PROGRESS_ACHIEVEMENTS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MATCH_MAKING_PROGRESS_MEMBERS_ACHIEVEMENTS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function matchMaking.AwayBattleEvent() end

---@return boolean
function matchMaking.CanAwayBattleEvent() end

---@param eventResourceId InstancedEventResourceId
---@return boolean
function matchMaking.CanJoinInstancedEventById( eventResourceId ) end

---@param eventId ObjectId | nil
---@return boolean
function matchMaking.CanJoinInstancedEvents( eventId ) end

---@return boolean
function matchMaking.CanReturnToBattle() end

---@return unknown
--- TODO: check return type
function matchMaking.CanUseMatchMaking() end

---@param eventId ObjectId
---@return nil | LuaFullDateTime
function matchMaking.GetAutoDepartTime( eventId ) end

---@return nil | { id: ObjectId | nil, name: WString, description: WString, isCommonShard: boolean, isPvE: boolean, mechanicsType: ENUM_MatchMakingMechanicsType, duration: integer, ignoreFactions: boolean, allowQuickStart: boolean, winCounter: integer, achievements: table<integer, { sysName: string | nil, name: WString, description: WString, weight: integer, finalWeight: integer, value: integer, showInTable: boolean }> }
function matchMaking.GetCurrentBattleInfo() end

---@return nil | table<integer, InstancedEventCategoryId>
function matchMaking.GetEventCategories() end

---@param eventId ObjectId
---@return nil | { id: ObjectId, name: ValuedText | WString, rawName: WString | nil, description: ValuedText | WString, resourceId: InstancedEventResourceId, category: InstancedEventCategoryId, isAvailable: boolean, allowQuickExit: boolean, sysCause: ENUM_ActionFailCause, hasDoubleBonus: boolean, ignoreFactions: boolean, leaderDepartOnly: boolean, soloMode: boolean, requiredItem: ItemId | nil, requiredCurrency: CurrencyId | nil, isHighPriority: boolean, mechanicsType: ENUM_MatchMakingMechanicsType, maxVisitsPerDay: integer, maxVisitsPerWeek: integer, exclusive: boolean, leaderOnly: boolean, ticket: ItemId | nil, activeEventJoinPeriod: integer, todayVisits: integer | nil, weeklyVisits: integer | nil, duration: integer, minAvatarLevel: integer, canJoinActiveEvent: boolean, isAvatarJoined: boolean, eventType: table<integer, table>, startTime: table<integer, table>, startTimes: nil | table<integer, unknown>, inviteTimeout: integer, difficulty: WString | nil, difficultyMode: ENUM_LFGEventDifficulty, sysDifficultyMode: ENUM_LFGEventDifficulty }
function matchMaking.GetEventInfo( eventId ) end

---@param eventId ObjectId
---@return nil | { time: integer }
function matchMaking.GetEventJoinTimeEstimate( eventId ) end

---@return nil | { completed: boolean, durationMs: integer, elapsedMs: integer, round: integer, durationsByRound: table, startTimesByRound: table, winnerBattlegroundMarkId: nil | BattlegroundMarkId, winnerFactionId: FactionId | nil, members: nil | table<integer, { name: WString, shardName: WString, id: ObjectId | nil, factionId: FactionId, present: boolean, achievements: table<integer, { sysName: string | nil, name: WString, description: WString, value: integer }>, raceClass: table, battlegroundMarkId: BattlegroundMarkId | nil }> }
function matchMaking.GetEventProgressInfo() end

---@param eventId ObjectId
---@return nil | { money: integer, experience: integer, loyalty: integer, authority: integer, mandatoryItems: table<integer, ObjectId>, mandatoryItemsCount: integer, alternativeItems: table<integer, ObjectId>, reputations: table<integer, { faction: WString, value: integer }>, currencies: table<integer, { currencyId: CurrencyId, value: integer }>, unlocks: table<integer, ObjectId> }
function matchMaking.GetEventReward( eventId ) end

---@return nil | table<integer, unknown>
--- TODO: check return type
function matchMaking.GetEvents() end

---@param categoryId InstanceEventCategoryId
---@param type nil | "pve" | "pvp"
function matchMaking.GetEventsByCategory( categoryId, type ) end

---@return nil | table<integer, { teamMarkId: BattlegroundMarkId | nil, teamAchievements: nil | table<integer, { sysName: string | nil, name: WString, description: WString, amount: integer }> }>
function matchMaking.GetEventScore() end

---@param eventResourceId InstancedEventResourceId
---@return nil | { requirements: RequirementsTable }
function matchMaking.GetJoinRequirements( eventResourceId ) end

---@param eventId ObjectId | nil
---@return table<integer, { id: ObjectId | nil, role: ENUM_LFGRole }>
function matchMaking.GetMembersRoles( eventId ) end

---@param arenaType ENUM_RatingArenaType
---@param unitId ObjectId
---@return nil | { currentSession: { over_game: integer, wins: integer, score: integer, top: integer, timeSpentMs: number, difficulty: nil | { name: WString } } }
function matchMaking.GetRatingPvPScoreByUnitId( arenaType, unitId ) end

---@param arenaType ENUM_RatingArenaType
---@return WString | nil
function matchMaking.GetRatingURL( arenaType ) end

---@param accept boolean
--- TODO: lost dosc argument
function matchMaking.InstancedEventTeleportReply( accept ) end

---@return boolean
function matchMaking.IsAvatarInMatchMakingEvent() end

---@return boolean
function matchMaking.IsAvatarJoinedAnyEvent() end

---@param checkPVE boolean
---@return boolean
function matchMaking.IsAvatarJoinedAnySpecificEvent( checkPVE ) end

---@param eventId ObjectId
---@return boolean
--- TODO: lost dosc argument
function matchMaking.IsEventIdExist( eventId ) end

---@return boolean
function matchMaking.IsEventListValid() end

---@return boolean
function matchMaking.IsEventProgressExist() end

---@param eventId ObjectId
---@return boolean
function matchMaking.IsFreePass( eventId ) end

---@param eventId ObjectId
---@return boolean
function matchMaking.IsPvE( eventId ) end

---@param eventId ObjectId
---@return boolean
function matchMaking.IsRaid( eventId ) end

---@return boolean
function matchMaking.IsRatingPvPScoreAvailable() end

---@param eventId ObjectId
function matchMaking.LeaveInstancedEventQueue( eventId ) end

---@param eventResourceId InstancedEventResourceId
function matchMaking.LeaveInstancedEventQueueById( eventResourceId ) end

---@param needListen boolean
function matchMaking.ListenEventProgress( needListen ) end

---@param needListen boolean
function matchMaking.ListenEvents( needListen ) end

function matchMaking.ReturnToBattle() end