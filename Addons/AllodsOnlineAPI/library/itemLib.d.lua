---@meta

---@class itemLib
itemLib = {}

--[[ ENUMS --]]

---@alias ENUM_FloatingBudgetType_MainBudget unknown
---@alias ENUM_FloatingBudgetType_DefenceBudget unknown
---@alias ENUM_FloatingBudgetType_OffenceBudget unknown
---@alias ENUM_FloatingBudgetType ENUM_FloatingBudgetType_MainBudget | ENUM_FloatingBudgetType_DefenceBudget | ENUM_FloatingBudgetType_OffenceBudget

---@alias ENUM_SpecialStatType_Offence unknown -- атакующие
---@alias ENUM_SpecialStatType_Defence unknown -- защитные
---@alias ENUM_SpecialStatType ENUM_SpecialStatType_Offence | ENUM_SpecialStatType_Defence

---@alias ENUM_ToolProperty
---| "ENUM_ToolProperty_Quality"
---| "ENUM_ToolProperty_Stable"
---| "ENUM_ToolProperty_Handy"
---| "ENUM_ToolProperty_Optimized"

---@alias ENUM_ItemSource_Quest string
---@alias ENUM_ItemSource_FixedDrop string
---@alias ENUM_ItemSource_WorldDrop string
---@alias ENUM_ItemSource_Crafted string
---@alias ENUM_ItemSource_Conjured string
---@alias ENUM_ItemSource_Vendor string
---@alias ENUM_ItemSource_QuestItem string
---@alias ENUM_ItemSource ENUM_ItemSource_Quest | ENUM_ItemSource_FixedDrop | ENUM_ItemSource_WorldDrop | ENUM_ItemSource_Crafted | ENUM_ItemSource_Conjured | ENUM_ItemSource_Vendor | ENUM_ItemSource_QuestItem

--[[ EVENTS --]]

---@alias EVENT_ITEM_RELATED_QUESTS_CHANGED "EVENT_ITEM_RELATED_QUESTS_CHANGED"

---@overload fun(eventFunction: fun(data: { itemId: ObjectId }), sysEventName: EVENT_ITEM_RELATED_QUESTS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param itemId ObjectId
---@return nil | { isInNotPredicate: boolean, sysCause: ENUM_ActionFailCause }
function itemLib.GetBlockingPredicateCause( itemId ) end

---@param sourceId ObjectId
---@return nil | boolean
function itemLib.CanActivateForUseItem( sourceId ) end

---@param sourceId ObjectId
---@return nil | boolean
function itemLib.CanActivateForUseOnItem( sourceId ) end

---@param itemId ObjectId
---@return nil | boolean
function itemLib.CanActivateForUseOnMount( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.CanCreateAuction( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.CanDrop( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.CanSendByMail( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.CanTrade( itemId ) end

---@param sourceId ObjectId
---@param targerId ObjectId
---@return nil | boolean
function itemLib.CanUseOnItem( sourceId, targerId ) end

---@param itemId ObjectId
---@param mountId ObjectId
---@return nil | boolean
function itemLib.CanUseOnMount( itemId, mountId ) end

---@param itemId ObjectId
---@return integer
function itemLib.CountSimilarItemInBag( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, { actionGroupId: ActionGroupId | nil, statBonuses: table<ENUM_InnateStats, number | nil> }>
function itemLib.GetActionGroupsInfo( itemId ) end

---@param itemId ObjectId
---@return nil | { isInactive: boolean, cost: integer | nil, isItemActivator: boolean }
function itemLib.GetActivationInfo( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, { name: WString, description: WString, image: TextureId }>
function itemLib.GetActivators( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, CurrencyId>
function itemLib.GetActivatorsAlternative( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, { currencyId: CurrencyId, value: integer }>
function itemLib.GetAlternativePriceInfo( itemId ) end

---@param itemId ObjectId
---@return nil | { isBound: boolean, binding: ITEM_BINDING_BIND, guildBound: number | nil, bindDescription: WString | nil }
function itemLib.GetBindingInfo( itemId ) end

---@param itemId ObjectId
---@return nil | { innateStats: InnateStats, resistances: InnateStats, miscStats: { power: table<integer, { base: number, effective: number, enchants: number }>, stamina: table<integer, { base: number, effective: number, enchants: number }>, wisdom: table<integer, { base: number, effective: number, enchants: number }>, minDamage: table<integer, { base: number, effective: number, enchants: number }>, maxDamage: table<integer, { base: number, effective: number, enchants: number }>, spellPower: table<integer, { base: number, effective: number, enchants: number }>, maxSpellPower: table<integer, { base: number, effective: number, enchants: number }>, minSpellPower: table<integer, { base: number, effective: number, enchants: number }>, weaponSpeed: number, summonDps: boolean, hideDPS: boolean, specStats: table<integer, { id: SpecialStatId, name: WString, tooltipName: WString, shortDescription: WString, value: number, type: ENUM_SpecialStatType }> } }
--- TODO: check return type (is InnateStats right?)
function itemLib.GetBonus( itemId ) end

---@param itemId ObjectId
---@return nil | { canUseStack: boolean }
function itemLib.GetBoxInfo( itemId ) end

---@param itemId ObjectId
---@return nil | table<ENUM_FloatingBudgetType, number>
function itemLib.GetBudgets( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, ObjectId>
function itemLib.GetBundle ( itemId ) end

---@param itemId ObjectId
---@return ItemCategoryId | nil
function itemLib.GetCategory( itemId ) end

---@param itemCategoryId ItemCategoryId
---@return nil | { sysName: string | nil, name: WString, root: boolean, rootId: ItemCategoryId | nil, showAuction: boolean }
function itemLib.GetCategoryInfo( itemCategoryId ) end

---@param itemCategoryId ItemCategoryId
---@return table<integer, ItemCategoryId>
function itemLib.GetChildCategories( itemCategoryId ) end

---@param itemId ObjectId
---@return ItemCategoryId | nil
function itemLib.GetClass( itemId ) end

---@param itemClassId ItemClassId
---@return nil | { name: WString, sysName: string | nil, debugName: string | nil }
function itemLib.GetClassInfo( itemClassId ) end

---@param itemId ObjectId
---@return table
--- TODO: check return type
function itemLib.GetCompatibleSlots( itemId ) end

---@param itemId ObjectId
---@return nil | { slot: integer, slotType: ITEM_CONT }
function itemLib.GetContainerInfo( itemId ) end

---@param itemId ObjectId
---@return nil | { count: integer, limit: integer }
function itemLib.GetCountInfo( itemId ) end

---@param itemResourceId ItemId
---@return { isCoupon: boolean, items: nil | table<integer, ItemId> }
function itemLib.GetCouponInfo( itemResourceId ) end

---@param itemId ObjectId
---@return nil | { craftingSkillIds?: table<integer, SkillId | nil>, craftingSkillsInfo: table<integer, { skillId: SkillId, isLearned: boolean, minLevel: integer | nil, maxLevel: integer | nil }>, craftingComponents: table<integer, ComponetPropertyId>, foragingInfo: nil | { isInstrument: boolean, skills: table<integer, SkillId> }, disassemblerInfo: nil | { slots: table<integer, DRESS_SLOT>, classes: table<integer, WString> } }
function itemLib.GetCraftInfo( itemId ) end

---@param itemId ObjectId
---@return nil | { properties: table<integer, ENUM_ToolProperty>, toolImprovers: table<integer, { item: ObjectId, properties: table<integer, ENUM_ToolProperty> }> }
function itemLib.GetCraftToolInfo( itemId ) end

---@param itemId ObjectId
---@return nil | integer
function itemLib.GetDestroyValue( itemId ) end

---@param itemId ObjectId
---@param ignoredConditions? ENUM_DressResult[]
---@return { sysFirstCondition: ENUM_DressResult, failedConditions: table<ENUM_DressResult, true> }
function itemLib.GetDressConditions( itemId, ignoredConditions ) end

---@param itemId ObjectId
---@param dressSlot integer
---@param ignoredConditions? ENUM_DressResult[]
---@return { sysFirstCondition: ENUM_DressResult, failedConditions: table<ENUM_DressResult, true> }
function itemLib.GetDressToSlotConditions( itemId, dressSlot, ignoredConditions ) end

---@param itemId ObjectId
---@return WString | nil
function itemLib.GetDropInfo( itemId ) end

---@param itemId ObjectId
---@return nil | { isRewardsExchange: boolean, canExchange: boolean }
function itemLib.GetExchangeInfo( itemId ) end

---@param itemId ObjectId
---@return table<integer, ValuedText>
function itemLib.GetExtraDescs( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, { name: WString, numberValue: number, textValue: ValuedText | nil }>
function itemLib.GetExtraDescsRatings( itemId ) end

---@param itemId ObjectId
---@return number | nil
function itemLib.GetGearScore( itemId ) end

---@param itemId ObjectId
---@return integer
function itemLib.GetInBagStackCount( itemId ) end

---@param itemId ObjectId
---@return nil | { type: ENUM_BeastType, sysType: ENUM_BeastType, mob: { name: WString, title: WString, description: WString, kind: { race: ENUM_CreatureRace, sysRace: ENUM_CreatureRace } } }
function itemLib.GetIncludedMob( itemId ) end

---@param itemId ObjectId
---@return nil | ObjectId
function itemLib.GetIncludedMountSkin( itemId ) end

---@param itemId ObjectId
---@return nil | { id: ObjectId, name: WString, description: ValuedText | nil, dressSlot: DRESS_SLOT, sysName: string, level: integer, requiredLevel: integer, requiredReputationLevel: REPUTATION_LEVEL, requiredReputationQuantity: integer, isRitual: boolean, debugName: string, icon: TextureId, isDoubleHands: boolean, isIgnoreDressSlotLevel: boolean, isDressable: boolean, isUsable: boolean, isWeapon: boolean, isGuildItem: boolean, buyConfirmationRequired: boolean, needCheckPredicates: boolean, showOnlyIconInLink: boolean }
function itemLib.GetItemInfo( itemId ) end

---@param itemId ObjectId
---@return integer?
---@return boolean?
function itemLib.GetLevel( itemId ) end

local level, show = itemLib.GetLevel(5);

---@param itemId ObjectId
---@return nil | { isInactive: boolean, hasMetaState: boolean, isMetaEnchancer: boolean, isUniversalMetaEnchancer: boolean, isUpgradeAgent: boolean, isSingleUpgradeAgent: boolean, improvement: number }
function itemLib.GetMetaInfo( itemId ) end

---@param itemId ObjectId
---@return WString
function itemLib.GetName( itemId ) end

---@param itemId ObjectId
---@return integer
function itemLib.GetOverallCount( itemId ) end

---@param itemId ItemId
---@return table<integer, ObjectId>
function itemLib.GetOverallItemsByResource( itemId ) end

---@param itemId ObjectId
---@return integer
function itemLib.GetOverallStackCount( itemId ) end

---@param itemId ObjectId | ItemId
---@return 0 | integer
function itemLib.GetOwnershipLimit( itemId ) end

---@param itemId ObjectId
---@return nil | { sellPrice: integer, auctionPrice: integer, buyPrice: integer, basePrice: integer, altPrices: nil | table<integer, { currencyId: CurrencyId, value: integer }> }
function itemLib.GetPriceInfo( itemId ) end

---@param itemId ObjectId
---@return nil | { quality: ITEM_QUALITY, forceShow: boolean }
function itemLib.GetQuality( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, ObjectId>
function itemLib.GetRelatedQuestObjectives( itemId ) end

---@param itemId ObjectId
---@return ItemId
function itemLib.GetResourceId( itemId ) end

---@return table<integer, ItemCategoryId>
function itemLib.GetRootCategories() end

---@param itemId ObjectId
---@return nil | { level: integer, zodiacSignId: ZodiacSignId, offensiveBonus: number, defensiveBonus: number, upgradedRuneItem: nil | ObjectId }
function itemLib.GetRuneInfo( itemId ) end

---@param itemId ObjectId
---@return nil | { isCombiner: boolean }
function itemLib.GetRuneInstrumentInfo( itemId ) end

---@param itemId ObjectId
---@return ENUM_ItemSource | nil
function itemLib.GetSource( itemId ) end

---@param itemId ObjectId
---@return nil | SpellId
function itemLib.GetSpell( itemId ) end

---@param itemId ObjectId
---@return nil | { count: integer, limit: integer }
function itemLib.GetStackInfo( itemId ) end

---@param itemId ObjectId
---@return nil | integer
function itemLib.GetStateCooldownMs( itemId ) end

---@param itemId ObjectId
---@return nil | { durationMs: number, remainingMs: number, expireItem: ObjectId | nil }
function itemLib.GetTemporaryInfo( itemId ) end

---@param itemId ObjectId
---@return nil | table<integer, ObjectId>
function itemLib.GetUniversalMetaEnchancerItems( itemId ) end

---@param itemId ObjectId
---@return { isUseItemAndTakeAction: boolean, isUseOnItemAndTakeAction: boolean, isUseOnMountAndTakeAction: boolean, warningUseText: WString | nil, useStack: boolean, useAmount: integer }
function itemLib.GetUsageInfo( itemId ) end

---@param itemId ObjectId
---@return { consumeItems: integer }
function itemLib.GetUsageItemInfo( itemId ) end

---@param itemId ObjectId
---@param targetItemId ObjectId
---@return { consumeUsedItem: integer | nil, consumeTargetItem: integer | nil }
function itemLib.GetUsageOnItemInfo( itemId, targetItemId ) end

---@param itemId ObjectId
---@param mountId ObjectId
---@return { consumeUsedItem: integer | nil, sysName: string | nil, warningUseText: WString | nil }
function itemLib.GetUsageOnMountInfo( itemId, mountId ) end

---@param itemId ObjectId
---@return { sysIndex: integer, consumeItems: integer, usageDesc: WString | nil, usageImage: TextureId | nil, givenAltCurrency: CurrencyId | nil, givenItem: unknown | nil, givenCount: number | nil, givenUnlock: ObjectId | nil, maxStack: integer | nil }
function itemLib.GetUsagesItemInfo( itemId ) end

---@param itemId ObjectId
---@param targetItemId ObjectId
---@return { sysIndex: integer, consumeUsedItem: integer, consumeTargetItem: integer, usageDesc: WString | nil, usageImage: TextureId | nil, givenAltCurrency: CurrencyId | nil, givenItem: unknown | nil, givenCount: number | nil, givenUnlock: ObjectId | nil }
function itemLib.GetUsagesOnItemInfo( itemId, targetItemId ) end

---@param itemId ObjectId
---@param mountId ObjectId
---@return table<integer, { sysIndex: integer, sysName: string | nil, warningUseText: WString | nil, consumeUsedItem: integer }>
function itemLib.GetUsagesOnMountInfo( itemId, mountId ) end

---@param itemId ObjectId
---@return string
function itemLib.GetUseOnItemCursor( itemId ) end

---@param itemId ObjectId
---@return string
function itemLib.GetUseOnMountCursor( itemId ) end

---@param itemId ObjectId
---@return ValuedObject
function itemLib.GetValuedObject( itemId ) end

---@param zodiacSignId ZodiacSignId
---@return nil | { name: WString, description: WString, image: TextureId, sysName: string }
function itemLib.GetZodiacSignInfo( zodiacSignId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsBeast( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsConvertible( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsCopied( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsCursed( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsGem( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsGuildCreator( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsHideLifestyleWhileNotEquipped( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsItem( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsMetaEnhancerConvertor( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsMultipleUse( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsPointed( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsProbe( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsQuestOperator( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsQuestRelated( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsSOSMessageSender( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsUnpackOnPickup( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsUsable( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsUseItemAndTakeActions( itemId ) end

---@param itemId ObjectId
---@param count number
---@return boolean
function itemLib.IsUseOnItemAndTakeActions( itemId, count ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsUseOnMountAndTakeActions( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsUserChoice( itemId ) end

---@param itemId ObjectId
---@return boolean
function itemLib.IsWeapon( itemId ) end