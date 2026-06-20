---@meta

---@class depositeBox
depositeBox = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_DEPOSITE_BOX_CHANGED "EVENT_DEPOSITE_BOX_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_DEPOSITE_BOX_CHANGED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, slot: integer, slotType: ITEM_CONT }), sysEventName: EVENT_DEPOSITE_BOX_ITEM_EFFECT) # deprecated
---@overload fun(eventFunction: fun(), sysEventName: EVENT_DEPOSITE_BOX_SIZE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]