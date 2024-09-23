---@meta

---@class common
common = {}

--[[ ENUMS --]]



--[[ EVENTS --]]



--[[ FUNCTIONS --]]

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

---GetAddonInfo
---@return {sysName: string , sysFullName: string, name: WString, description: WString } # таблица с полями
function common.GetAddonInfo () end

---GetAddonMainForm
---@param sysAddonName string # имя аддона
---@return FormSafe | false | nil # результат вызова
function common.GetAddonMainForm (sysAddonName) end

---GetAddonName
---@return string # имя аддона, в котором выполняется скрипт
function common.GetAddonName () end

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

---GetAllodsGoals
---@return table<integer, { goalId: ObjectId, state: integer, locator: nil | { zoneId: ObjectId, position: GamePosition }, stages: nil | table<integer, { goalId: ObjectId, state: integer, locator: nil | { zoneId: ObjectId, position: GamePosition } }> }>
function common.GetAllodsGoals () end

---GetAllodsGoalsOnLoadingScreen
---@return table<integer, { avatarName: WString, avatarId: integer, goals: table<integer, { goalId: ObjectId, state: integer, stages: nil | table<integer, { goalId: ObjectId, state: integer }> }> }>
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

---GetEmptyWString
---@return WString # пустая локализуемая строка
function common.GetEmptyWString () end

---GetFatalityPhraseLimits
---@return nil | { minLength: number, maxLength: number }
function common.GetFatalityPhraseLimits () end

---GetFirstPaymentBonusInfo
---@return table<integer, { min: integer, bonus: integer, background: TextureId, items: table<integer, ResourceId> }> # список бонусов
function common.GetFirstPaymentBonusInfo () end

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

---GetShortString
---@param text WString # строка
---@return nil | WString # сокращённая строка или nil, если строка-аргумент была пустой
function common.GetShortString( text ) end

---GetStateManagedAddons
---@return table<integer, { name: string, isLoaded: boolean }> # таблица (индексированная c 1) содержащая таблицы с информацией по аддонам
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

---GetTerritoryInfo
---@return { ignoreAutoShard: boolean, showZoneSection: boolean, showRaitingInfo: boolean }
function common.GetTerritoryInfo() end

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

-- FunctionCommonOnReaction

---QuitGame
function common.QuitGame() end

---RegisterEventHandler
---@param eventFunction function # функция-обработчик
---@param sysEventName string # название события
---@param params? (ObjectId | table) # необязательный параметр (можно опустить) с таблицей описывающей фильтр сообщения или идентификатор объекта
---@param requireMainThread? boolean # необязательный параметр, указывает клиенту на то, что при обработке события будет вызван "непотокобезопасный" код и событие нужно обработать в основном потоке; для аддонов разработчиков по умолчанию false; для аддонов пользователей всегда true
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

---RegisterReactionHandler
---@param reactionFunction function # функция-обработчик
---@param sysReactionName string # название реакции
---@param requireMainThread? boolean # необязательный параметр, указывает клиенту на то, что при обработке реакции будет вызван "непотокобезопасный" код и реакцию нужно обработать в основном потоке; для аддонов разработчиков по умолчанию false; для аддонов пользователей всегда true
function common.RegisterReactionHandler( reactionFunction, sysReactionName, requireMainThread ) end

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

---StateLoadManagedAddonGroup
---@param groupName string # имя группы аддонов
function common.StateLoadManagedAddonGroup( groupName ) end

---StateUnloadManagedAddon
---@param name string # имя аддона
function common.StateUnloadManagedAddon( name ) end

---StateUnloadManagedAddonGroup
---@param groupName string # имя группы аддонов
function common.StateUnloadManagedAddonGroup( groupName ) end

---UnRegisterEvent
---@param sysEventName string # название события
function common.UnRegisterEvent( sysEventName ) end

---UnRegisterEventHandler
---@param eventHandler function # функция-обработчик
---@param sysEventName string # название события
---@param params? (table | ObjectId) # необязательный параметр (может быть опущен), описывающий фильтр сообщения
function common.UnRegisterEventHandler( eventHandler, sysEventName, params ) end

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

---TruncateWString
---@param str WString # исходная строка
---@param maxOverallLen integer # максимальная длина результирующей строки
---@param trailingDotsCount integer # количество точек, добавляемых в конец результирующей строки в случае, если длина str превышает maxOverallLen
---@param needTrim boolean # произвести операцию trim (удалить пробелы и табуляции с обоих концов строки) после обрезания str и до добавления точек
---@return WString # результирующая строка
function common.TruncateWString( str, maxOverallLen, trailingDotsCount, needTrim ) end
