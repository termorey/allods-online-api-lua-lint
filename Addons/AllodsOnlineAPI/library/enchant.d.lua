---@meta

---@class enchant
enchant = {}

--[[ ENUMS --]]

---@alias ENUM_EnchantInsertionResult
---| "ENUM_EnchantInsertionResult_SUCCESS" # причин, по которым нельзя вставить энчант в предмет, не обнаружено
---| "ENUM_EnchantInsertionResult_UNKNOWN" # энчант нельзя вставить в предмет, но причина неклассифицируема (например некорректные данные)
---| "ENUM_EnchantInsertionResult_ITEM_UNBOUND" # предмет, в который собираются вставить энчант, не привязан к аватару
---| "ENUM_EnchantInsertionResult_UNFITTED_ITEM_STATS" # у данного предмета нет статов, которые мог бы улучшить данный энчант
---| "ENUM_EnchantInsertionResult_UNFITTED_DRESS_SLOT_UNLOCKS" # слот эквипмента, в который вставлен предмет, не позволяет вставлять предметы с качеством, соответствующим качеству данного энчанта

---@alias ENUM_EnchantSlot_Offence integer | "ENUM_EnchantSlot_Offence"
---@alias ENUM_EnchantSlot_Defence integer | "ENUM_EnchantSlot_Defence"
---@alias ENUM_EnchantSlot_Special integer | "ENUM_EnchantSlot_Special"
---@alias ENUM_EnchantSlot ENUM_EnchantSlot_Offence | ENUM_EnchantSlot_Defence | ENUM_EnchantSlot_Special

--[[ EVENTS --]]

---@alias EVENT_ITEM_SERVER_CMD_FINISHED "EVENT_ITEM_SERVER_CMD_FINISHED"

---@overload fun(eventFunction: fun(data: { itemId: ObjectId,  isSuccess: boolean }), sysEventName: EVENT_ITEM_SERVER_CMD_FINISHED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param enchantItemId ObjectId
---@param itemId ObjectId
---@return nil | { success: boolean, cause: ENUM_EnchantInsertionResult }
function enchant.CanInsertEnchant( enchantItemId, itemId ) end

---@param itemId ObjectId
---@return boolean
function enchant.CanInsertEnchants( itemId ) end

---@param itemId ObjectId
---@param slot ENUM_EnchantSlot
function enchant.EnchantExtract( itemId, slot ) end

---@param enchantItemId ObjectId
---@param itemId ObjectId
function enchant.EnchantInsert( enchantItemId, itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, ITEM_QUALITY>
function enchant.GetCompatibleQualities( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, ObjectId>
function enchant.GetEnchants( itemId ) end

---@param itemId ObjectId
---@return ENUM_EnchantSlot
function enchant.GetEnchantSlot( itemId ) end

---@param itemId ObjectId
---@return nil | table<ENUM_EnchantSlot, boolean>
function enchant.GetItemSlots( itemId ) end

---@param itemId ObjectId
---@return nil | table<InnateStats, nil | table<integer, unknown>>
function enchant.GetItemSlotsInfo( itemId ) end

---@param itemId ObjectId
---@return boolean
function enchant.IsEnchant( itemId ) end