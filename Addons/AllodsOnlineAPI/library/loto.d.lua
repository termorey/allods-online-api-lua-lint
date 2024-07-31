---@meta

--[[ ENUMS --]]

---@alias ENUM_LotteryState_Prepare integer | "ENUM_LotteryState_Prepare" -- До начала розыгрыша
---@alias ENUM_LotteryState_Roll integer | "ENUM_LotteryState_Roll"    -- Идет розыгрыш
---@alias ENUM_LotteryState_End integer | "ENUM_LotteryState_End"     -- Розыгрыш окончен
---@alias ENUM_LotteryState_Fail integer | "ENUM_LotteryState_Fail"    -- Ошибка
---@alias ENUM_LotteryState ENUM_LotteryState_Prepare | ENUM_LotteryState_Roll | ENUM_LotteryState_End | ENUM_LotteryState_Fail

--[[ EVENTS --]]

---@alias EVENT_LOTTERY_END "EVENT_LOTTERY_END"
---@alias EVENT_LOTTERY_STATE_CHANGED "EVENT_LOTTERY_STATE_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_LOTTERY_END)
---@overload fun(eventFunction: fun(data: { state: integer }), sysEventName: EVENT_LOTTERY_STATE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

