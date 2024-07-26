---@meta

--[[ ENUMS --]]

---@alias ENUM_ADDON_HEALTH_STATUS_GOOD integer | "ENUM_ADDON_HEALTH_STATUS_GOOD" # исполнение кода аддона не вызывает ошибок
---@alias ENUM_ADDON_HEALTH_STATUS_AVERAGE integer | "ENUM_ADDON_HEALTH_STATUS_AVERAGE" # исполнение кода аддона вызывает умеренное количество ошибок
---@alias ENUM_ADDON_HEALTH_STATUS_BAD integer | "ENUM_ADDON_HEALTH_STATUS_BAD" #- исполнение кода аддона вызывает чрезмерное количество ошибок
---@alias ENUM_ADDON_HEALTH_STATUS ENUM_ADDON_HEALTH_STATUS_GOOD | ENUM_ADDON_HEALTH_STATUS_AVERAGE | ENUM_ADDON_HEALTH_STATUS_BAD

--[[ EVENTS --]]

---@alias EVENT_ADDON_HEALTH_CHANGED "EVENT_ADDON_HEALTH_CHANGED"
---@alias EVENT_ADDON_REDUCE_PERFOMANCE "EVENT_ADDON_REDUCE_PERFOMANCE"

---@overload fun(eventFunction: fun(data: { name: string, status: ENUM_ADDON_HEALTH_STATUS }), sysEventName: EVENT_ADDON_HEALTH_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString, sysName: string, deltaFps: number, maxDeltaFps: number }), sysEventName: EVENT_ADDON_REDUCE_PERFOMANCE)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS ]]

---@class userMods
userMods = {}

---FromValuedText
---@param valuedText ValuedText # переданный объект
---@param oneLine? boolean # Если true \ nil то вывод будет в 1 строку, если false то вывод будет в виде форматированного html с отступами и переносами строк
---@return string # html-структура текста в обычном строковом типе
function userMods.FromValuedText( valuedText, oneLine ) end

---FromWString
---@param localizedText WString # исходный локализуемый текст
---@return string # локализуемый текст, преобразованный в обычный строковый тип Lua
function userMods.FromWString( localizedText ) end

---GetAccountUniqueId
---@return string # уникальный приватный строковый идентификатор аккаунта
function userMods.GetAccountUniqueId() end

---GetAvatarConfigSection
---@param sysName string # название секции
---@return nil | table # таблица с данными или nil, если секция не найдена
function GetAvatarConfigSection( sysName ) end

---GetCallStack
---@return table<integer, string> # Таблица строк (индексируемая с 1) где каждая строка - сведения об одном вызове. Вершина стека имеет индекс 1
function userMods.GetCallStack() end

---GetGlobalConfigSection
---@param sysName string # название секции
---@return nil | table # таблица с данными или nil, если секция не найдена
function userMods.GetGlobalConfigSection( sysName ) end

---SendEvent
---@param eventName string # идентификатор события
---@param eventParams table # таблица с параметрами события, у каждого события свой набор параметров
function userMods.SendEvent( eventName, eventParams ) end

---SendSelfChatMessage
---@param message WString # текст сообщения
---@param messageLevel? string #имя канала, по умолчанию message
function userMods.SendSelfChatMessage( message, messageLevel ) end

---SetAvatarConfigSection
---@param sysName string # название секции
---@param section table | nil # таблица с данными секции, nil - для удаления секции
function userMods.SetAvatarConfigSection( sysName, section ) end

---SetGlobalConfigSection
---@param sysName string # название секции
---@param section table | nil # таблица с данными секции, nil - для удаления секции
function userMods.SetGlobalConfigSection( sysName, section ) end

---ToWString
---@param sysText string # исходная строка
---@return WString # исходная строка, преобразованная в локализуемый текст
function userMods.ToWString( sysText ) end
