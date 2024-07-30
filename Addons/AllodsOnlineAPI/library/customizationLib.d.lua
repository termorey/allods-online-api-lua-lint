---@meta

---@class customizationLib
customizationLib = {}
--[[ ENUMS --]]

---@alias ENUM_BeastType_AE integer | "ENUM_BeastType_AE"
---@alias ENUM_BeastType_Pack integer | "ENUM_BeastType_Pack"
---@alias ENUM_BeastType_Solo integer | "ENUM_BeastType_Solo"
---@alias ENUM_BeastType_Boss integer | "ENUM_BeastType_Boss"
---@alias ENUM_BeastType_Endboss integer | "ENUM_BeastType_Endboss"
---@alias ENUM_BeastType ENUM_BeastType_AE | ENUM_BeastType_Pack | ENUM_BeastType_Solo | ENUM_BeastType_Boss | ENUM_BeastType_Endboss

--[[ EVENTS --]]

---@alias EVENT_CUSTOMIZATION_ACTIVE_SLOT_CHANGED "EVENT_CUSTOMIZATION_ACTIVE_SLOT_CHANGED"
---@alias EVENT_CUSTOMIZATION_ACTIVE_SLOT_CONTENT_CHANGED "EVENT_CUSTOMIZATION_ACTIVE_SLOT_CONTENT_CHANGED"
---@alias EVENT_CUSTOMIZATION_STATE_CHANGED "EVENT_CUSTOMIZATION_STATE_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_CUSTOMIZATION_ACTIVE_SLOT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CUSTOMIZATION_ACTIVE_SLOT_CONTENT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CUSTOMIZATION_STATE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return nil | { slot: ENUM_SlotName, sysSlot: ENUM_SlotName, itemId: ObjectId | nil, beastType?: ENUM_BeastType, sysBeastType?: ENUM_BeastType }
function customizationLib.GetActiveSlotInfo() end

---@param itemId ObjectId
function customizationLib.InstallItem( itemId ) end

---@return boolean
function customizationLib.IsActive() end

function customizationLib.UninstallItem() end