---@meta

---@class poweredLSWeaponsLib
poweredLSWeaponsLib = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_POWEREDLSWEAPONS_CHANGED "EVENT_POWEREDLSWEAPONS_CHANGED"
---@alias EVENT_POWEREDLSWEAPONS_ITEM_ADDED "EVENT_POWEREDLSWEAPONS_ITEM_ADDED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_POWEREDLSWEAPONS_CHANGED)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId, slot: integer }), sysEventName: EVENT_POWEREDLSWEAPONS_ITEM_ADDED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param itemId ObjectId
function poweredLSWeaponsLib.EquipItem( itemId ) end

---@return RuleId | nil
function poweredLSWeaponsLib.GetEvent() end

---@return nil | table<integer, ObjectId>
function poweredLSWeaponsLib.GetEventItemsList() end

---@return table<integer, { item: ObjectId, inactiveItem: ObjectId | nil }>
function poweredLSWeaponsLib.GetItems() end

---@param itemId ObjectId
---@param itemClass ItemClassId
---@return ObjectId | nil
function poweredLSWeaponsLib.GetItemToReplace( itemId, itemClass ) end

---@param itemId ObjectId
---@return boolean
function poweredLSWeaponsLib.IsItemEquipped( itemId ) end

---@param itemId ObjectId
---@return boolean
function poweredLSWeaponsLib.IsItemInPoweredContainer( itemId ) end

---@param itemId ObjectId
function poweredLSWeaponsLib.UnequipItem( itemId ) end