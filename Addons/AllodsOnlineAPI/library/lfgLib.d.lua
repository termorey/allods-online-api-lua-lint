---@meta

---@class lfgLib
lfgLib = {}

--[[ ENUMS --]]

---@alias ENUM_LfgActionFail
---| "ENUM_LfgActionFail_InvalidRole" - выбрана не подходящая персонажу роль в группе
---| "ENUM_LfgActionFail_InvalidDestination" - невозможно отправиться в выбранную локацию
---| "ENUM_LfgActionFail_LeaderRequire" - инициировать отправку в выбранную локацию может только лидер группы

---@alias ENUM_LFGEventDifficulty
---| "ENUM_LFGEventDifficulty_Easy"
---| "ENUM_LFGEventDifficulty_Normal"
---| "ENUM_LFGEventDifficulty_Hard"

---@alias ENUM_LFGRole_Tank unknown
---@alias ENUM_LFGRole_Healer unknown
---@alias ENUM_LFGRole_DamageDealer unknown
---@alias ENUM_LFGRole ENUM_LFGRole_Tank | ENUM_LFGRole_Healer | ENUM_LFGRole_DamageDealer

---@alias ENUM_LFGVoteType
---| "ENUM_LFGVoteType_Join"
---| "ENUM_LFGVoteType_Invite"

--[[ EVENTS --]]

---@alias EVENT_LFG_ACTION_FAIL "EVENT_LFG_ACTION_FAIL"
---@alias EVENT_LFG_DEPART_AVAILABLE_CHANGED "EVENT_LFG_DEPART_AVAILABLE_CHANGED"
---@alias EVENT_LFG_DESTINATION_AVAILABLE_CHANGED "EVENT_LFG_DESTINATION_AVAILABLE_CHANGED"
---@alias EVENT_LFG_DESTINATION_CHANGED "EVENT_LFG_DESTINATION_CHANGED"
---@alias EVENT_LFG_DESTINATIONS_LIST_CHANGED "EVENT_LFG_DESTINATIONS_LIST_CHANGED"
---@alias EVENT_LFG_DESTINATION_VISITS_CHANGED "EVENT_LFG_DESTINATION_VISITS_CHANGED"
---@alias EVENT_LFG_JOIN "EVENT_LFG_JOIN"
---@alias EVENT_LFG_LEAVE "EVENT_LFG_LEAVE"
---@alias EVENT_LFG_VOTE "EVENT_LFG_VOTE"
---@alias EVENT_LFG_VOTE_TERMINATE "EVENT_LFG_VOTE_TERMINATE"

--- TODO: ↓ use Number type, but enum is String
---@overload fun(eventFunction: fun(data: { cause: ENUM_LfgActionFail }), sysEventName: EVENT_LFG_ACTION_FAIL)
---@overload fun(eventFunction: fun(data: { available: boolean }), sysEventName: EVENT_LFG_DEPART_AVAILABLE_CHANGED)
---@overload fun(eventFunction: fun(data: { destination: LfgDestinationId }), sysEventName: EVENT_LFG_DESTINATION_AVAILABLE_CHANGED)
---@overload fun(eventFunction: fun(data: { destination: LfgDestinationId }), sysEventName: EVENT_LFG_DESTINATION_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_LFG_DESTINATIONS_LIST_CHANGED)
---@overload fun(eventFunction: fun(data: { destination: LfgDestinationId }), sysEventName: EVENT_LFG_DESTINATION_VISITS_CHANGED)
---@overload fun(eventFunction: fun(data: { destination: LfgDestinationId, roles: table<integer, ENUM_LFGRole> }), sysEventName: EVENT_LFG_JOIN)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_LFG_LEAVE)
---@overload fun(eventFunction: fun(data: { initiator: WString, type: ENUM_LFGVoteType, destination: LfgDestinationId | nil, endTimeMs: number, roles: table<integer, ENUM_LFGRole> }), sysEventName: EVENT_LFG_VOTE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_LFG_VOTE_TERMINATE)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param destinationId LfgDestinationId
function lfgLib.Depart( destinationId ) end

---@param enable boolean
function lfgLib.EnableReplicateDestinations( enable ) end

---@return LfgDestinationId | nil
function lfgLib.GetCurrentDestination() end

---@param destinationId LfgDestinationId
---@return nil | { requirements: RequirementsTable }
function lfgLib.GetDepartRequirements( destinationId ) end

---@return nil | table<integer, LfgDestinationCategoryId>
function lfgLib.GetDestinationCategories() end

---@param destinationId LfgDestinationId
---@return nil | { requirements: RequirementsTable }
function lfgLib.GetDestinationRequirements( destinationId ) end

---@param destinationId LfgDestinationId
---@return nil | { money: integer, experience: integer, loyalty: integer, authority: integer, mandatoryItems: table<integer, ObjectId>, mandatoryItemsCount: integer, alternativeItems: table<integer, ObjectId>, reputations: table<integer, { faction: WString, value: integer }>, currencies: table<integer, { currencyId: CurrencyId, value: integer }>, unlocks: table<integer, ObjectId> }
function lfgLib.GetDestinationReward( destinationId ) end

---@return nil | table<integer, LfgDestinationId>
function lfgLib.GetDestinations() end

---@param сategoryId LfgDestinationCategoryId
---@return nil | table<integer, LfgDestinationId>
function lfgLib.GetDestinationsInCategory( сategoryId ) end

---@param destinationId LfgDestinationId
---@return nil | table<integer, { groupQueueTime: integer, timeForDepart: integer, groupStabilizationTime: integer }>
function lfgLib.GetDestinationTimers( destinationId ) end

---@param destinationId LfgDestinationId
---@return nil | table<integer, { todayVisits: integer | nil, weeklyVisits: integer | nil, maxVisitsPerDay: 0 | integer, maxVisitsPerWeek: 0 | integer }>
function lfgLib.GetDestinationVisits( destinationId ) end

---@return nil | table<integer, ENUM_LFGRole>
function lfgLib.GetRoles() end

---@return boolean
function lfgLib.IsAvailable() end

---@param destinationId LfgDestinationId
---@return boolean
function lfgLib.IsDepartAvailable( destinationId ) end

---@param destinationId LfgDestinationId
---@return boolean
function lfgLib.IsDestinationAvailable( destinationId ) end

---@param destinationId LfgDestinationId
---@return boolean
function lfgLib.IsFreePass( destinationId ) end

---@param role ENUM_LFGRole
---@return nil | { success: boolean, requiredSpell: nil | table }
--- TODO: role type (Number, but enum is string)
--- TODO: check return requiredSpell type
function lfgLib.IsRoleAvailable( role ) end

---@param destinationId LfgDestinationId
---@param roles ENUM_LFGRole
function lfgLib.Join( destinationId, roles ) end

function lfgLib.Leave() end

function lfgLib.VoteNo() end

---@param roles nil | ENUM_LFGVoteType[]
function lfgLib.VoteYes( roles ) end