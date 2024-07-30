---@meta

---@class dominationLib
dominationLib = {}

--[[ ENUMS --]]

---@alias ENUM_DominationAreaState_Free unknown -- не захвачена
---@alias ENUM_DominationAreaState_UnderAssault unknown -- осождается
---@alias ENUM_DominationAreaState_Captured unknown -- захвачена
---@alias ENUM_DominationAreaState_AssaultFrozen unknown -- осада приостановлена
---@alias ENUM_DominationAreaState_Void unknown -- неопределенное состояние
---@alias ENUM_DominationAreaState ENUM_DominationAreaState_Free | ENUM_DominationAreaState_UnderAssault | ENUM_DominationAreaState_Captured | ENUM_DominationAreaState_AssaultFrozen | ENUM_DominationAreaState_Void

---@alias ENUM_DominationFightTeam_First number
---@alias ENUM_DominationFightTeam_Second number
---@alias ENUM_DominationFightTeam_Null number
---@alias ENUM_DominationFightTeam ENUM_DominationFightTeam_First | ENUM_DominationFightTeam_Second | ENUM_DominationFightTeam_Null

--[[ EVENTS --]]

---@alias EVENT_DOMINATION_OBJECTIVE_ADDED "EVENT_DOMINATION_OBJECTIVE_ADDED"
---@alias EVENT_DOMINATION_OBJECTIVE_DISABLED "EVENT_DOMINATION_OBJECTIVE_DISABLED"
---@alias EVENT_DOMINATION_OBJECTIVE_OWNER_CHANGED "EVENT_DOMINATION_OBJECTIVE_OWNER_CHANGED"
---@alias EVENT_DOMINATION_OBJECTIVE_PROGRESS_CHANGED "EVENT_DOMINATION_OBJECTIVE_PROGRESS_CHANGED"
---@alias EVENT_DOMINATION_OBJECTIVE_PROGRESS_TO_CAPTURE_CHANGED "EVENT_DOMINATION_OBJECTIVE_PROGRESS_TO_CAPTURE_CHANGED"
---@alias EVENT_DOMINATION_OBJECTIVE_RADIUS_CHANGED "EVENT_DOMINATION_OBJECTIVE_RADIUS_CHANGED"
---@alias EVENT_DOMINATION_OBJECTIVE_REMOVED "EVENT_DOMINATION_OBJECTIVE_REMOVED"
---@alias EVENT_DOMINATION_OBJECTIVE_STATE_CHANGED "EVENT_DOMINATION_OBJECTIVE_STATE_CHANGED"
---@alias EVENT_DOMINATION_OBJECTIVE_TEAM_CHANGED "EVENT_DOMINATION_OBJECTIVE_TEAM_CHANGED"
---@alias EVENT_DOMINATION_OBJECTIVE_TIME_SWITCHED_CHANGED "EVENT_DOMINATION_OBJECTIVE_TIME_SWITCHED_CHANGED"
---@alias EVENT_DOMINATION_OBJECTIVE_TIME_TO_CAPTURE_CHANGED "EVENT_DOMINATION_OBJECTIVE_TIME_TO_CAPTURE_CHANGED"

---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_DOMINATION_OBJECTIVE_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, disabled: boolean }), sysEventName: EVENT_DOMINATION_OBJECTIVE_DISABLED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, owner: ENUM_DominationFightTeam, actualOwner: ENUM_DominationFightTeam }), sysEventName: EVENT_DOMINATION_OBJECTIVE_OWNER_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, progress: number }), sysEventName: EVENT_DOMINATION_OBJECTIVE_PROGRESS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, progressToCapture: number }), sysEventName: EVENT_DOMINATION_OBJECTIVE_PROGRESS_TO_CAPTURE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, radius: number }), sysEventName: EVENT_DOMINATION_OBJECTIVE_RADIUS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_DOMINATION_OBJECTIVE_REMOVED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, state: ENUM_DominationAreaState }), sysEventName: EVENT_DOMINATION_OBJECTIVE_STATE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, team: ENUM_DominationFightTeam }), sysEventName: EVENT_DOMINATION_OBJECTIVE_TEAM_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, timeSwitched: number }), sysEventName: EVENT_DOMINATION_OBJECTIVE_TIME_SWITCHED_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, timeToCapture: number }), sysEventName: EVENT_DOMINATION_OBJECTIVE_TIME_TO_CAPTURE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param id ObjectId
---@return nil | { id: ObjectId, firstteam: nil | table<integer, ObjectId>, secondTeam: nil | table<integer, ObjectId>, disabled: boolean, radius: number, owner: ENUM_DominationFightTeam, actualOwner: ENUM_DominationFightTeam, state: ENUM_DominationAreaState, progress: number, progressToCapture: number, timeSwitched: number, timeToCapture: number }
function dominationLib.GetMedalInfo( id ) end

---@return nil | table<integer, ObjectId>
function dominationLib.GetObjectives() end