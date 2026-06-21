---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_CONDITION_EVENT "EVENT_CONDITION_EVENT"

---@overload fun(eventFunction: fun(data: { alias: string, isValid: boolean }), sysEventName: EVENT_CONDITION_EVENT)
function common.RegisterEventHandler( eventFunction, sysEventName, filter, registerPersonal ) end

--[[ FUNCTIONS --]]

