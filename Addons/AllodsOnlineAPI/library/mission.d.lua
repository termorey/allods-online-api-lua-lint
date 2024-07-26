---@meta

---@class raid
mission = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_CAMERA_DIRECTION_CHANGED "EVENT_CAMERA_DIRECTION_CHANGED"
---@alias EVENT_CANT_LEAVE_GAME_IN_COMBAT "EVENT_CANT_LEAVE_GAME_IN_COMBAT"
---@alias EVENT_DND_DRAG_CANCELLED "EVENT_DND_DRAG_CANCELLED"
---@alias EVENT_DND_DRAG_OVER "EVENT_DND_DRAG_OVER"
---@alias EVENT_DND_DRAG_TO "EVENT_DND_DRAG_TO"
---@alias EVENT_DND_DROP_ATTEMPT "EVENT_DND_DROP_ATTEMPT"
---@alias EVENT_DND_PICK_ATTEMPT "EVENT_DND_PICK_ATTEMPT"
---@alias EVENT_MISSION_FREE_PORTRAIT_SLOT "EVENT_MISSION_FREE_PORTRAIT_SLOT"
---@alias EVENT_MISSION_INITIALIZED "EVENT_MISSION_INITIALIZED"
---@alias EVENT_LOADING_PROGRESS "EVENT_LOADING_PROGRESS"
---@alias EVENT_UNSTUCK_SPELL_EFFECT "EVENT_UNSTUCK_SPELL_EFFECT"
---@alias EVENT_UNSTUCK_SPELL_CHANGED "EVENT_UNSTUCK_SPELL_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_CAMERA_DIRECTION_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CANT_LEAVE_GAME_IN_COMBAT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_DND_DRAG_CANCELLED)
---@overload fun(eventFunction: fun(data: { targetWidget: WidgetSafe, targetId: integer, enter: boolean }), sysEventName: EVENT_DND_DRAG_OVER)
---@overload fun(eventFunction: fun(data: { posX: integer, posY: integer, outside: boolean, kbFlags: KBF }), sysEventName: EVENT_DND_DRAG_TO)
---@overload fun(eventFunction: fun(data: { targetWidget: WidgetSafe | nil, targetId: integer, kbFlags: KBF }), sysEventName: EVENT_DND_DROP_ATTEMPT)
---@overload fun(eventFunction: fun(data: { srcWidget: WidgetSafe, srcId: integer, posx: integer, posY: integer, kbFlags: KBF }), sysEventName: EVENT_DND_PICK_ATTEMPT)
---@overload fun(eventFunction: fun(data: { slot: integer }), sysEventName: EVENT_MISSION_FREE_PORTRAIT_SLOT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MISSION_INITIALIZED)
---@overload fun(eventFunction: fun(data: { sysStage: ENUM_LOADING_PROGRESS, current: integer, total: integer, firstTime: boolean, finished: boolean, fraction: number, mapName: WString, mapDescription: WString, mapImage: TextureId }), sysEventName: EVENT_LOADING_PROGRESS)
---@overload fun(eventFunction: fun(data: { id: SpellId }), sysEventName: EVENT_UNSTUCK_SPELL_EFFECT)
---@overload fun(eventFunction: fun(data: { id: SpellId, effect: EFFECT_TYPE } | { id: SpellId, effect: EFFECT_TYPE_COOLDOWN_STARTED, duration: integer, remaining: integer } | { id: SpellId, effect: EFFECT_TYPE_SPELL_PREPARED, prepared: boolean } | { id: SpellId, effect: EFFECT_TYPE_SPELL_ACTIVE_STATE_CHANGED, isActive: boolean, objectId: ObjectId | nil }), sysEventName: EVENT_UNSTUCK_SPELL_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function mission.CancelLogout() end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
function mission.ClearCharacterScene( index ) end

function mission.ClearChatInput() end

function mission.DNDCancelDrag() end

function mission.DNDConfirmDropAttempt() end

function mission.DNDConfirmPickAttempt() end

---@param wtSrc WidgetSafe # контрол, для которого будет обрабатываться drag&drop
---@param id integer # уникальный идентификатор, связанный с контролом wtSrc
---@param isDragOnly boolean # drag&drop  включается либо только на перетаскивание, либо как на перетаскивание, так и на клик
function mission.DNDRegister( wtSrc, id, isDragOnly ) end

---@param wtSrc WidgetSafe # контрол, зарегистрированный ранее для drag&drop
function mission.DNDUnregister( wtSrc ) end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param items nil | table<integer, ObjectId> # индексированный с 0 идентификатор вещей. Если nil, то ничего не примериваем.
function mission.DressCharacterScene( index, items ) end

---@param slotIndex integer # индекс слота, 0..3 для нормальных портретов, 0..15 для маленьких
---@param isSmall boolean # портрет в маленьком разрешении
function mission.FreePortrait( slotIndex, isSmall ) end

---@return number # величина поворота в радианах
function mission.GetCameraDirection() end

---@return { sysCmdType: string, hasPrefix: boolean, cmdName: WString, cmdArg: WString, text: WString }
function mission.GetChatInput() end

---@param text WString # строка, для которой надо вернуть похожие команды
---@return table<integer, { alias: WString, sysId: string }>
function mission.GetChatInputSimilarCommands( text ) end

---@return LuaFullDateTime
function mission.GetGlobalDateTime() end

---@return number # Unix time (общее время в миллисекундах прошедшее с 1-го января 1970 года)
function mission.GetGlobalDateTimeMs() end

---@return nil | { comboCounter: CurrencyId | ResourceId, prizes: table<integer, { daysToReceive: integer, prizes: table<integer, ItemId>, counter: CurrencyId | ResourceId }> }
function mission.GetLoginLotteryInfo() end

---@return nil | { avatar: WString, lotteryTime: integer, prize: ObjectId, state: integer, lotteryResource: { maxWinner: integer, prizes: table<integer, ObjectId>, ticketCounter: CurrencyId,  ticketResource: ObjectId } }
function mission.GetLotteryHistory() end

---@return nil | { state: integer, tickets: table<integer, integer>, winners: table<integer, ObjectId>, lotteryResource: { maxWinners: integer, prizes: table<integer, ObjectId>, ticketCounter: CurrencyId, ticketResources: ObjectId }, consolationPrizes: table<integer, { positions: integer, prizes: table<integer, ObjectId> }> }
function mission.GetLotteryInfo() end

---@return integer # максимально допустимое число сцен
function mission.GetMaxCharacterSceneCount() end

---@param month integer # месяц
---@param year integer # год
---@return integer # количество дней в месяце
function mission.GetMonthDaysCount( month, year ) end

---@return integer # количество миллисекунд, прошедших с начала игры
function mission.GetPlayTimeMs() end

---@return WString # локализованное имя шарда
function mission.GetShardName() end

---@return nil | SpellId # если возможность вытаскивания есть, то идентификатор ресурса спелла
function mission.GetUnstuckSpell() end

---@return nil | { experienceFactor: number }
function mission.GetWeakFactionBonus() end

---@return nil | FactionId # если есть на сервере информация о более слабой фракции, которой выдаются дополнительные бонусы, то FactionId
function mission.GetWeakFactionId() end

---@param currencyId CurrencyId | ResourceId # идентификатор валюты, служащей счётчиком полученных призов (см. mission.LoginLotteryReceivePrizes( currencyId ), поля counter)
---@return nil | { comboCounter: CurrencyId | ResourceId, prizes: table<integer, { daysToReceive: integer, counter: CurrencyId | ResourceId, prizes: table<integer, ItemId> }> }
function mission.LoginLotteryReceivePrizes( currencyId ) end

function mission.Logout() end

function mission.RequestLotteryHistory() end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
function mission.ResetCharacterSceneRotation( index ) end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param angle integer # на сколько радиан повернуть
function mission.RotateCharacterScene( index, angle ) end

---@param decalId DecalObjectId
function mission.SetAEMarkDecal( decalId ) end

---@param minRange number # минимальная область действия спела AEMark (в метрах)
function mission.SetAEMarkMinRange( minRange ) end

---@param decalId DecalObjectId
function mission.SetAEMarkOutOfRangeDecal( decalId ) end

---@param radius number # радиус AEMark (в метрах)
function mission.SetAEMarkRadius( radius ) end

---@param range number # область действия спела AEMark (в метрах)
function mission.SetAEMarkRange( range ) end

---@param visObjectId VisObjectId
function mission.SetAEMarkVisObj( visObjectId ) end

---@param range number # длина сектора, в метрах
---@param angle number # угол раствора сектора, в радианах
function mission.SetAESectorProps( range, angle ) end

---@param fillerObjId VisObjectId | nil # для заполнения сектора
---@param leftObjId VisObjectId | nil # для левого края сектора
---@param rightObjId VisObjectId | nil # для правого края сектора
---@param centerObjId VisObjectId | nil # для середины сектора
function mission.SetAESectorVisObj( fillerObjId, leftObjId, rightObjId, centerObjId ) end

---@param index CHAR_SCENE # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param wtCharacterControl3D Control3DSafe # контрол, в котором должен отображаться персонаж
---@param unitId ObjectId | nil # идентификатор отображаемого юнита, или nil  для очистки
function mission.SetCharacterScene( index, wtCharacterControl3D, unitId ) end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param pos { posX: number, posY: number, spoZ: number } # таблица с относительной позицией персонажа
function mission.SetCharacterScenePosition( index, pos ) end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param scale number # коэффициент масштабирования
function mission.SetCharacterSceneScaleFactor( index, scale ) end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param isSmooth boolean # если true (по умолчанию), то поворачивать персонажа в 3D-view-е с анимацией
function mission.SetCharacterSceneSmoothRotation( index, isSmooth ) end

---@param arg WString # аргумент команды
function mission.SetChatInputArg( arg ) end

---@param wtEditLine EditLineSafe
function mission.SetChatInputData( wtEditLine ) end

---@param wtEditLine integer # максимальное количество записей
function mission.SetChatInputHistoryMaxSize( wtEditLine ) end

---@param wtEditLine EditLineSafe
function mission.SetChatInputNextData( wtEditLine ) end

---@param wtEditLine EditLineSafe
function mission.SetChatInputPrevData( wtEditLine ) end

---@param uniqueId UniqueId
function mission.SetChatInputTarget( uniqueId ) end

---@param text WString # исходная строка (чаще всего из EditLine)
---@param cursorPos integer # позиция курсора
function mission.SetChatInputText( text, cursorPos ) end

---@param sysCmdType string # тип команды (ее идентификатор)
function mission.SetChatInputType( sysCmdType ) end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param wtCharacterControl3D Control3DSafe # контрол, в котором должен отображаться босс
---@param bossIndex? integer | nil # необязательынй параметр, индекс босса полученный из guildBossLib.GetVariations()
---@param stateIndex? integer | nil # необязательынй параметр, индекс состояния босса, полученный guildBossLib.GetVariations() из списка previewStates
function mission.SetGuildBossScene( index, wtCharacterControl3D, bossIndex, stateIndex ) end

---@param markerId VisObjectId | nil # модель маркера или nil, если маркер удаляется
---@param pos nil | { posX: number, posY:number, posZ: number } # таблица с позицией маркера или nil, если позиция неважна (маркер удаляется)
function mission.SetMarkerObject( markerId, pos ) end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param wtCharacterControl3D Control3DSafe # контрол, в котором должен отображаться персонаж
---@param mountSkinId ObjectId # идентификатор отображаемого скина маунта главного игрока
function mission.SetMountScene( index, wtCharacterControl3D, mountSkinId ) end

---@param slotIndex integer # индекс слота, 0..3 для нормальных портретов, 0..15 для маленьких
---@param isSmall boolean # задавать ли портрет в маленьком разрешении
---@param wtPortrait WidgetSafe # контрол, для фоновового слоя которого будет задана текстура портрета
---@param unitId ObjectId # идентификатор юнита, для которого задается портрет
function mission.SetPortraitBackgroundTexture( slotIndex, isSmall, wtPortrait, unitId ) end

---@param index integer # индекс сцены, [0..GetMaxCharacterSceneCount() - 1]
---@param wtControl3D Control3DSafe # контрол, в котором должен отображаться объект
---@param visObjectId VisObjectId | AliasVisObjectId # идентификатор визуального объекта (эффекта) или его обвязки
function mission.SetVisObjectScene( index, wtControl3D, visObjectId ) end

---@param show boolean # показать/скрыть AEMark типа AEMarkDecal
function mission.ShowAEMark( show ) end

---@param show boolean # показать/скрыть AEMark типа AEMarkSector
function mission.ShowAESector( show ) end