---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_PROFICIENCY_ADDED "EVENT_PROFICIENCY_ADDED"
---@alias EVENT_PROFICIENCY_REMOVED "EVENT_PROFICIENCY_REMOVED"

---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_PROFICIENCY_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_PROFICIENCY_REMOVED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

