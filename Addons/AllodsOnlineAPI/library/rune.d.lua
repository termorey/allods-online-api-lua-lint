---@meta

---@class runeLib
runeLib = {}

--[[ ENUMS --]]

---@alias ENUM_RuneOperationResult
---| "ENUM_RuneOperationResult_SlotNumberOutOfBounds"
---| "ENUM_RuneOperationResult_SlotIsEmpty"
---| "ENUM_RuneOperationResult_ItemIsNotExtractor"
---| "ENUM_RuneOperationResult_ItemHasNoRune"
---| "ENUM_RuneOperationResult_WrongInstrumentLevel"
---| "ENUM_RuneOperationResult_NoFreeSpace"
---| "ENUM_RuneOperationResult_SecondRuneNotFound"
---| "ENUM_RuneOperationResult_ItemIsNotCombiner"
---| "ENUM_RuneOperationResult_ItemIsNotRune"
---| "ENUM_RuneOperationResult_ItemAlreadyHasRune"
---| "ENUM_RuneOperationResult_CannotInsertIntoThis"
---| "ENUM_RuneOperationResult_NoHigherLevelRune"
---| "ENUM_RuneOperationResult_OperationFailed"
---| "ENUM_RuneOperationResult_NotEnoughRunes"
---| "ENUM_RuneOperationResult_OperationSuccess"

--[[ EVENTS --]]

---@alias EVENT_RUNE_OPERATION_RESULT "EVENT_RUNE_OPERATION_RESULT"

---@overload fun(eventFunction: fun(data: { sysResult: ENUM_RuneOperationResult }), sysEventName: EVENT_RUNE_OPERATION_RESULT)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param runeId ObjectId
---@param instrumentId ObjectId
---@param crystalCrumbBonus integer
---@param count integer
function runeLib.Combine( runeId, instrumentId, crystalCrumbBonus, count ) end

---@param runeId ObjectId
---@param crystalCrumbBonus integer
---@param count integer
---@return { goldDust: integer, crystalCrumb: integer }
function runeLib.GetCombinePrice( runeId, crystalCrumbBonus, count ) end

---@return { goldDust: ObjectId, crystalCrumb: ObjectId }
function runeLib.GetCommonInfo() end

---@param dressSlot DRESS_SLOT
---@return nil | { dressSlot: DRESS_SLOT, requiredLevel: integer, isOffensive: boolean }
function runeLib.GetSlotInfo( dressSlot ) end