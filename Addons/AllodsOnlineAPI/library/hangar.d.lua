---@meta

---@class hangar
hangar = {}

--[[ ENUMS --]]

---@alias ENUM_CANNON_VISUAL_TYPE_CORVET unknown
---@alias ENUM_CANNON_VISUAL_TYPE_BRIG unknown
---@alias ENUM_CANNON_VISUAL_TYPE ENUM_CANNON_VISUAL_TYPE_CORVET | ENUM_CANNON_VISUAL_TYPE_BRIG

---@alias ENUM_ShipInfoMarker_BorrowedFromBestFriend number - одолжен у лучшего друга
---@alias ENUM_ShipInfoMarker_LentToBestFriend number - одолжен лучшему другу
---@alias ENUM_ShipInfoMarker ENUM_ShipInfoMarker_BorrowedFromBestFriend | ENUM_ShipInfoMarker_LentToBestFriend

---@alias ENUM_Slot_Sails_01 unknown
---@alias ENUM_Slot_Emblem_01 unknown
---@alias ENUM_Slot_Decor_01 unknown
---@alias ENUM_Slot_HullColor_01 unknown
---@alias ENUM_Slot ENUM_Slot_Sails_01 | ENUM_Slot_Emblem_01 | ENUM_Slot_Decor_01 | ENUM_Slot_HullColor_01

--[[ EVENTS --]]

---@alias EVENT_HANGAR_ACTIVE_HULL_CHANGED "EVENT_HANGAR_ACTIVE_HULL_CHANGED"
---@alias EVENT_HANGAR_ACTIVE_SHIP_CHANGED "EVENT_HANGAR_ACTIVE_SHIP_CHANGED"
---@alias EVENT_HANGAR_ACTIVE_SHIP_HULLS_CHANGED "EVENT_HANGAR_ACTIVE_SHIP_HULLS_CHANGED"
---@alias EVENT_HANGAR_ACTIVE_SHIP_SKINS_CHANGED "EVENT_HANGAR_ACTIVE_SHIP_SKINS_CHANGED"
---@alias EVENT_HANGAR_ACTIVE_SKIN_CHANGED "EVENT_HANGAR_ACTIVE_SKIN_CHANGED"
---@alias EVENT_HANGAR_DEVICES_RECEIVED "EVENT_HANGAR_DEVICES_RECEIVED"
---@alias EVENT_HANGAR_REPAIR_QUESTION "EVENT_HANGAR_REPAIR_QUESTION"
---@alias EVENT_HANGAR_SHIPS_CHANGED "EVENT_HANGAR_SHIPS_CHANGED"
---@alias EVENT_HANGAR_SLOT_DEVICES_RECEIVED "EVENT_HANGAR_SLOT_DEVICES_RECEIVED"
---@alias EVENT_HANGAR_SPELL_CHANGED "EVENT_HANGAR_SPELL_CHANGED"
---@alias EVENT_HANGAR_SPELL_EFFECT "EVENT_HANGAR_SPELL_EFFECT"
---@alias EVENT_SHIP_CUSTOMIZING_CHANGED "EVENT_SHIP_CUSTOMIZING_CHANGED"
---@alias EVENT_SHIP_CUSTOMIZING_FINISHED "EVENT_SHIP_CUSTOMIZING_FINISHED"
---@alias EVENT_SHIP_CUSTOMIZING_STARTED "EVENT_SHIP_CUSTOMIZING_STARTED"
---@alias EVENT_TRANSPORT_RENAME_REPLY "EVENT_TRANSPORT_RENAME_REPLY"
---@alias EVENT_TRANSPORT_RENAME_REPLY_RESULT "EVENT_TRANSPORT_RENAME_REPLY_RESULT"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_HANGAR_ACTIVE_HULL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HANGAR_ACTIVE_SHIP_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HANGAR_ACTIVE_SHIP_HULLS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HANGAR_ACTIVE_SHIP_SKINS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HANGAR_ACTIVE_SKIN_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HANGAR_DEVICES_RECEIVED)
---@overload fun(eventFunction: fun(data: { moneyToAdd: integer, tickCountToFullRepair: integer, maxTickCount: integer, shipRepairPerTick: integer, tickTimeMs: integer, itemId: ObjectId, itemsPerTick: number, totalRepairTime: { d: integer, h: integer, m: integer, s: integer }, fullRepairTime: { d: integer, h: integer, m: integer, s: integer } }), sysEventName: EVENT_HANGAR_REPAIR_QUESTION)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HANGAR_SHIPS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_HANGAR_SLOT_DEVICES_RECEIVED)
---@overload fun(eventFunction: fun(data: { id: SpellId }), sysEventName: EVENT_HANGAR_SPELL_CHANGED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, id: SpellId } | { effect: EFFECT_TYPE_COOLDOWN_STARTED, id: SpellId, duration: integer, remaining: integer } | { effect: EFFECT_TYPE_SPELL_PREPARED, id: SpellId, prepared: boolean } | { effect: EFFECT_TYPE_SPELL_ACTIVE_STATE_CHANGED, id: SpellId, isActive: boolean, objectId: ObjectId | nil }), sysEventName: EVENT_HANGAR_SPELL_EFFECT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_SHIP_CUSTOMIZING_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_SHIP_CUSTOMIZING_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_SHIP_CUSTOMIZING_STARTED)
---@overload fun(eventFunction: fun(data: { hasName: boolean, oldName: WString }), sysEventName: EVENT_TRANSPORT_RENAME_REPLY)
---@overload fun(eventFunction: fun(data: { success: boolean, sysNameErrorKind: ENUM_InvalidNameKind, name: WString }), sysEventName: EVENT_TRANSPORT_RENAME_REPLY_RESULT)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function hangar.ApplyCustomization() end

---@return boolean
function hangar.CanCustomize() end

---@return boolean
function hangar.CanLendShip() end

---@return boolean
function hangar.CanRemoveDevice() end

---@param slotId ObjectId
---@param deviceId ObjectId | nil
function hangar.ChangeSlotCustomization( slotId, deviceId ) end

---@return nil | ObjectId
function hangar.GetActiveShip() end

---@return nil | VisualShipId
function hangar.GetActiveShipHull() end

---@return nil | ShipSkinId
function hangar.GetActiveShipSkin() end

---@return table<integer, { type: USDEV, soldDevice: table<integer, { deviceId: ObjectId, currencyId: CurrencyId | nil, amount: integer }> }>
function hangar.GetAllowedDeviceTypes() end

---@return nil | table<integer, VisualShipId>
function hangar.GetAvailableHulls() end

---@return nil | table<integer, ShipSkinId>
function hangar.GetAvailableSkins() end

---@return nil | { percent: integer, timeLeft: { d: integer, h: integer, m: integer, s: integer } }
function hangar.GetBuildProgress() end

---@param slotId ObjectId
---@return number
function hangar.GetCustomizationCost( slotId ) end

---@return CurrencyId
function hangar.GetCustomizationCurrency() end

---@param slotId ObjectId
---@return table<integer, ObjectId>
function hangar.GetCustomizationSlotDevices( slotId ) end

---@param slotId ObjectId
---@return nil | { id: ObjectId, sysName: ENUM_Slot, currentDeviceId: ObjectId | nil, initialDeviceId: ObjectId | nil }
function hangar.GetCustomizationSlotInfo( slotId ) end

---@return nil | table<integer, ObjectId>
function hangar.GetCustomizationSlots() end

---@param deviceId ObjectId
---@return nil | { id: ObjectId, name: WString, description: ValuedText | nil, sysDebugName: string | nil, image?: TextureId, mass: number, count: integer, quality: ITEM_QUALITY, type: USDEV, techLevel: integer, category: WString | nil, sysCategoryName: string | nil }
function hangar.GetDeviceInfo( deviceId ) end

---@return nil | table<integer, ObjectId>
function hangar.GetDevices() end

---@param hullId VisualShipId
---@return nil | { name: WString, description: WString, image?: TextureId }
function hangar.GetHullInfo( hullId ) end

---@return nil | SpellId
function hangar.GetLendShipSpellId() end

---@return WString
function hangar.GetRandomName() end

---@return nil | { percent: integer, timeLeft: { d: integer, h: integer, m: integer, s: integer } }
function hangar.GetRepairProgress() end

---@return nil | SpellId
function hangar.GetReturnLendedShipSpellId() end

---@param shipId ObjectId
---@return nil | { id: ObjectId, name: WString, sysDebugName: string | nil, markers: nil | table<ENUM_ShipInfoMarker, boolean>, image?: TextureId, isSummoned: boolean, mass: number }
function hangar.GetShipInfo( shipId ) end

---@return nil | table<integer, ObjectId>
function hangar.GetShips() end

---@param skinId ShipSkinId
---@return nil | { name: WString, description: WString, iname?: TextureId }
function hangar.GetSkinInfo( skinId ) end

---@return nil | table<integer, ObjectId>
function hangar.GetSlotDevices() end

---@return nil | SpellId
function hangar.GetSummonShipSpellId() end

---@return nil | SpellId
function hangar.GetSwitchShipMasterHullSpellId() end

---@return nil | SpellId
function hangar.GetSwitchShipSkinSpellId() end

---@return nil | SpellId
function hangar.GetTakeAwaySpellId() end

---@return nil | SpellId
function hangar.GetUnsummonShipSpellId() end

---@param friendId ObjectId
function hangar.LendShip( friendId ) end

---@param deviceId ObjectId
function hangar.PreviewPurchasedDevice( deviceId ) end

---@param deviceId ObjectId
function hangar.PurchaseDevice( deviceId ) end

function hangar.RemoveDevice() end

---@param deviceId ObjectId
---@param count integer
function hangar.RemoveDeviceFromHangar( deviceId, count ) end

---@param name WString
function hangar.Rename( name ) end

---@param positive boolean
---@param ticks integer
function hangar.RepairReply( positive, ticks ) end

---@param deviceId ObjectId
function hangar.ReplaceDevice( deviceId ) end

function hangar.ResetDevicePreview() end

function hangar.RevertCustomization() end

---@param shipId ObjectId
function hangar.SummonShip( shipId ) end

---@param hullId VisualShipId
function hangar.SwitchShipMasterHull( hullId ) end

---@param hullId ShipSkinId
function hangar.SwitchShipSkin( hullId ) end

---@param shipId ObjectId
function hangar.TakeAwayShip( shipId ) end

function hangar.UnsummonShip() end