---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_HEARTHSTONE_COOLDOWN_FINISHED "EVENT_HEARTHSTONE_COOLDOWN_FINISHED"
---@alias EVENT_HEARTHSTONE_COOLDOWN_STARTED "EVENT_HEARTHSTONE_COOLDOWN_STARTED"
---@alias EVENT_HEARTHSTONE_CREATED "EVENT_HEARTHSTONE_CREATED"
---@alias EVENT_HEARTHSTONE_DESTROYED "EVENT_HEARTHSTONE_DESTROYED"
---@alias EVENT_HEARSTONE_LOCATOR_CHANGED "EVENT_HEARSTONE_LOCATOR_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_HEARTHSTONE_COOLDOWN_FINISHED)
---@overload fun(eventFunction: fun(data: { duration: integer, remaining: integer }), sysEventName: EVENT_HEARTHSTONE_COOLDOWN_STARTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HEARTHSTONE_CREATED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HEARTHSTONE_DESTROYED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HEARSTONE_LOCATOR_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

