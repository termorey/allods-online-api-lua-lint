---@meta

---@class loot
loot = {}

--[[ ENUMS --]]

---@alias CHOICE_GREED_NEED_PASS unknown
---@alias CHOICE_GREED_NEED_GREED unknown
---@alias CHOICE_GREED_NEED_NEED unknown
---@alias CHOICE_GREED_NEED CHOICE_GREED_NEED_PASS | CHOICE_GREED_NEED_GREED | CHOICE_GREED_NEED_NEED

---@alias LOOT_SCHEME_TYPE_FREE_FOR_ALL unknown
---@alias LOOT_SCHEME_TYPE_MASTER unknown
---@alias LOOT_SCHEME_TYPE_GROUP unknown
---@alias LOOT_SCHEME_TYPE LOOT_SCHEME_TYPE_FREE_FOR_ALL | LOOT_SCHEME_TYPE_MASTER | LOOT_SCHEME_TYPE_GROUP

--[[ EVENTS --]]

---@alias EVENT_AVATAR_ITEM_DROPPED "EVENT_AVATAR_ITEM_DROPPED"
---@alias EVENT_AVATAR_ITEM_TAKEN "EVENT_AVATAR_ITEM_TAKEN"
---@alias EVENT_AVATAR_MONEY_DROPPED "EVENT_AVATAR_MONEY_DROPPED"
---@alias EVENT_AVATAR_MONEY_TAKEN "EVENT_AVATAR_MONEY_TAKEN"
---@alias EVENT_DISTRIBUTION_FINISHED "EVENT_DISTRIBUTION_FINISHED"
---@alias EVENT_GREED_NEED_ROLLS "EVENT_GREED_NEED_ROLLS"
---@alias EVENT_GREED_NEED_SELECTED "EVENT_GREED_NEED_SELECTED"
---@alias EVENT_LOOT_DISTRIBUTION_STARTED "EVENT_LOOT_DISTRIBUTION_STARTED"
---@alias EVENT_LOOT_FOR_GREED_NEED "EVENT_LOOT_FOR_GREED_NEED"
---@alias EVENT_LOOTSELECTOR_CHANGED "EVENT_LOOTSELECTOR_CHANGED"
---@alias EVENT_LOOT_TO_DISTRIBUTE "EVENT_LOOT_TO_DISTRIBUTE"

---@overload fun(eventFunction: fun(data: { itemObject: ValuedObject, actionType: ENUM_EnumTakeItemActionType }), sysEventName: EVENT_AVATAR_ITEM_DROPPED)
---@overload fun(eventFunction: fun(data: { itemObject: ValuedObject, actionType: ENUM_EnumTakeItemActionType }), sysEventName: EVENT_AVATAR_ITEM_TAKEN)
---@overload fun(eventFunction: fun(data: { money: integer, actionType: ENUM_EnumTakeItemActionType }), sysEventName: EVENT_AVATAR_MONEY_DROPPED)
---@overload fun(eventFunction: fun(data: { money: integer, actionType: ENUM_EnumTakeItemActionType }), sysEventName: EVENT_AVATAR_MONEY_TAKEN)
---@overload fun(eventFunction: fun(data: { rollId: ObjectId }), sysEventName: EVENT_DISTRIBUTION_FINISHED)
---@overload fun(eventFunction: fun(data: { rollId: ObjectId, results: table<integer, { looterId: ObjectId | nil, looterName: WString, roll: integer }> }), sysEventName: EVENT_GREED_NEED_ROLLS)
---@overload fun(eventFunction: fun(data: { rollId: ObjectId, looterId: ObjectId | nil, looterName: WString, choice: CHOICE_GREED_NEED }), sysEventName: EVENT_GREED_NEED_SELECTED)
---@overload fun(eventFunction: fun(data: { itemObject: ValuedObject }), sysEventName: EVENT_LOOT_DISTRIBUTION_STARTED)
---@overload fun(eventFunction: fun(data: { rollId: ObjectId, itemId: ObjectId, count: integer }), sysEventName: EVENT_LOOT_FOR_GREED_NEED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_LOOTSELECTOR_CHANGED)
---@overload fun(eventFunction: fun(data: { rollId: ObjectId, itemId: ObjectId, looters: table<integer, UniqueId> }), sysEventName: EVENT_LOOT_TO_DISTRIBUTE)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return boolean | nil
function loot.CanSetLootScheme() end

---@return { allLoot: table<integer, LootGroupId> }
function loot.GetCommonInfo() end

---@return integer
function loot.GetGreedNeedForLootTimeMs() end

---@param rollId ObjectId
---@return integer
function loot.GetGreedNeedTimeRemainingMs( rollId ) end

---@return { lootGroup: LootGroupId }
function loot.GetLootGroupPartInfo() end

---@return LOOT_SCHEME_TYPE
function loot.GetLootScheme() end

---@return ITEM_QUALITY
function loot.GetMinItemQualityForLootScheme() end

---@param rollId ObjectId
---@param choice CHOICE_GREED_NEED
function loot.SelectGreedNeedForLoot( rollId, choice ) end

---@param lootGroupId LootGroupId
function loot.SelectLootGroup( lootGroupId ) end

---@param rollId ObjectId
---@param winnerId ObjectId
function loot.SelectWinnerForLoot( rollId, winnerId ) end

---@param scheme LOOT_SCHEME_TYPE
function loot.SetLootScheme( scheme ) end

---@param quality ITEM_QUALITY
function loot.SetMinItemQualityForLootScheme( quality ) end

---@param rollId ObjectId
function loot.SwitchToGreedNeed( rollId ) end