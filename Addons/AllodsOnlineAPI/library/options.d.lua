---@meta

---@class options
options = {}

--[[ ENUMS --]]

---@alias UI_OPTION_DATA_FIXED number - неизменяемая опция
---@alias UI_OPTION_DATA_BOOLEAN number - два состояния, 0 и 1
---@alias UI_OPTION_DATA_DISCRETE number - диапазон значений: [0..N]
---@alias UI_OPTION_DATA_DISCRETE_FLOAT number - диапазон значений [0..N] - число градаций, доступных через опции (в коде автоматически транслируется в вещественный диапазон [minRangeValue..maxRangeValue] - собственно значение опции, где minRangeValue и maxRangeValue - поля соответствующей опции в базе, скрипту они недоступны)
---@alias UI_OPTION_DATA_ACTION number - выполнение специального действия
---@alias UI_OPTION_DATA UI_OPTION_DATA_FIXED | UI_OPTION_DATA_BOOLEAN | UI_OPTION_DATA_DISCRETE | UI_OPTION_DATA_DISCRETE_FLOAT | UI_OPTION_DATA_ACTION

---@alias UI_OPTION_VIEW_LABEL number - Label, TextView и т.п. - для показа заголовков
---@alias UI_OPTION_VIEW_CHECKBOX number - CheckButton и т.п. - для показа состояния включено/выключено
---@alias UI_OPTION_VIEW_RADIO number - RadioButton, RadioGroup и т.п. - зарезервировано
---@alias UI_OPTION_VIEW_SLIDER number - показ диапазона в виде слайдера
---@alias UI_OPTION_VIEW_LIST number - показ диапазона в виде списка
---@alias UI_OPTION_VIEW_PUSH_BUTTON number - визуализация для UI_OPTION_DATA_ACTION
---@alias UI_OPTION_VIEW UI_OPTION_VIEW_LABEL | UI_OPTION_VIEW_CHECKBOX | UI_OPTION_VIEW_RADIO | UI_OPTION_VIEW_SLIDER | UI_OPTION_VIEW_LIST | UI_OPTION_VIEW_PUSH_BUTTON

--[[ EVENTS --]]

---@alias EVENT_OPTION_CHANGED "EVENT_OPTION_CHANGED"

---@overload fun(eventFunction: fun(data: { sysCustomId: string }), sysEventName: EVENT_OPTION_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param optionBaseId ObjectId
function options.Apply( optionBaseId ) end

---@param optionBaseId ObjectId
function options.Cancel( optionBaseId )end

---@param optionBaseId ObjectId
function options.CancelPreview( optionBaseId ) end

---@param groupId ObjectId
---@return table<integer, ObjectId>
function options.GetBlockIds( groupId ) end

---@param collectionId ObjectId
---@return { isEnabled: boolean, isNeedPreview: boolean, isPreview: boolean, sysCustomType: string, name: WString, description: WString }
function options.GetCollectionInfo( collectionId ) end

---@param pageId ObjectId
---@return table<integer, ObjectId>
function options.GetGroupIds( pageId ) end

---@param sysCustomId string
---@return nil | ObjectId
function options.GetOptionByCustomId( sysCustomId ) end

---@param blockId ObjectId
---@return table<integer, ObjectId>
function options.GetOptionIds( blockId ) end

---@param optionId ObjectId
---@return { isEnabled: boolean, isNeedPreview: boolean, isPreview: boolean, dataType: UI_OPTION_DATA, viewType: UI_OPTION_VIEW, sysCustomId: string, sysCustomType: string, name: WString, description: WString, useAttemptWarning: WString, minName: WString, minDescription: WString, maxName: WString, maxDescription: WString, currentIndex: integer, defaultIndex: integer, baseIndex: integer, values: {} | { name: WString, description: WString, stringValue: string, floatValue: number }, valueCount: integer, isRestartToApply: boolean }
function options.GetOptionInfo( optionId ) end

---@param sysCustomType string
---@return table<integer, ObjectId>
function options.GetOptionsByCustomType( sysCustomType ) end

---@return table<integer, ObjectId>
function options.GetPageIds() end

---@param optionBaseId ObjectId
function options.Preview( optionBaseId ) end

---@param optionBaseId ObjectId
function options.ResetToDefault( optionBaseId ) end

---@param optionId ObjectId
---@param index integer
function options.SetOptionCurrentIndex( optionId, index ) end

function options.Update() end