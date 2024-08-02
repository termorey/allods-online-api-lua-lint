---@meta

---@class raid
object = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_OBJECT_COMBAT_STATUS_CHANGED "EVENT_OBJECT_COMBAT_STATUS_CHANGED"
---@alias EVENT_OBJECT_DETECT_FINISHED "EVENT_OBJECT_DETECT_FINISHED"
---@alias EVENT_OBJECT_DETECTOR_LIST_CHANGED "EVENT_OBJECT_DETECTOR_LIST_CHANGED"
---@alias EVENT_OBJECT_DETECT_STARTED "EVENT_OBJECT_DETECT_STARTED"
---@alias EVENT_OBJECT_DIMINISHING_CHANGED "EVENT_OBJECT_DIMINISHING_CHANGED"
---@alias EVENT_OBJECT_DIMINISHING_GROUP_CHANGED "EVENT_OBJECT_DIMINISHING_GROUP_CHANGED"
---@alias EVENT_OBJECT_HEALTH_CHANGED "EVENT_OBJECT_HEALTH_CHANGED"
---@alias EVENT_OBJECT_MANA_CHANGED "EVENT_OBJECT_MANA_CHANGED"
---@alias EVENT_OBJECT_NAME_CHANGED "EVENT_OBJECT_NAME_CHANGED"
---@alias EVENT_OBJECT_SELECTABLE_CHANGED "EVENT_OBJECT_SELECTABLE_CHANGED"
---@alias EVENT_OBJECTS_HEALTH_CHANGED "EVENT_OBJECTS_HEALTH_CHANGED"
---@alias EVENT_OBJECT_UIINFO_CHANGED "EVENT_OBJECT_UIINFO_CHANGED"
---@alias EVENT_OBJECT_UIINFO_REMOVED "EVENT_OBJECT_UIINFO_REMOVED"
---@alias EVENT_PICK_OBJECT "EVENT_PICK_OBJECT"
---@alias EVENT_PROJECTED_OBJECTS_CHANGED "EVENT_PROJECTED_OBJECTS_CHANGED"
---@alias EVENT_SECRET_FINISHER_STATUS_CHANGED "EVENT_SECRET_FINISHER_STATUS_CHANGED"

---@overload fun(eventFunction: fun(data: { objectId: ObjectId, isCombat: boolean }), sysEventName: EVENT_OBJECT_COMBAT_STATUS_CHANGED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId }), sysEventName: EVENT_OBJECT_DETECT_FINISHED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId }), sysEventName: EVENT_OBJECT_DETECTOR_LIST_CHANGED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId }), sysEventName: EVENT_OBJECT_DETECT_STARTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_OBJECT_DIMINISHING_CHANGED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId, group: ENUM_DiminishingGroup, level: number }), sysEventName: EVENT_OBJECT_DIMINISHING_GROUP_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, healthDelta: integer | nil, healthLimitDelta: integer | nil, healthPercentsDelta: integer | nil, additionalDelta: integer | nil, additionalPercentsDelta: integer | nil, isInvulnerableChanged: boolean }), sysEventName: EVENT_OBJECT_HEALTH_CHANGED, ObjectId)
---@overload fun(eventFunction: fun(data: { id: ObjectId, manaDelta: integer | nil, manaLimitDelta: integer | nil, manaPercentsDelta: integer | nil }), sysEventName: EVENT_OBJECT_MANA_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_OBJECT_NAME_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_OBJECT_SELECTABLE_CHANGED)
---@overload fun(eventFunction: fun(data: table<integer, ObjectId>), sysEventName: EVENT_OBJECTS_HEALTH_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_OBJECT_UIINFO_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_OBJECT_UIINFO_REMOVED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, simplified: boolean, moveByClick: boolean, primary: boolean, dbClock: boolean, kbfFlags: KBF }), sysEventName: EVENT_PICK_OBJECT)
---@overload fun(eventFunction: fun(data: table<integer, ObjectId>), sysEventName: EVENT_PROJECTED_OBJECTS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SECRET_FINISHER_STATUS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param objectId ObjectId # идентификатор объекта
---@param heightOffset ATTACHED_OBJECT_POS # место дополнительно смещения проецируемой точки около объекта
function object.AddToProjected( objectId, heightOffset ) end

---@param objectId ObjectId # идентификатор объекта
---@param widget WidgetSafe # дескриптор виджета
---@param pos ATTACHED_OBJECT_POS_UP # расположение виджета (по вертикали)
function object.AttachWidget2D( objectId, widget, pos ) end

---@param objectId ObjectId # идентификатор объекта
---@param wtControl3D Control3DSafe # контрол-3D, который отвечает за показ сцены
---@param widget WidgetSafe # 2D-контрол, который "привязывается" как Widget3D к объекту
---@param heightOffset number # дополнительное смещение Widget3D по вертикали в метрах
function object.AttachWidget3D( objectId, wtControl3D, widget, heightOffset ) end

---@param objectId ObjectId # идентификатор объекта
---@return boolean # true - можно атаковать объект (его в принципе возможно атаковать, он враждебен, не мертв, доступен для атаки)
function object.CanAttack( objectId ) end

---@param objectId ObjectId # идентификатор объекта
function object.DetachAllWidgets3D( objectId ) end

---@param objectId ObjectId # идентификатор объекта
---@param widget? WidgetSafe | nil # виджет, который надо убрать. Если параметр не указан, то удаляются все виджеты, относящиеся к объекту.
function object.DetachWidget2D( objectId, widget ) end

---@param objectId ObjectId # идентификатор объекта
---@param widget WidgetSafe # 2D-контрол, который был "привязан" как Widget3D к объекту
function object.DetachWidget3D( objectId, widget ) end

---@param Id ObjectId | BuffId # идентификатор или объекта или ресурса буфа
---@return nil | { durationMs: integer, remainingMs: integer, stackCount: integer }
function object.GetBuffDynamicInfo( Id ) end

---@param Id ObjectId | BuffId # идентификатор или объекта или ресурса буфа
---@return nil | BuffInfo
function object.GetBuffInfo( Id ) end
---@alias BuffInfo { id: ObjectId, buffId: BuffId, ownerId: nil | ObjectId, name: WString, description: ValuedText | nil, debugName: string | nil, sysName: string, durationMs: integer, remainingMs: integer, isStackable: boolean, stackCount: integer, stackLimit: integer, isPositive: boolean, isGradual: boolean, canDetach: boolean, isNeedVisualize: boolean, isNeedBisualizeDuration: boolean, interfaceHighPriority: boolean, gainSpell: nil | table<integer, SpellId>, groups: table<number, string>, producer: { casterId: ObjectId | nil, spellId: SpellId | nil, abilityId: AbilityId | nil, buffId: BuffId | nil }, texture?: TextureId, debugGroups?: table<integer, string> }

---@param objectId ObjectId # идентификатор объекта
---@param buffId ObjectId # идентификатор бафа
---@return table<integer, ObjectId> # индексированный с 0 список идентификаторов бафов с таким ресурсом на объекте
function object.GetBuffInstances ( objectId, buffId ) end

---@param objectId ObjectId
---@return table<integer, ObjectId> # индексированный с 1 список идентификаторов бафов на объекте
function object.GetBuffs( objectId ) end

---@param table table<integer, ObjectId>
---@return table<integer, BuffInfo>
function object.GetBuffsInfo( table ) end

---@param objectId ObjectId # идентификатор юнита
---@param isPositive boolean # true если баф положительный, false если отрицательный(дебаф)
---@param isNeedVisualize boolean # true если баф отображаемый, false если скрытый
---@return table<integer, ObjectId> # индексированный с 1 список идентификаторов бафов на объекте
function object.GetBuffsWithProperties( objectId, isPositive, isNeedVisualize ) end

---@param Id ObjectId | BuffInfo # идентификатор или объекта или ресурса баффа
---@return string | nil # внутреннее имя баффа (может быть использовано для специальной обработки), соответствующее поле в базе для баффа - "sysUIScriptName"
function object.GetBuffSysName( Id ) end

---@param objectId ObjectId # идентификатор интерактивного объекта
---@return number # корпуленс юнита
function object.GetCorpulence( objectId )end

---@param objectId ObjectId # идентификатор интерактивного объекта
---@return table<integer, string> # список уникальных строковых имен детекторов. Строка прописана в данных детектора
function object.GetDetectors( objectId ) end

---@param objectId ObjectId # идентификатор объекта
---@return table<ENUM_DiminishingGroup, number> # таблица в которой ключом является группа ENUM_DiminishingGroup, а значением уровень диминишинга(от 0 до 3)
function object.GetDiminishingState( objectId ) end

---@param objectId ObjectId # идентификатор объекта
---@return nil | { value: nil | integer, limit: nil | integer, valuePercents: nil | integer, additionalValue: integer | nil, additionalPercents: integer | nil, isInvulnerable: boolean }
function object.GetHealthInfo( objectId ) end

---@param objectId ObjectId # идентификатор объекта
---@param heightOffset ATTACHED_OBJECT_POS # место дополнительно смещения проецируемой точки около объекта
---@return nil | ProjectedInfo
function object.GetInstantProjectedInfo( objectId, heightOffset ) end

---@param objectId ObjectId
---@return nil | { redyToGive: table<integer, QuestId>, readyToAccept: table<integer, QuestId>, soonToGive: table<integer, QuestId>, soonToAccept: table<integer, QuestId> }
function object.GetInteractorQuests( objectId ) end

---@param objectId ObjectId
---@return nil | { value: integer | nil, limit: integer | nil, valuePercent: integer | nil }
function object.GetManaInfo( objectId ) end

---@param objectId ObjectId # идентификатор интерактивного объекта
---@return WString # имя юнита ( пустая строка, если имя не определено )
function object.GetName( objectId ) end

---@param objectId ObjectId
---@return GamePosition | nil # позиция объекта, если он найден и можно получать его позицию
function object.GetPos( objectId ) end

---@param objectId ObjectId
---@return nil | ProjectedInfo
function object.GetProjectedInfo( objectId ) end
---@alias ProjectedInfo { posX: number, posY: number, playerDistance: number, cameraDistance: number, isLos: boolean, canProject: boolean }

---@param unitId ObjectId
---@return { hasPremiumBubble: boolean, isOnTransportParking: boolean }
function object.GetUIInfo( unitId ) end

---@param objectId ObjectId
---@return table<integer, ObjectId> # индексированный с 0 список идентификаторов тайн мира
function object.GetWorldSecrets( objectId ) end

---@param id ObjectId
---@return boolean # true, если объект выглядит как моб
function object.HasMobVisual( id ) end

---@param id ObjectId # Id объекта. Если передан Id игрока, вернёт false
---@return boolean # true, если объект имеет квэсты
function object.HasQuest( id ) end

---@param id ObjectId # Id объекта. Если передан Id игрока, вернёт false
---@return boolean # true, если объект может завершить тайну мира
function object.HasWorldSecret( id ) end

---@param objectId ObjectId # идентификатор интерактивного объекта
---@param type string # тип изменяемого параметра ( "SELECTION", "AMBIENT", "OCCLUSION" )
---@param color Color | nil # начальный цвет изменяемого параметра
---@param color2 Color | nil # конечный цвет изменяемого параметра (поддерживается только для "AMBIENT")
---@param period number # полный период изменения параметра color->color2->color (поддерживается только для "AMBIENT")
function object.Highlight( objectId, type, color, color2, period ) end

---@param id ObjectId
---@return boolean # true, если объект является астральным юнитом
function object.IsAstralUnit( id ) end

---@param objectId ObjectId
---@return boolean # true, если объект мертв
function object.IsDead( objectId ) end

---@param objectId ObjectId
---@return boolean # детектируется ли объект
function object.IsDetected( objectId ) end

---@param id ObjectId
---@return boolean # true, если объект является устройством
function object.IsDevice( id ) end

---@param objectId ObjectId
---@return boolean # объект враждебен игроку
function object.IsEnemy( objectId ) end

---@param objectId ObjectId
---@return boolean # true, если объект существует
function object.IsExist( objectId ) end

---@param objectId ObjectId
---@return boolean # true, если объект далеко
function object.IsFar( objectId ) end

---@param objectId ObjectId
---@return boolean # true - объект дружественен игроку
function object.IsFriend( objectId ) end

---@param objectId ObjectId
---@return boolean # состояние бой/не бой
function object.IsInCombat( objectId ) end

---@param objectId ObjectId
---@return boolean # если находится в радиусе взаимодействия - true, иначе - false
function object.IsInUsageRange( objectId ) end

---@param id ObjectId
---@return boolean # true, если объект является транспортом
function object.IsTransport( id ) end

---@param id ObjectId
---@return boolean # true, если объект является юнитом
function object.IsUnit( id ) end

---@param objectId ObjectId
---@return boolean # можно ли в принципе использовать объект
function object.IsUsable( objectId ) end

---@param id ObjectId
---@return boolean # true, если объект является валидным бафом
function object.IsValidBuff( id ) end

---@param id ObjectId
---@return boolean # true, если интерактивный объект является торговцем
function object.IsVendor( id ) end

---@param buffId ObjectId
function object.RemoveBuff( buffId ) end

---@param buffId ObjectId
function object.RemoveBuff( buffId ) end

---@param objectId ObjectId
function object.RemoveFromProjected( objectId ) end

---@param wtControl3D Control3DSafe # контрол-3D, который отвечает за показ сцены
function object.SetControl3DForProjected( wtControl3D ) end

---@param objectId ObjectId # идентификатор объекта, вокруг которого отключать траву и т.п., либо nil, если такая область не нужна
---@param scale number # коэффициент, на который умножается размер объекта
---@param extraRadius number # дополнительное увеличение области
--- TODO: check objectId type and description
function object.SetCutTerrainArea( objectId, scale, extraRadius ) end

---@param objectId ObjectId # идентификатор объекта
---@param channelIndex VIS_ACTION # индекс канала визуального скрипта
---@param visActionId VisObjectId # идентификатор визуального объекта (эффекта)
function object.StartVisualAction( objectId, channelIndex, visActionId ) end

---@param objectId ObjectId # идентификатор объекта
---@param channelIndex VIS_ACTION # индекс канала визуального скрипта
function object.StopVisualAction( objectId, channelIndex ) end