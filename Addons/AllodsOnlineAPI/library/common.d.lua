---@meta

---@class common
common = {}

--[[ ENUMS --]]



--[[ EVENTS --]]



--[[ FUNCTIONS --]]

---@param isActive boolean # true, если нужно показать тултип, false - скрыть
---@param tooltipData nil | table # если isActive == true, то должна быть передана таблица параметров, подробнее смотри в разделе "Описание tooltipData"
function common.CallTooltip( isActive, tooltipData ) end

---@param functionRef integer # ссылка на функцию полученная из common.DelayedCall( delayMs, function, ... )
---@return boolean # true, если вызов был отменен, false если по ссылке вызов не найден
function common.CancelDelayedCall( functionRef ) end

---CreateValuedObject
---@param text WString | ValuedText # текстовое описание, впоследствие может быть получено из ValuedObject методом GetText()
---@param table table<string, boolean | number | string | WString | table> # таблица произвольного вида, содержащая элементы простых типов (boolean, number, string, WString, table); впоследствие может быть получено из ValuedObject методом GetId()
---@param handledMouseButtons? MOUSE_BUTTON # если задана, битовая маска, задающая набор клавиш мыши, которые должны обрабатываться при одинарном клике по объекту. По умолчанию обрабатываются все клавиши
---@param handledMouseButtonsDbl? MOUSE_BUTTON # если задана, битовая маска, задающая набор клавиш мыши, которые должны обрабатываться при двойном клике по объекту. По умолчанию обрабатываются все клавиши
---@return ValuedObject # новый экземпляр ValuedObject
function common.CreateValuedObject( text, table, handledMouseButtons, handledMouseButtonsDbl ) end

---CreateValuedText
---@param textValues? table # если задано, то будет использовано для заполнения нового ValuedText через SetTextValues
---@return ValuedText # новый экземпляр ValuedText
function common.CreateValuedText(textValues) end

---@param delayMs integer # задержка вызова в миллисекундах, должна быть больше 0
---@param fn function # функция которая будет выполнена
---@param ... any # от 0 до 10 произвольных аргументов функции. Захват upvalues/closure произойдет в момент вызова данной API
---@return integer # ссылка на функцию, для отмены вызова через common.CancelDelayedCall
function common.DelayedCall( delayMs, fn, ... ) end

---@param sysEventName string # название события
---@param object ObjectId # идентификатор объекта для которого отключается персональное событие
function common.DisablePersonalEvent( sysEventName, object ) end

---@param sysEventName string # название события
---@param object ObjectId # идентификатор объекта для которого включается персональное событие
function common.EnablePersonalEvent( sysEventName, object ) end

---EnableUIRender
---@param enable boolean # true включает отображение пользовательского интерфейса, false выключает
function common.EnableUIRender (enable) end

---ExtractWStringFromValuedText
---@param valuedText ValuedText # экземпляр ValuedText
---@return WString # строка, собранная из строк внутри ValuedText
function common.ExtractWStringFromValuedText(valuedText) end

---FormatFloat
---@param value number #исходное значение
---@param format string # строка с форматом
---@param separator? string # разделитель разрядов, если задан то через каждые 3 разряда до десятичной точки будут вставляться символы разделителя
---@return WString # текстовое представление исходного числа в указанном формате
function common.FormatFloat (value, format, separator) end

---FormatInt
---@param value integer # исходное целое значение
---@param format string # строка с форматом
---@param separator? string # разделитель разрядов, если задан то через каждые 3 разряда будут вставляться символы разделителя
---@return WString # текстовое представление исходного числа в указанном формате
function common.FormatInt (value, format, separator) end

---FormatNumber
---@param value number # исходное число
---@param format string # строка с форматом
---@return WString # текстовое представление исходного числа в указанном формате
function common.FormatNumber (value, format) end

---@return integer # Текущий отсчет таймера в миллисекундах
function common.GetAbsTimeMs() end

---GetAddonInfo
---@param addonName string # действительное системное имя аддона (common.GetAddonSysName)
---@return false | {state: ADDON_STATE, rawSysName: string, sysName: string, userAddon: boolean, managed: boolean, autoStart: boolean, userCommonScripts: boolean, name: WString, description: WString, license: WString, sourceUrl: WString, supportUrl: WString, author: string, version: string, apiVersion: number, buildTime: number } # таблица с полями
function common.GetAddonInfo ( addonName ) end

---GetAddonMainForm
---@param sysAddonName string # имя аддона
---@return FormSafe | false | nil # результат вызова
function common.GetAddonMainForm (sysAddonName) end

---GetAddonName
---@return string # имя аддона, в котором выполняется скрипт
function common.GetAddonName () end

---@return string # имя аддона, в котором выполняется скрипт
function common.GetAddonSysName() end

---@param sysGroup string
---@param optional boolean | nil
---@return RelatedSoundsLua | nil
function common.GetAddonRelatedSoundGroup( sysGroup, optional ) end

---@param sysGroup string
---@param optional boolean | nil
---@return RelatedTextsLua | nil
function common.GetAddonRelatedTextGroup( sysGroup, optional ) end

---@param sysGroup string
---@param optional boolean | nil
---@return RelatedTexturesLua | nil
function common.GetAddonRelatedTextureGroup( sysGroup, optional ) end

---@param sysGroup string # идентификатор группы
---@param optional boolean | nil # если true, то отсутствие искомой группы не считается ошибкой (по умолчанию false)
---@return RelatedWidgetsLua | nil # группа шаблонов виджетов или nil в случае если группа не найдена
function common.GetAddonRelatedWidgetGroup( sysGroup, optional ) end

---GetAllodsGoals
---@return table<integer, { goalId: ObjectId, state: integer, locator: nil | { zoneId: ObjectId, position: GamePosition }, stages: nil | table<integer, { goalId: ObjectId, state: integer, locator: nil | { zoneId: ObjectId, position: GamePosition } }> }>
function common.GetAllodsGoals () end

---GetAllodsGoalsOnLoadingScreen
---@return table<integer, GoalId | nil>
function common.GetAllodsGoalsOnLoadingScreen () end

---GetApiType
---@param value any # любое значение
---@return string # имя типа, к которому принадлежит аргумент (нелокализуемая строка)
function common.GetApiType (value) end

---GetCredits
---@return table<integer, OfficeTable> # индексированный с 0 список таблиц, каждая из которых описывает отдельный офис (филиал, компанию, блок данных)
function common.GetCredits () end

---GetCSSList
---@return table<integer, WString> # индексированный с 1 список названий всех CSS-классов
function common.getCSSList () end

---GetDateTimeFromMs
---@param timeMs integer # Unix time (время в миллисекундах прошедшее с 1-го января 1970 года)
---@return nil | LuaFullDateTime # если нет ошибки, то таблица в формате LuaFullDateTime
function common.GetDateTimeFromMs (timeMs) end

---@return table<integer, { executeTimestamp: integer, function: function, functionRef: integer, arguments: table<integer, any> }>
function common.GetDelayedCalls() end

---GetEmptyWString
---@return WString # пустая локализуемая строка
function common.GetEmptyWString () end

---GetFatalityPhraseLimits
---@return nil | { minLength: number, maxLength: number }
function common.GetFatalityPhraseLimits () end

---GetFirstPaymentBonusInfo
---@return table<integer, { min: integer, bonus: integer, background: TextureId, items: table<integer, ResourceId> }> # список бонусов
function common.GetFirstPaymentBonusInfo () end

---@return { min: number, max: number, avg: number, instant: number }
function common.GetFPSData() end

---GetIntFromWString
---@param text WString # локализуемый текст
---@return integer | nil # результат (nil при невозможности конвертации)
function common.GetIntFromWString (text) end

---GetLocalDateTime
---@return LuaFullDateTime
function common.GetLocalDateTime () end

---GetLocalDateTimeMs
---@return number # (int64) Unix time (общее время в миллисекундах прошедшее с 1-го января 1970 года)
function common.GetLocalDateTimeMs () end

---GetLocale
---@return nil | Locale # локализация или nil - в случае ошибки
function common.GetLocale () end

---GetLocaleList
---@return nil | table<integer, Locale> # список локалей, индексация начинается с 1; или nil - в случае ошибки
function common.GetLocaleList () end

---GetLocalization
---@return Localization # локализация
function common.GetLocalization () end

---@return integer # количество микросекунд (1/1000 миллисекунды) с момента старта системы
function common.GetMks() end

---GetMsFromDateTime
---@param timeTable { y: integer, m: integer, d: integer, h?: integer, min?: integer, s?: integer, ms?: integer }
---@return integer # Unix time (время в миллисекундах прошедшее с 1-го января 1970 года)
function common.GetMsFromDateTime( timeTable ) end

---GetRandFloat
---@param min number # минимальное значение
---@param max number # максимальное значение
---@return number # псевдо-случайное число
function common.GetRandFloat( min, max ) end

---GetRandInt
---@param min integer # минимальное значение
---@param max integer # максимальное значение
---@return integer # псевдо-случайное число
function common.GetRandInt( min, max ) end

---GetScriptCfgVar
---@param name string # имя переменной
---@return nil | boolean | number | string # значение переменной или nil, если переменная не определена
function common.GetScriptCfgVar( name ) end

---@param setBonusId SetBonusId # идентификатор бонуса комплектной экипировки
---@return nil | { name: WString, description: ValuedText, loreDescription: WString, sourceDescription: GlossaryId }
function common.GetSetBonusInfo( setBonusId ) end

---GetShortString
---@param text WString # строка
---@return nil | WString # сокращённая строка или nil, если строка-аргумент была пустой
function common.GetShortString( text ) end

---@param specialStatId SpecialStatId # идентификатор Special-стата
---@return nil | { name: WString, tooltipName: WString, shortDescription: WString, type: ENUM_SpecialStatType }
function common.GetSpecialStatInfo( specialStatId ) end

---@param specialStatId SpecialStatId # идентификатор Special-стата
function common.GetSpecialStatInfo( specialStatId ) end

---GetStateManagedAddons
---@return table<integer, { name: string, state: ADDON_STATE }> # таблица (индексированная c 1) содержащая таблицы с информацией по аддонам
function common.GetStateManagedAddons() end

---GetStateName
---@return string # имя стейта аддона, в котором выполняется скрипт
function common.GetStateName() end

---@param sysGroup string
---@param optional boolean | nil
---@return RelatedSoundsLua | nil
function common.GetStateRelatedSoundGroup( sysGroup, optional ) end

---@param sysGroup string | nil
---@param optional boolean | nil
---@return RelatedTextsLua | nil
function common.GetStateRelatedTextGroup( sysGroup, optional ) end

---@param sysGroup string
---@param optional boolean | nil
---@return RelatedTexturesLua | nil
function common.GetStateRelatedTextureGroup( sysGroup, optional ) end

---@param sysGroup string
---@param optional boolean | nil
---@return RelatedTexturesLua | nil
function common.GetStateRelatedWidgetGroup( sysGroup, optional ) end

---GetTerritoryInfo
---@return { ignoreAutoShard: boolean, showZoneSection: boolean, showRaitingInfo: boolean }
function common.GetTerritoryInfo() end

---@param textureId TextureId # идентификатор ресурса текстуры
---@return { xdbFile: string, binaryFile: string, type: 0 | 1 | 2, realWidth: integer, realHeight: integer }
function common.GetTextureInfo( textureId ) end

---@param textureId TextureId # идентификатор ресурса текстуры
---@return { sizeX: integer, sizeY: integer }
function common.GetTextureSize( textureId ) end

function common.HitFrameHandler() end

---@param name WString # проверяемое значение
---@return boolean # true если имя валидно
function common.IsAvatarNameValid( name ) end

---GetTexturePath
---@param textureId TextureId # идентификатор ресурса текстуры
---@return nil | string # путь до ресурса
function common.GetTexturePath( textureId ) end

---IsCapsLockEnabled
---@return boolean # true, если CapsLock сейчас активен
function common.IsCapsLockEnabled() end

---IsEmptyValuedObject
---@param valuedText ValuedText # экземпляр ValuedText
---@return boolean # true, если ValuedText пустой
function common.IsEmptyValuedObject( valuedText ) end

---IsEmptyWString
---@param text WString # локализуемая строка
---@return boolean # пуста ли данная локализуемая строка
function common.IsEmptyWString( text ) end

---IsEqualStats
---@param firstStatId SpecialStatId | ENUM_InnateStats # идентификатор первой характеристики
---@param secondStatId SpecialStatId | ENUM_InnateStats # идентификатор второй характеристики
---@return boolean # true, если характеристики влияют на один и тот параметр; false, характеристики влияют на разные статы
function common.IsEqualStats( firstStatId, secondStatId ) end

---IsFatalityPhraseFiltered
---@param text WString # текст на проверку
---@return nil | { filtered: boolean, reason?: table<integer, WString> }
function common.IsFatalityPhraseFiltered( text ) end

---IsKeyEnabled
---@param vkCode VK_CODES # числовое значение виртуальной клавиши ( http://msdn.microsoft.com/en-us/library/windows/desktop/dd375731(v=vs.85).aspx )
---@return boolean # true, если клавиша сейчас активна
function common.IsKeyEnabled( vkCode ) end

---IsOnPayToPlayShard
---@return boolean # на подписочном ли серевере
function common.IsOnPayToPlayShard() end

---IsSoundEnabled
---@return boolean # true если включен звук в игре
function common.IsSoundEnabled() end

---IsSubstring
---@deprecated
---@param text1 WString # первый локализуемый текст
---@param text2 WString # второй локализуемый текст
---@return boolean # true, если вторая подстрока является подстрокой первой строки
function common.IsSubstring( text1, text2 ) end

---IsSubstringEx
---@deprecated
---@param text1 WString # первый локализуемый текст
---@param text2 WString # второй локализуемый текст
---@return boolean # true, если вторая подстрока является подстрокой первой строки
function common.IsSubstringEx( text1, text2 ) end

---IsTextFiltered
---@param text WString # текст на проверку
---@return boolean # имеет ли переданный текст запрещенные слова
function common.IsTextFiltered( text ) end

---IsUIRenderEnabled
---@return boolean # true если включено отображение пользовательского интерфейса
function common.IsUIRenderEnabled() end

---IsValidText
---@param text any # проверяемое значение
---@return boolean # true если переданный аргумент является валидным текстом
function common.IsValidText( text ) end

---IsValuedObject
---@param object any # любое значение
---@return boolean # имеет ли переданное значение тип ValuedObject
function common.IsValuedObject( object ) end

---IsValuedText
---@param value any # любое значение
---@return boolean # имеет ли переданное значение тип ValuedText
function common.IsValuedText( value ) end

---IsWString
---@param value any # любое значение
---@return boolean # имеет ли переданное значение тип WString
function common.IsWString( value ) end

---LogError
---@param filter string # фильтр логирования
---@param text01 string | WString # первый обязательный текстовый аргумент
---@param ... string | WString # список необязательных текстовых аргументов
function common.LogError( filter, text01, ... ) end

---LogInfo
---@param filter string # фильтр логирования
---@param text01 string | WString # первый обязательный текстовый аргумент
---@param ... string | WString # список необязательных текстовых аргументов
function common.LogInfo( filter, text01, ... ) end

---LogWarning
---@param filter string # фильтр логирования
---@param text01 string | WString # первый обязательный текстовый аргумент
---@param ... string | WString # список необязательных текстовых аргументов
function common.LogWarning( filter, text01, ... ) end

---MakeUserScreenshot
---@param postpone? boolean # если true, снимок откладывается на два кадра
function common.MakeUserScreenshot( postpone ) end

-- FunctionCommonOnEvent

-- FunctionName

-- FunctionCommonOnReaction

---QuitGame
function common.QuitGame() end

---RegisterEventHandler
---@param eventFunction function # функция-обработчик
---@param sysEventName string # название события
---@param params? (ObjectId | table) # необязательный параметр (можно опустить) с таблицей описывающей фильтр сообщения или идентификатор объекта
---@param requireMainThread? boolean # необязательный параметр, указывает клиенту на то, что при обработке события будет вызван "непотокобезопасный" код и событие нужно обработать в основном потоке; для аддонов разработчиков по умолчанию false; для аддонов пользователей всегда true
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

---@param handlerFunction function # функция-обработчик соответствующая шаблону
---@param needHit boolean # требуется ли взводить флаг для вызова обработчика
function common.RegisterFrameHandler( handlerFunction, needHit ) end

---RegisterReactionHandler
---@param reactionFunction function # функция-обработчик
---@param sysReactionName string # название реакции
---@param requireMainThread? boolean # необязательный параметр, указывает клиенту на то, что при обработке реакции будет вызван "непотокобезопасный" код и реакцию нужно обработать в основном потоке; для аддонов разработчиков по умолчанию false; для аддонов пользователей всегда true
function common.RegisterReactionHandler( reactionFunction, sysReactionName, requireMainThread ) end

---@param eventName string # идентификатор события, непустая строка
---@param eventParams table # таблица с параметрами события, произвольная с учетом ограничений перечисленных выше
function common.SendEvent( eventName, eventData ) end

---@param eventName string
---@param eventData any
function common.SendUserModsEvent( eventName, eventData ) end

---SetCursor
---@param name string # псевдоним (alias) курсора
function common.SetCursor( name ) end

---SetIconFlash
---@param flashCount integer # количество миганий (вспышек)
function common.SetIconFlash( flashCount ) end

---SetLocale
---@param locale string | integer # короткое имя или индекс локали из списка полученного из GetLocaleList
function common.SetLocale( locale ) end

---StateLoadManagedAddon
---@param name string # имя аддона
function common.StateLoadManagedAddon( name ) end

---@param name string # имя аддона
function common.StateReloadManagedAddon( name ) end

---StateUnloadManagedAddon
---@param name string # имя аддона
function common.StateUnloadManagedAddon( name ) end

---UnRegisterEvent
---@param sysEventName string # название события
---@deprecated
function common.UnRegisterEvent( sysEventName ) end

---UnRegisterEventHandler
---@param eventHandler function # функция-обработчик
---@param sysEventName string # название события
---@param params? (table | ObjectId) # необязательный параметр (может быть опущен), описывающий фильтр сообщения
function common.UnRegisterEventHandler( eventHandler, sysEventName, params ) end

function common.UnRegisterFrameHandler() end

---@param sysReactionName string # название реакции
function common.UnRegisterReaction( sysReactionName ) end

---UnRegisterReactionHandler
---@param reactionFunction function # функция-обработчик
---@param sysReactionName string # название реакции
function common.UnRegisterReactionHandler( reactionFunction, sysReactionName ) end

---CompareWString
---@deprecated
---@param text1 WString # первый локализуемый текст
---@param text2 WString # второй локализуемый текст
---@return -1 | 0 | 1
function common.CompareWString( text1, text2 ) end

---CompareWStringEx
---@deprecated
---@param text1 WString # первый локализуемый текст
---@param text2 WString # второй локализуемый текст
---@return -1 | 0 | 1
function common.CompareWStringEx( text1, text2 ) end

---EscapeWString
---@param str WString # исходная строка
---@return WString # результирующая строка
function common.EscapeWString( str ) end

---GetWStringLength
---@param str WString # исходная строка
---@return integer # длина строки
function common.GetWStringLength ( str ) end

---Global
---@param name string # имя регистрируемой глобальной переменной
---@param initialValue any # начальное значение глобальной переменной, может быть использовано любое значение любого типа
function Global( name, initialValue ) end

---@param name string # имя регистрируемой общей глобальной константы
---@param initialValue integer # значение общей глобальной константы, должно быть целым числом
function GlobalConst( name, value ) end

---@param name string # проверяемое имя
---@return boolean # true, если имя занято
function HasGlobalConst( name ) end

---TruncateWString
---@param str WString # исходная строка
---@param maxOverallLen integer # максимальная длина результирующей строки
---@param trailingDotsCount integer # количество точек, добавляемых в конец результирующей строки в случае, если длина str превышает maxOverallLen
---@param needTrim boolean # произвести операцию trim (удалить пробелы и табуляции с обоих концов строки) после обрезания str и до добавления точек
---@return WString # результирующая строка
function common.TruncateWString( str, maxOverallLen, trailingDotsCount, needTrim ) end
