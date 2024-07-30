---@meta

--[[ ENUMS --]]

---@alias ENUM_CURRENCY_STORAGE_AVATAR unknown # у главного игрока
---@alias ENUM_CURRENCY_STORAGE_GUILD unknown # в гильдии
---@alias ENUM_CURRENCY_STORAGE_SOUL unknown # в душе (доступна для всех ремортов главного игрока)
---@alias ENUM_CURRENCY_STORAGE ENUM_CURRENCY_STORAGE_AVATAR | ENUM_CURRENCY_STORAGE_GUILD | ENUM_CURRENCY_STORAGE_SOUL

---@alias ENUM_VisualizeMode_Show unknown # всегда отображается(по умолчанию)
---@alias ENUM_VisualizeMode_Hide unknown # всегда скрывается(обработка валюты не будет передаваться в скрипты)
---@alias ENUM_VisualizeMode_Custom unknown # отображением рулят скрипты
---@alias ENUM_CURRENCY_VISUALIZE_MODE ENUM_VisualizeMode_Show | ENUM_VisualizeMode_Hide | ENUM_VisualizeMode_Custom


--[[ EVENTS --]]

---@alias EVENT_CURRENCIES_CHANGED "EVENT_CURRENCIES_CHANGED"
---@alias EVENT_CURRENCY_NOT_ENOUGH "EVENT_CURRENCY_NOT_ENOUGH"
---@alias EVENT_CURRENCY_VALUE_CHANGED "EVENT_CURRENCY_VALUE_CHANGED"
---@alias EVENT_HIDDEN_CURRENCY_VALUE_CHANGED "EVENT_HIDDEN_CURRENCY_VALUE_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_CURRENCIES_CHANGED)
---@overload fun(eventFunction: fun(data: { id: CurrencyId }), sysEventName: EVENT_CURRENCY_NOT_ENOUGH)
---@overload fun(eventFunction: fun(data: { id: CurrencyId, delta: integer, sysName: string }), sysEventName: EVENT_CURRENCY_VALUE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: CurrencyId, delta: integer, sysName: string }), sysEventName: EVENT_HIDDEN_CURRENCY_VALUE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

