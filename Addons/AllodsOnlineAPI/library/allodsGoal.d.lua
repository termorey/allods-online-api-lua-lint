---@meta

--[[ ENUMS --]]

---@alias GOAL_STATE_NOT_SHOWS integer # не доступна и не должна отображаться
---@alias GOAL_STATE_ACTIVE integer # доступна для выполнения
---@alias GOAL_STATE_COMPLETED integer # выполнена
---@alias GOAL_STATE GOAL_STATE_NOT_SHOWS | GOAL_STATE_ACTIVE | GOAL_STATE_COMPLETED

--[[ EVENTS --]]

---@alias EVENT_ALLODS_GOAL_ADDED "EVENT_ALLODS_GOAL_ADDED"
---@alias EVENT_ALLODS_GOAL_CHANGED "EVENT_ALLODS_GOAL_CHANGED"
---@alias EVENT_ALLODS_GOAL_COMPLETED "EVENT_ALLODS_GOAL_COMPLETED"

---@overload fun(eventFunction: fun(data: { goals: table<integer, GoalId> }), sysEventName: EVENT_ALLODS_GOAL_ADDED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ALLODS_GOAL_CHANGED)
---@overload fun(eventFunction: fun(data: { goals: table<integer, GoalId> }), sysEventName: EVENT_ALLODS_GOAL_COMPLETED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

