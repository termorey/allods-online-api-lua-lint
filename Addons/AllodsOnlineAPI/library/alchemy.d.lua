---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_ALCHEMY_CANCELED "EVENT_ALCHEMY_CANCELED"
---@alias EVENT_ALCHEMY_ITEM_PLACED "EVENT_ALCHEMY_ITEM_PLACED"
---@alias EVENT_ALCHEMY_NOT_ALCHEMY_ITEM "EVENT_ALCHEMY_NOT_ALCHEMY_ITEM"
---@alias EVENT_ALCHEMY_NOT_AVAILABLE_RESOURCES "EVENT_ALCHEMY_NOT_AVAILABLE_RESOURCES"
---@alias EVENT_ALCHEMY_NOT_ENOUGH_COMPONENTS "EVENT_ALCHEMY_NOT_ENOUGH_COMPONENTS"
---@alias EVENT_ALCHEMY_REACTION_FINISHED "EVENT_ALCHEMY_REACTION_FINISHED"
---@alias EVENT_ALCHEMY_RECIPES_CHANGED "EVENT_ALCHEMY_RECIPES_CHANGED"
---@alias EVENT_ALCHEMY_SCORE_CHANGED "EVENT_ALCHEMY_SCORE_CHANGED"
---@alias EVENT_ALCHEMY_STARTED "EVENT_ALCHEMY_STARTED"

---@overload fun(eventFunction: fun(data: { isSuccess: boolean }), sysEventName: EVENT_ALCHEMY_CANCELED)
---@overload fun(eventFunction: fun(data: { slot: integer, placed: boolean }), sysEventName: EVENT_ALCHEMY_ITEM_PLACED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ALCHEMY_NOT_ALCHEMY_ITEM)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId, slot: number }), sysEventName: EVENT_ALCHEMY_NOT_AVAILABLE_RESOURCES)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ALCHEMY_NOT_ENOUGH_COMPONENTS)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ALCHEMY_REACTION_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ALCHEMY_RECIPES_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ALCHEMY_SCORE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ALCHEMY_STARTED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

