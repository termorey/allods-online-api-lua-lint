---@meta

---@class containerLib
containerLib = {}

--[[ ENUMS --]]

---@alias ITEM_CONT_EQUIPMENT integer # одежда и руны
---@alias ITEM_CONT_EQUIPMENT_RITUAL integer # одежда ("драконий облик")
---@alias ITEM_CONT_EQUIPMENT_RITUAL_1 integer # Экипировка 2 слой ("драконий облик") - первый набор
---@alias ITEM_CONT_EQUIPMENT_RITUAL_2 integer # Экипировка 2 слой ("драконий облик") - второй набор
---@alias ITEM_CONT_EQUIPMENT_RITUAL_3 integer # Экипировка 2 слой ("драконий облик") - третий набор
---@alias ITEM_CONT_INVENTORY integer # сумка
---@alias ITEM_CONT_DEPOSITE integer # банковская ячейка
---@alias ITEM_CONT_INVENTORY_OVERFLOW integer # переполненная сумка
---@alias ITEM_CONT_BESTIARY integer # Бестиарий, контейнер с существами для личного острова
---@alias ITEM_CONT_CHECKROOM integer # Гардероб
---@alias ITEM_CONT_POWEREDLSWEAPON integer # прокаченое оружие
---@alias ITEM_CONT_GEMS integer # предметы для дерева талантов души
---@alias ITEM_CONT ITEM_CONT_EQUIPMENT | ITEM_CONT_EQUIPMENT_RITUAL | ITEM_CONT_EQUIPMENT_RITUAL_1 | ITEM_CONT_EQUIPMENT_RITUAL_2 | ITEM_CONT_EQUIPMENT_RITUAL_3 | ITEM_CONT_INVENTORY | ITEM_CONT_DEPOSITE | ITEM_CONT_INVENTORY_OVERFLOW | ITEM_CONT_BESTIARY | ITEM_CONT_CHECKROOM | ITEM_CONT_POWEREDLSWEAPON | ITEM_CONT_GEMS

--[[ EVENTS --]]

---@alias EVENT_CONTAINER_CHANGED "EVENT_CONTAINER_CHANGED"
---@alias EVENT_CONTAINER_ITEM_CHANGED "EVENT_CONTAINER_ITEM_CHANGED"
---@alias EVENT_CONTAINER_ITEM_EFFECT "EVENT_CONTAINER_ITEM_EFFECT"
---@alias EVENT_CONTAINER_ITEM_REMOVED "EVENT_CONTAINER_ITEM_REMOVED"

---@overload fun(eventFunction: fun(data: { slotType: ITEM_CONT }), sysEventName: EVENT_CONTAINER_CHANGED)
---@overload fun(eventFunction: fun(data: { ownerId: ObjectId, slotType: ITEM_CONT, slot: integer, itemId: ObjectId }), sysEventName: EVENT_CONTAINER_ITEM_CHANGED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, itemId: ObjectId, slot: integer, slotType: ITEM_CONT } | { effect: EFFECT_TYPE_COOLDOWN_STARTED, itemId: ObjectId, slot: integer, slotType: ITEM_CONT, duration: integer, remaining: integer }), sysEventName: EVENT_CONTAINER_ITEM_EFFECT)
---@overload fun(eventFunction: fun(data: { ownerId: ObjectId, slotType: ITEM_CONT, slot: integer, sysName: string, isRemovedItem: boolean }), sysEventName: EVENT_CONTAINER_ITEM_REMOVED)
---@overload fun(eventFunction: fun(data: { slotType: ITEM_CONT }), sysEventName: EVENT_EQUIPMENT_ACTIVATE)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param itemId ObjectId # идентификатор предмета
---@param slotType ITEM_CONT_EQUIPMENT # тип контейнера места назначения
---@param slot integer | nil # номер слота в контейнере. Если указан nil, то слот подберётся автоматически
---@param count integer | nil # количество перемещаемых предметов. Если указан nil, то не проверяется
---@return boolean | nil
function containerLib.CheckMoveItem( itemId, slotType, slot, count ) end

---@param slotTypeFrom ITEM_CONT_EQUIPMENT # тип контейнера места источника
---@param slotFrom integer # номер слота в контейнере источнике
---@param slotTypeTo ITEM_CONT_EQUIPMENT # тип контейнера места назначения
---@param slotTo integer | nil # номер слота в контейнере назначения. Если указан nil, то слот подберётся автоматически
---@param count integer | nil # количество перемещаемых предметов. Если указан nil, то не проверяется
---@return boolean | nil
function containerLib.CheckMoveSlotItem( slotTypeFrom, slotFrom, slotTypeTo, slotTo, count ) end

---@param slotType ITEM_CONT
function containerLib.Close( slotType ) end

---@param slotType number ITEM_CONT_EQUIPMENT - тип контейнера с предметами
---@param id ObjectId | ItemId - идентификатор предмета
---@return nil | table<integer, ObjectId>
function containerLib.GetAllResourceItemIds( slotType, id ) end

---@param slotType ITEM_CONT_EQUIPMENT # тип контейнера с предметами
---@param id ObjectId # идентификатор предмета
---@return nil | table<integer, ObjectId>
function containerLib.GetAllSimilarItemIds( slotType, id ) end

---@param slotType ITEM_CONT_EQUIPMENT # тип контейнера с предметами
---@param id ObjectId # идентификатор предмета
---@return nil | ObjectId
function containerLib.GetFirstResourceItemId( slotType, id ) end

---@param slotType ITEM_CONT_EQUIPMENT # тип контейнера с предметами
---@param id ObjectId # идентификатор предмета
---@return nil | ObjectId
function containerLib.GetFirstSimilarItemId( slotType, id ) end

---@param slotType ITEM_CONT
---@param slot number
function containerLib.GetItem( slotType, slot ) end

---@param slotType ITEM_CONT
---@return table<integer, ItemId>
function containerLib.GetItems( slotType ) end

---@param itemId ObjectId
---@param slotType ITEM_CONT
---@return nil | { slotType: ITEM_CONT, slot: integer }
function containerLib.GetItemSlot( itemId, slotType ) end

---@param id ObjectId | ItemId # идентификатор предмета
---@param slotType ITEM_CONT_EQUIPMENT # тип контейнера с предметами
---@return integer # количество предметов
function containerLib.GetResourceItemStackCount( id, slotType ) end

---@param id ObjectId # идентификатор предмета
---@param slotType ITEM_CONT_EQUIPMENT # тип контейнера с предметами
---@return integer # количество предметов
function containerLib.GetSimilarItemStackCount( id, slotType ) end

---@param slotType ITEM_CONT
---@return integer
function containerLib.GetSize( slotType ) end

---@param slotType ITEM_CONT
---@return boolean
function containerLib.IsInteracting( slotType ) end

---@param itemId ObjectId # идентификатор экземпляра предмета
---@return boolean # true - если активных транзакций с данным предметом нет и можно выполнять операции, в противном случае false
function containerLib.IsItemEnabled( itemId ) end

---@param slotType ITEM_CONT_EQUIPMENT # тип контейнера с предметами
---@param slot number # номер слота в контейнере
---@return boolean # true - если активных транзакций с данным слотом нет и можно выполнять операции, в противном случае false
function containerLib.IsItemSlotEnabled( slotType, slot ) end

---@param slotType ITEM_CONT
---@return boolean
function containerLib.IsOpen( slotType ) end

---@param itemId ObjectId
---@param slotType ITEM_CONT
---@param slot integer | nil
---@param count integer | nil
function containerLib.MoveItem( itemId, slotType, slot, count ) end

---@pram slotTypeFrom ITEM_CONT_EQUIPMENT # тип контейнера места источника
---@pram slotFrom integer # номер слота в контейнере источнике
---@pram slotTypeTo ITEM_CONT_EQUIPMENT # тип контейнера места назначения
---@pram slotTo integer or nil # номер слота в контейнере назначения. Если указан nil, то слот подберётся автоматически
---@pram count integer or nil # количество перемещаемых предметов. Если указан nil, то переместится весь слот
function containerLib.MoveSlotItem( slotTypeFrom, slotFrom, slotTypeTo, slotTo, count ) end

---@param slotType ITEM_CONT
function containerLib.Open( slotType ) end