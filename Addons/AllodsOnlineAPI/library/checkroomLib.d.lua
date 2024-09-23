---@meta

---@class checkroomLib
checkroomLib = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_CHECKROOM_CHANGED "EVENT_CHECKROOM_CHANGED"
---@alias EVENT_CHECKROOM_ITEM_ADDED "EVENT_CHECKROOM_ITEM_ADDED"
---@alias EVENT_CHECKROOM_ITEM_CHANGED "EVENT_CHECKROOM_ITEM_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_CHECKROOM_CHANGED)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId }), sysEventName: EVENT_CHECKROOM_ITEM_ADDED)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId }), sysEventName: EVENT_CHECKROOM_ITEM_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function checkroomLib.Close() end

---@param itemId ObjectId
function checkroomLib.EquipItem( itemId ) end

---@param itemIds ObjectId[]
function checkroomLib.EquipItems( itemIds ) end

---@param itemId ObjectId
---@return ObjectId | nil
function checkroomLib.FindCheckroomItem( itemId ) end

---@return table<integer, CheckRoomCategoryId>
--- TODO: params type?
function checkroomLib.GetCategories() end

---@param categoryId CheckRoomCategoryId
---@return table<integer, CheckRoomCollectionId>
function checkroomLib.GetCollections( categoryId ) end

---@param itemId ObjectId
---@return nil | { categoryId: CheckRoomCategoryId, collectionId: CheckRoomCollectionId }
function checkroomLib.GetItemCategories( itemId ) end

---@param collectionId CheckRoomCollectionId
---@return table<integer, ObjectId>
function checkroomLib.GetItems( collectionId ) end

---@param collectionId CheckRoomCollectionId
---@return table<integer, { is: ObjectId, name: WString, icon: TextureId, quality: ITEM_QUALITY, dressSlot: DRESS_SLOT, hideNotLearned: boolean }>
function checkroomLib.GetSortedItemsInfo( collectionId ) end

---@param collectionId CheckRoomCollectionId
---@return table<integer, SpellId>
function checkroomLib.GetSpells( collectionId ) end

---@param itemId ObjectId
---@return boolean
function checkroomLib.IsCheckroomItem( itemId ) end

---@param spellId SpellId
---@return boolean
function checkroomLib.IsHideSpellWhileNotLearned( spellId ) end

---@param itemId ObjectId
---@return boolean
function checkroomLib.IsItemEquipped( itemId ) end

---@param itemId ObjectId
---@return boolean
function checkroomLib.IsItemInCheckroom( itemId ) end

---@param itemId ObjectId[]
---@return table<ObjectId, boolean>
--- TODO: need check return type
function checkroomLib.IsItemsEquipped( itemId ) end

---@param itemIds ObjectId[]
---@return table<ObjectId, boolean>
--- TODO: need check return type
function checkroomLib.IsItemsInCheckroom( itemIds ) end

---@return boolean
function checkroomLib.IsOpened() end

function checkroomLib.Open() end