---@meta

---@class widgetsSystem
widgetsSystem = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_IME_SELECT_FINISHED "EVENT_IME_SELECT_FINISHED"
---@alias EVENT_IME_SELECT_STARTED "EVENT_IME_SELECT_STARTED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_IME_SELECT_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_IME_SELECT_STARTED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]
