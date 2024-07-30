---@meta

---@class depositeBox
depositeBox = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_DEPOSITE_BOX_CHANGED "EVENT_DEPOSITE_BOX_CHANGED"
---@alias EVENT_DEPOSITE_BOX_ITEM_EFFECT "EVENT_DEPOSITE_BOX_ITEM_EFFECT"
---@alias EVENT_DEPOSITE_BOX_SIZE_CHANGED "EVENT_DEPOSITE_BOX_SIZE_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_DEPOSITE_BOX_CHANGED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, slot: integer, slotType: ITEM_CONT }), sysEventName: EVENT_DEPOSITE_BOX_ITEM_EFFECT) # deprecated
---@overload fun(eventFunction: fun(), sysEventName: EVENT_DEPOSITE_BOX_SIZE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param inventorySlot integer
function depositeBox.ChangeTypeByItem( inventorySlot ) end

---@return ObjectId
function depositeBox.GetDepositeBoxItemId() end

---@param depositeSlot integer
---@return ObjectId | nil
function depositeBox.GetItemId( depositeSlot ) end

---@return integer
function depositeBox.GetSlotCount() end

---@param inventorySlot  integer
---@return boolean
function depositeBox.IsChangeTypeItem( inventorySlot ) end

---@param itemId ObjectId
---@return boolean
function depositeBox.IsChangeTypeItemById( itemId ) end

---@param depositeSlot integer
---@return boolean
function depositeBox.IsItemEnabled( depositeSlot ) end

---@param depositeSlotFrom integer
---@param depositeSlotTo integer
---@return boolean
function depositeBox.IsMoveModified( depositeSlotFrom, depositeSlotTo ) end

---@param depositeSlotFrom integer
---@param depositeSlotTo integer
---@param countNoMore integer | nil
function depositeBox.Move( depositeSlotFrom, depositeSlotTo, countNoMore ) end

---@param itemId ObjectId
---@param depositeSlotTo integer | nil
---@param countNoMore integer | nil
function depositeBox.PutItemIn( itemId, depositeSlotTo, countNoMore ) end

---@param depositeSlotFrom integer | nil
---@param inventorySlotTo integer | nil
---@param countNoMore integer | nil
function depositeBox.TakeFrom( depositeSlotFrom, inventorySlotTo, countNoMore ) end