---@meta

--[[ ENUMS --]]

---@alias ENUM_BoxOperationResult
---| "ENUM_BoxOperationResult_SlotNumberOutOfBounds"
---| "ENUM_BoxOperationResult_SlotIsEmpty"
---| "ENUM_BoxOperationResult_NoFreeSpace"
---| "ENUM_BoxOperationResult_ItemIsNotBox"
---| "ENUM_BoxOperationResult_ItemIsNotKey"
---| "ENUM_BoxOperationResult_BoxLocked"
---| "ENUM_BoxOperationResult_BoxUnlocked"
---| "ENUM_BoxOperationResult_KeyDoesNotMatch"
---| "ENUM_BoxOperationResult_OperationSuccess"
---| "ENUM_BoxOperationResult_TransactionFailed"
---| "ENUM_BoxOperationResult_WrongStackCount"

--[[ EVENTS --]]

---@alias EVENT_BOX_OPERATION_RESULT "EVENT_BOX_OPERATION_RESULT"
---@alias EVENT_INVENTORY_ITEM_EFFECT "EVENT_INVENTORY_ITEM_EFFECT"
---@alias EVENT_ITEM_QUESTS_RECEIVED "EVENT_ITEM_QUESTS_RECEIVED"

---@overload fun(eventFunction: fun(data: { sysResult: ENUM_BoxOperationResult }), sysEventName: EVENT_BOX_OPERATION_RESULT)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, slot: integer, slotType: ITEM_CONT } | { effect: EFFECT_TYPE_COOLDOWN_STARTED, duration: integer, remaining: integer }), sysEventName: EVENT_INVENTORY_ITEM_EFFECT)
---@overload fun(eventFunction: fun(data: { slot: integer, itemId: ObjectId | nil }), sysEventName: EVENT_ITEM_QUESTS_RECEIVED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

