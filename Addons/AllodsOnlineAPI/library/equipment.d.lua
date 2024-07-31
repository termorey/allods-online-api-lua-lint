---@meta

--[[ ENUMS --]]

---@alias ENUM_DressResult_Success "ENUM_DressResult_Success"
---@alias ENUM_DressResult_FailureVoid "ENUM_DressResult_FailureVoid"
---@alias ENUM_DressResult_Undressable "ENUM_DressResult_Undressable"
---@alias ENUM_DressResult_WrongSlot "ENUM_DressResult_WrongSlot"
---@alias ENUM_DressResult_WrongCharacterClass "ENUM_DressResult_WrongCharacterClass"
---@alias ENUM_DressResult_WrongCreatureLevel "ENUM_DressResult_WrongCreatureLevel"
---@alias ENUM_DressResult_NoSpace "ENUM_DressResult_NoSpace"
---@alias ENUM_DressResult_TooSmallBag "ENUM_DressResult_TooSmallBag"
---@alias ENUM_DressResult_NotProficient "ENUM_DressResult_NotProficient"
---@alias ENUM_DressResult_InCombat "ENUM_DressResult_InCombat"
---@alias ENUM_DressResult_WrongDress "ENUM_DressResult_WrongDress"
---@alias ENUM_DressResult_SecondaryDressLocked "ENUM_DressResult_SecondaryDressLocked"
---@alias ENUM_DressResult_SlotLocked "ENUM_DressResult_SlotLocked" - предмет нельзя экипировать в заданный слот из-за того, что качество предмета выше, чем разрешено для этого слота
---@alias ENUM_DressResult_SmallerBag "ENUM_DressResult_SmallerBag"
---@alias ENUM_DressResult_SmallerDepositBox "ENUM_DressResult_SmallerDepositBox"
---@alias ENUM_DressResult_EnchantLocked "ENUM_DressResult_EnchantLocked" - предмет нельзя экипировать в заданный слот из-за того, что качество одного или более самоцветов, вставленных в предмет, выше, чем разрешено для этого слота
---@alias ENUM_DressResult_DuplicateItem "ENUM_DressResult_DuplicateItem" - В гардеробе итем уже есть.
---@alias ENUM_DressResult ENUM_DressResult_Success | ENUM_DressResult_FailureVoid | ENUM_DressResult_Undressable | ENUM_DressResult_WrongSlot | ENUM_DressResult_WrongCharacterClass | ENUM_DressResult_WrongCreatureLevel | ENUM_DressResult_NoSpace | ENUM_DressResult_TooSmallBag | ENUM_DressResult_NotProficient | ENUM_DressResult_InCombat | ENUM_DressResult_WrongDress | ENUM_DressResult_SecondaryDressLocked | ENUM_DressResult_SlotLocked | ENUM_DressResult_SmallerBag | ENUM_DressResult_SmallerDepositBox | ENUM_DressResult_EnchantLocked | ENUM_DressResult_DuplicateItem

---@alias DRESS_SLOT_HELM integer
---@alias DRESS_SLOT_ARMOR integer
---@alias DRESS_SLOT_PANTS integer
---@alias DRESS_SLOT_BOOTS integer
---@alias DRESS_SLOT_MANTLE integer
---@alias DRESS_SLOT_GLOVES integer
---@alias DRESS_SLOT_BRACERS integer
---@alias DRESS_SLOT_BELT integer
---@alias DRESS_SLOT_RING1 integer
---@alias DRESS_SLOT_RING2 integer
---@alias DRESS_SLOT_EARRING1 integer
---@alias DRESS_SLOT_NECKLACE integer
---@alias DRESS_SLOT_CLOAK integer
---@alias DRESS_SLOT_SHIRT integer
---@alias DRESS_SLOT_MAINHAND integer
---@alias DRESS_SLOT_OFFHAND integer
---@alias DRESS_SLOT_RANGED integer
---@alias DRESS_SLOT_AMMO integer
---@alias DRESS_SLOT_TABARD integer
---@alias DRESS_SLOT_TRINKET integer
---@alias DRESS_SLOT_BAG integer
---@alias DRESS_SLOT_DEATHINSURANCE integer
---@alias DRESS_SLOT_LIFESTYLEHEAD integer
---@alias DRESS_SLOT_LIFESTYLEBACK integer
---@alias DRESS_SLOT_LIFESTYLESUIT integer
---@alias DRESS_SLOT_LIFESTYLEUNDERWEAR integer
---@alias DRESS_SLOT_LIFESTYLESHOULDER integer
---@alias DRESS_SLOT_LIFESTYLEPET integer
---@alias DRESS_SLOT_POWEREDLSWEAPON integer
---@alias DRESS_SLOT_EARRING2 integer
---@alias DRESS_SLOT_DEPOSITBOX integer
---@alias DRESS_SLOT_OFFENSIVERUNE1 integer
---@alias DRESS_SLOT_OFFENSIVERUNE2 integer
---@alias DRESS_SLOT_OFFENSIVERUNE3 integer
---@alias DRESS_SLOT_DEFENSIVERUNE1 integer
---@alias DRESS_SLOT_DEFENSIVERUNE2 integer
---@alias DRESS_SLOT_DEFENSIVERUNE3 integer
---@alias DRESS_SLOT_HIDDENPOWER integer
---@alias DRESS_SLOT_HAT integer
---@alias DRESS_SLOT_UNDRESSABLE integer
---@alias DRESS_SLOT_TWOHANDED integer
---@alias DRESS_SLOT_DUALWIELD integer
---@alias DRESS_SLOT_RING integer
---@alias DRESS_SLOT_EARRINGS integer
---@alias DRESS_SLOT_RUNE integer
---@alias DRESS_SLOT_ARTIFACT integer
---@alias DRESS_SLOT_ARTIFACT1 integer
---@alias DRESS_SLOT_ARTIFACT2 integer
---@alias DRESS_SLOT_ARTIFACT3 integer
---@alias DRESS_SLOT_NONPREVIEW integer
---@alias DRESS_SLOT DRESS_SLOT_HELM | DRESS_SLOT_ARMOR | DRESS_SLOT_PANTS | DRESS_SLOT_BOOTS | DRESS_SLOT_MANTLE | DRESS_SLOT_GLOVES | DRESS_SLOT_BRACERS | DRESS_SLOT_BELT | DRESS_SLOT_RING1 | DRESS_SLOT_RING2 | DRESS_SLOT_EARRING1 | DRESS_SLOT_NECKLACE | DRESS_SLOT_CLOAK | DRESS_SLOT_SHIRT | DRESS_SLOT_MAINHAND | DRESS_SLOT_OFFHAND | DRESS_SLOT_RANGED | DRESS_SLOT_AMMO | DRESS_SLOT_TABARD | DRESS_SLOT_TRINKET | DRESS_SLOT_BAG | DRESS_SLOT_DEATHINSURANCE | DRESS_SLOT_LIFESTYLEHEAD | DRESS_SLOT_LIFESTYLEBACK | DRESS_SLOT_LIFESTYLESUIT | DRESS_SLOT_LIFESTYLEUNDERWEAR | DRESS_SLOT_LIFESTYLESHOULDER | DRESS_SLOT_LIFESTYLEPET | DRESS_SLOT_POWEREDLSWEAPON | DRESS_SLOT_EARRING2 | DRESS_SLOT_DEPOSITBOX | DRESS_SLOT_OFFENSIVERUNE1 | DRESS_SLOT_OFFENSIVERUNE2 | DRESS_SLOT_OFFENSIVERUNE3 | DRESS_SLOT_DEFENSIVERUNE1 | DRESS_SLOT_DEFENSIVERUNE2 | DRESS_SLOT_DEFENSIVERUNE3 | DRESS_SLOT_HIDDENPOWER | DRESS_SLOT_HAT | DRESS_SLOT_UNDRESSABLE | DRESS_SLOT_TWOHANDED | DRESS_SLOT_DUALWIELD | DRESS_SLOT_RING | DRESS_SLOT_EARRINGS | DRESS_SLOT_RUNE | DRESS_SLOT_ARTIFACT | DRESS_SLOT_ARTIFACT1 | DRESS_SLOT_ARTIFACT2 | DRESS_SLOT_ARTIFACT3 | DRESS_SLOT_NONPREVIEW

---@alias ITEM_BINDING_BIND_NONE unknown
---@alias ITEM_BINDING_BIND_ON_PICKUP unknown
---@alias ITEM_BINDING_BIND_ON_EQUIP unknown
---@alias ITEM_BINDING_BIND_ON_USE unknown
---@alias ITEM_BINDING_BIND ITEM_BINDING_BIND_NONE | ITEM_BINDING_BIND_ON_PICKUP | ITEM_BINDING_BIND_ON_EQUIP | ITEM_BINDING_BIND_ON_USE

---@alias ITEM_QUALITY_SYSTEM integer # служебное значение, не означающее никакого качества
---@alias ITEM_QUALITY_JUNK integer
---@alias ITEM_QUALITY_GOODS integer
---@alias ITEM_QUALITY_COMMON integer
---@alias ITEM_QUALITY_UNCOMMON integer
---@alias ITEM_QUALITY_RARE integer
---@alias ITEM_QUALITY_EPIC integer
---@alias ITEM_QUALITY_LEGENDARY integer
---@alias ITEM_QUALITY_RELIC integer
---@alias ITEM_QUALITY_DRAGON integer
---@alias ITEM_QUALITY ITEM_QUALITY_SYSTEM | ITEM_QUALITY_JUNK | ITEM_QUALITY_GOODS | ITEM_QUALITY_COMMON | ITEM_QUALITY_UNCOMMON | ITEM_QUALITY_RARE | ITEM_QUALITY_EPIC | ITEM_QUALITY_LEGENDARY | ITEM_QUALITY_RELIC | ITEM_QUALITY_DRAGON

--[[ EVENTS --]]

---@alias EVENT_EQUIP_FAILED "EVENT_EQUIP_FAILED"
---@alias EVENT_EQUIPMENT_ITEM_EFFECT "EVENT_EQUIPMENT_ITEM_EFFECT"
---@alias EVENT_EQUIPMENT_RITUAL_ENABLE_CHANGED "EVENT_EQUIPMENT_RITUAL_ENABLE_CHANGED"
---@alias EVENT_UNIT_EQUIPMENT_CHANGED "EVENT_UNIT_EQUIPMENT_CHANGED"

---@overload fun(eventFunction: fun(data: { sysCode: ENUM_DressResult, itemId: ObjectId | nil, slot: integer | nil, slotType: ITEM_CONT }), sysEventName: EVENT_EQUIP_FAILED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, slot: integer, slotType: ITEM_CONT }), sysEventName: EVENT_EQUIPMENT_ITEM_EFFECT)
---@overload fun(eventFunction: fun(data: { unitID: ObjectId }), sysEventName: EVENT_EQUIPMENT_RITUAL_ENABLE_CHANGED)
---@overload fun(eventFunction: fun(data: { unitID: ObjectId, slotType: ITEM_CONT }), sysEventName: EVENT_UNIT_EQUIPMENT_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

