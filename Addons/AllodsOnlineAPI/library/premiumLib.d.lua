---@meta

---@class premiumLib
premiumLib = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_PREMIUM_BONUS_STAGE_CHANGED "EVENT_PREMIUM_BONUS_STAGE_CHANGED"
---@alias EVENT_PREMIUM_CHANGED "EVENT_PREMIUM_CHANGED"
---@alias EVENT_PREMIUM_STAGE_CHANGED "EVENT_PREMIUM_STAGE_CHANGED"

---@overload fun(eventFunction: fun(data: { stage: number }), sysEventName: EVENT_PREMIUM_BONUS_STAGE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PREMIUM_CHANGED)
---@overload fun(eventFunction: fun(data: { stage: number }), sysEventName: EVENT_PREMIUM_STAGE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return nil | { bonus: integer, removeTime: LuaFullDateTime }
function premiumLib.GetBonusInfo() end

---@return { stageNumber: integer, bonusStageNumber: integer, totalStages: integer, stageProgress: number, sumNextStage: number, totalProgress: number, totalSum: number }
function premiumLib.GetInfo() end

---@return integer | nil
function premiumLib.GetNextStage() end

---@param stage integer
---@return nil | { description: WString, buffs: nil | table<integer, BuffId> }
function premiumLib.GetStageInfo( stage ) end