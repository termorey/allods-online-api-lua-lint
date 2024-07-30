---@meta

---@class containerLib
containerLib = {}

--[[ ENUMS --]]

---@alias ITEM_CONT_EQUIPMENT integer # одежда и руны
---@alias ITEM_CONT_EQUIPMENT_RITUAL integer # одежда ("драконий облик")
---@alias ITEM_CONT_INVENTORY integer # сумка
---@alias ITEM_CONT_DEPOSITE integer # банковская ячейка
---@alias ITEM_CONT_INVENTORY_OVERFLOW integer # переполненная сумка
---@alias ITEM_CONT_BESTIARY integer # Бестиарий, контейнер с существами для личного острова
---@alias ITEM_CONT_CHECKROOM integer # Гардероб
---@alias ITEM_CONT_POWEREDLSWEAPON integer # прокаченое оружие
---@alias ITEM_CONT_GEMS integer # предметы для дерева талантов души
---@alias ITEM_CONT ITEM_CONT_EQUIPMENT | ITEM_CONT_EQUIPMENT_RITUAL | ITEM_CONT_INVENTORY | ITEM_CONT_DEPOSITE | ITEM_CONT_INVENTORY_OVERFLOW | ITEM_CONT_BESTIARY | ITEM_CONT_CHECKROOM | ITEM_CONT_POWEREDLSWEAPON | ITEM_CONT_GEMS

--[[ EVENTS --]]

---@alias EVENT_CONTAINER_CHANGED "EVENT_CONTAINER_CHANGED"
---@alias EVENT_CONTAINER_ITEM_CHANGED "EVENT_CONTAINER_ITEM_CHANGED"
---@alias EVENT_CONTAINER_ITEM_EFFECT "EVENT_CONTAINER_ITEM_EFFECT"
---@alias EVENT_CONTAINER_ITEM_REMOVED "EVENT_CONTAINER_ITEM_REMOVED"
---@alias EVENT_EQUIPMENT_ACTIVATE "EVENT_EQUIPMENT_ACTIVATE"

---@overload fun(eventFunction: fun(data: { slotType: ITEM_CONT }), sysEventName: EVENT_CONTAINER_CHANGED)
---@overload fun(eventFunction: fun(data: { ownerId: ObjectId, slotType: ITEM_CONT, slot: integer, itemId: ObjectId }), sysEventName: EVENT_CONTAINER_ITEM_CHANGED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, itemId: ObjectId, slot: integer, slotType: ITEM_CONT } | { effect: EFFECT_TYPE_COOLDOWN_STARTED, itemId: ObjectId, slot: integer, slotType: ITEM_CONT, duration: integer, remaining: integer }), sysEventName: EVENT_CONTAINER_ITEM_EFFECT)
---@overload fun(eventFunction: fun(data: { ownerId: ObjectId, slotType: ITEM_CONT, slot: integer, sysName: string, isRemovedItem: boolean }), sysEventName: EVENT_CONTAINER_ITEM_REMOVED)
---@overload fun(eventFunction: fun(data: { slotType: ITEM_CONT }), sysEventName: EVENT_EQUIPMENT_ACTIVATE)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param slotType ITEM_CONT
function containerLib.Close( slotType ) end

---@param slotType ITEM_CONT
---@param slot number
function containerLib.GetItem( slotType, slot ) end

---@param slotType ITEM_CONT
---@return nil | table<integer, ObjectId | nil>
function containerLib.GetItems( slotType ) end

---@param itemId ObjectId
---@return nil | { slotType: ITEM_CONT, slot: integer }
function containerLib.GetItemSlot( itemId ) end

---@param slotType ITEM_CONT
---@param itemId ObjectId
---@return number
function containerLib.GetItemStackCount( slotType, itemId ) end

---@param slotType ITEM_CONT
---@return integer
function containerLib.GetSize( slotType ) end

---@param slotType ITEM_CONT
---@return boolean
function containerLib.IsInteracting( slotType ) end

---@param slotType ITEM_CONT
---@return boolean
function containerLib.IsOpen( slotType ) end

---@param itemId ObjectId
---@param slotType ITEM_CONT
---@param slot integer | nil
---@param count integer | nil
function containerLib.MoveItem( itemId, slotType, slot, count ) end

---@param slotType ITEM_CONT
function containerLib.Open( slotType ) end