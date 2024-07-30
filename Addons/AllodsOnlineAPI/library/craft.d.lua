---@meta

---@class craft
craft = {}

--[[ ENUMS --]]

---@alias ENUM_DiceCraftCmdType
---| "ENUM_DiceCraftCmdType_PutItem" # соответствует craft.DiceCraftPutItem(itemId, slot, count)
---| "ENUM_DiceCraftCmdType_EmptySlot" # соответствует craft.DiceCraftEmptySlot(slot)
---| "ENUM_DiceCraftCmdType_StartGame" # соответствует protectedCraft.DiceCraftStartGame(recipeId)
---| "ENUM_DiceCraftCmdType_Reroll" # соответствует protectedCraft.DiceCraftReroll()
---| "ENUM_DiceCraftCmdType_FinishGame" # соответствует protectedCraft.DiceCraftFinishGame()
---| "ENUM_DiceCraftCmdType_CancelGame" # соответствует protectedCraft.DiceCraftCancelGame()
---| "ENUM_DiceCraftCmdType_UseInspiration" # соответствует craft.DiceCraftUseInspiration()
---| "ENUM_DiceCraftCmdType_IncQualification" # соответствует craft.IncreaseQualification()

--[[ EVENTS --]]

---@alias EVENT_DICE_CRAFT_CANCELED "EVENT_DICE_CRAFT_CANCELED"
---@alias EVENT_DICE_CRAFT_CMD_FAILED "EVENT_DICE_CRAFT_CMD_FAILED"
---@alias EVENT_DICE_CRAFT_FINISHED "EVENT_DICE_CRAFT_FINISHED"
---@alias EVENT_DICE_CRAFT_NOT_ENOUGH_COMPONENTS "EVENT_DICE_CRAFT_NOT_ENOUGH_COMPONENTS"
---@alias EVENT_DICE_CRAFT_PREPARED "EVENT_DICE_CRAFT_PREPARED"
---@alias EVENT_DICE_CRAFT_RECIPES_CHANGED "EVENT_DICE_CRAFT_RECIPES_CHANGED"
---@alias EVENT_DICE_CRAFT_SCORE_CHANGED "EVENT_DICE_CRAFT_SCORE_CHANGED"
---@alias EVENT_DICE_CRAFT_SLOT_CHANGED "EVENT_DICE_CRAFT_SLOT_CHANGED"
---@alias EVENT_DICE_CRAFT_STATUS_CHANGED "EVENT_DICE_CRAFT_STATUS_CHANGED"
---@alias EVENT_REFORGE_RESULT "EVENT_REFORGE_RESULT"
---@alias EVENT_REFORGE_RESULT_FAIL "EVENT_REFORGE_RESULT_FAIL"
---@alias EVENT_REFORGE_RESULT_READY "EVENT_REFORGE_RESULT_READY"

---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_DICE_CRAFT_CANCELED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId, cmdType: ENUM_DiceCraftCmdType }), sysEventName: EVENT_DICE_CRAFT_CMD_FAILED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_DICE_CRAFT_FINISHED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_DICE_CRAFT_NOT_ENOUGH_COMPONENTS)
---@overload fun(eventFunction: fun(data: { skillId: SkillId, isInitial: boolean, tool: ObjectId | ItemId }), sysEventName: EVENT_DICE_CRAFT_PREPARED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_DICE_CRAFT_RECIPES_CHANGED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_DICE_CRAFT_SCORE_CHANGED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId, slot: integer, itemId: ObjectId | nil }), sysEventName: EVENT_DICE_CRAFT_SLOT_CHANGED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId, rerollsLeft: integer, dices: table<integer, unknown>, isCursed: boolean }), sysEventName: EVENT_DICE_CRAFT_STATUS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_REFORGE_RESULT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_REFORGE_RESULT_FAIL)
---@overload fun(eventFunction: fun(data: { itemId: ObjectId }), sysEventName: EVENT_REFORGE_RESULT_READY)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param slot integer
function craft.DiceCraftEmptySlot( slot ) end

---@return nil | table<integer, integer>
function craft.DiceCraftGetCurrentDices() end

---@return nil | RecipeId
function craft.DiceCraftGetCurrentRecipe() end

---@return nil | table<integer, unknown>
function craft.DiceCraftGetDiceValues() end

---@return nil | table<integer, integer>
function craft.DiceCraftGetInspirationLevels() end

---@return nil | table<integer, RecipeId>
function craft.DiceCraftGetInspiredRecipes() end

---@return nil | table<integer, integer>
function craft.DiceCraftGetLockedSlots() end

---@return nil | table<integer, ObjectId | nil>
function craft.DiceCraftGetPlacedItems() end

---@param recipeId RecipeId
---@return integer | nil
function craft.DiceCraftGetRecipeInspiration( recipeId ) end

---@return nil | table<integer, RecipeId>
function craft.DiceCraftGetRecipes() end

---@param itemId ObjectId
---@return boolean
function craft.DiceCraftIsJoker( itemId ) end

---@param itemId ObjectId
---@param slot integer
---@param count integer
function craft.DiceCraftPutItem( itemId, slot, count ) end

---@param recipeItemId ObjectId
---@param inventoryItemId ObjectId
---@return boolean
function craft.DiceCraftRecipeIsSameItem( recipeItemId, inventoryItemId ) end

---@return nil | { maxLockedDices: integer, maxRecipeLevel: integer, rerolls: integer, inGame: boolean, currentDicesNumber: integer | nil, rerollsLeft: integer | nil }
function craft.DiceCraftState() end

function craft.DiceCraftUseInspiration() end

---@param choice integer
---@return boolean
function craft.FinishReforge( choice ) end

---@param recipeId RecipeId
---@return nil | { defaultItemId: ObjectId, results: table<integer, { diceValue: integer, itemId: ObjectId, resultQuantity: integer, bonusQuantity: integer }> }
function craft.GetDiceCraftRecipeResults( recipeId ) end

---@param slot integer
---@return ObjectId | nil
function craft.GetForgeComponent( slot ) end

---@return ForgeRecipeId | nil
function craft.GetForgeRecipe() end

---@param recipeId ForgeRecipeId
---@return nil | { name: WString, price: integer, description: ValuedText | nil, tierResource: ForgeResourceId | nil, result: ObjectId | nil, resources: table<integer, ObjectId>, available: boolean, requirements: RequirementsTable | nil, altCurrencies: table<integer, { currency: CurrencyId, count: integer }> }
function craft.GetForgeRecipeInfo( recipeId ) end

---@param ignorePredicates boolean | nil
---@return nil | table<integer, ForgeRecipeId>
function craft.GetForgeRecipes( ignorePredicates ) end

---@param ignorePredicates boolean | nil
---@return nil | table<integer | ForgeRecipeId>
function craft.GetGoldenSlotsForgeRecipes( ignorePredicates ) end

---@return nil | table<integer, ForgeResourceId>
function craft.GetGoldenSlotsForgeTiersOrder() end

---@return integer | nil
function craft.DiceCraftGetItemSlotsCount() end

---@param slot integer
---@return ObjectId | nil
function craft.GetReforgeComponent( slot ) end

---@param itemId ObjectId
---@param offenceMode boolean
---@return nil | { price: number, recipe: ReforgeResourceId, resources: table<integer, ObjectId>, altCurrencies: table<integer, { currency: CurrencyId, count: integer }> }
function craft.GetReforgeInfo( itemId, offenceMode ) end

---@return nil | { recipe: ReforgeResourceId, itemId: ObjectId }
function craft.GetReforgeRecipe() end

---@return nil | table<integer, ObjectId>
function craft.GetReforgeVariants() end

function craft.IncreaseQualification() end

---@return boolean
function craft.MakeForge() end

---@return boolean
function craft.MakeReforge() end

---@param slot integer
---@param itemId ObjectId | nil
---@return boolean
function craft.PutForgeComponent( slot, itemId ) end

---@param slot integer
---@param itemId ObjectId | nil
---@return boolean
function craft.PutReforgeComponent( slot, itemId ) end

---@param recipeId ForgeCraftRecipeId
---@return boolean
function craft.SetForgeRecipe( recipeId ) end

---@param resorceId ReforgeResourceId
---@param itemId ObjectId
---@return boolean
function craft.SetReforgeRecipe( resorceId, itemId ) end