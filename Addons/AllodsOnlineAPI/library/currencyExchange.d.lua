---@meta

---@class currencyExchange
currencyExchange = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_CURRENCY_EXCHANGE_FINISHED "EVENT_CURRENCY_EXCHANGE_FINISHED"
---@alias EVENT_CURRENCY_EXCHANGE_INFO_CHANGED "EVENT_CURRENCY_EXCHANGE_INFO_CHANGED"
---@alias EVENT_CURRENCY_EXCHANGE_STARTED "EVENT_CURRENCY_EXCHANGE_STARTED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_CURRENCY_EXCHANGE_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CURRENCY_EXCHANGE_INFO_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CURRENCY_EXCHANGE_STARTED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param crystalsToBuy integer
---@return number
function currencyExchange.CalcBuyCost( crystalsToBuy ) end

---@return number
function currencyExchange.CalcBuyRate() end

---@param crystalsToSell integer
---@return number
function currencyExchange.CalcSellCost( crystalsToSell ) end

---@return number
function currencyExchange.CalcSellRate() end

---@param crystalsToBuy integer
---@param moneyToSpend integer
---@return boolean
function currencyExchange.CanBuy( crystalsToBuy, moneyToSpend ) end

---@param crystalsToSell integer
---@param moneyToGet integer
---@return boolean
function currencyExchange.CanSell( crystalsToSell, moneyToGet ) end

---@return boolean
function currencyExchange.IsServiceActive() end