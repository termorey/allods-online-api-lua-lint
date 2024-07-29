---@meta

---@class astral
astral = {}

--[[ ENUMS --]]

---@alias ENUM_FailType_Offline "ENUM_FailType_Offline"
---@alias ENUM_FailType_NotOnShip "ENUM_FailType_NotOnShip"
---@alias ENUM_FailType_NoHalo "ENUM_FailType_NoHalo"
---@alias ENUM_FailType_LowTierLevel "ENUM_FailType_LowTierLevel"
---@alias ENUM_FailType_NoTicket "ENUM_FailType_NoTicket"
---@alias ENUM_FailType_NoAstralMap "ENUM_FailType_NoAstralMap"
---@alias ENUM_FailType_NoJumpCurrency "ENUM_FailType_NoJumpCurrency"
---@alias ENUM_FailType ENUM_FailType_Offline | ENUM_FailType_NotOnShip | ENUM_FailType_NoHalo | ENUM_FailType_LowTierLevel | ENUM_FailType_NoTicket | ENUM_FailType_NoAstralMap | ENUM_FailType_NoJumpCurrency

---@alias ENUM_HubScanInfoObjectType_Mob "ENUM_HubScanInfoObjectType_Mob"
---@alias ENUM_HubScanInfoObjectType_Ship "ENUM_HubScanInfoObjectType_Ship"
---@alias ENUM_HubScanInfoObjectType ENUM_HubScanInfoObjectType_Mob | ENUM_HubScanInfoObjectType_Ship

--[[ EVENTS --]]

---@alias EVENT_ASTRAL_HUB_CHANGED "EVENT_ASTRAL_HUB_CHANGED"
---@alias EVENT_ASTRAL_ISLAND_CHANGED "EVENT_ASTRAL_ISLAND_CHANGED"
---@alias EVENT_ASTRAL_ISLAND_TIME_CHANGED "EVENT_ASTRAL_ISLAND_TIME_CHANGED"
---@alias EVENT_ASTRAL_OBJECT_ENABLED_CHANGED "EVENT_ASTRAL_OBJECT_ENABLED_CHANGED"
---@alias EVENT_ASTRAL_POIS_CHANGED "EVENT_ASTRAL_POIS_CHANGED"
---@alias EVENT_ASTRAL_SECTOR_CHANGED "EVENT_ASTRAL_SECTOR_CHANGED"
---@alias EVENT_ASTRAL_SECTOR_CHECK_JUMP_RESULT "EVENT_ASTRAL_SECTOR_CHECK_JUMP_RESULT"
---@alias EVENT_ASTRAL_WRECK_LOOT_TAKEN "EVENT_ASTRAL_WRECK_LOOT_TAKEN"
---@alias EVENT_ASTROLABE_INFO_CHANGED "EVENT_ASTROLABE_INFO_CHANGED"
---@alias EVENT_ASTROLABE_SPELL_CHANGED "EVENT_ASTROLABE_SPELL_CHANGED"
---@alias EVENT_ASTROLABE_SPELL_EFFECT "EVENT_ASTROLABE_SPELL_EFFECT"
---@alias EVENT_ISLAND_DEATH_LIMIT_CHANGED "EVENT_ISLAND_DEATH_LIMIT_CHANGED"
---@alias EVENT_PLAYER_ASTRAL_UNLOCK_CHANGED "EVENT_PLAYER_ASTRAL_UNLOCK_CHANGED"
---@alias EVENT_SCANNED_HUB_OBJECTS_CHANGED "EVENT_SCANNED_HUB_OBJECTS_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_ASTRAL_HUB_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ASTRAL_ISLAND_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ASTRAL_ISLAND_TIME_CHANGED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId }), sysEventName: EVENT_ASTRAL_OBJECT_ENABLED_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ASTRAL_POIS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ASTRAL_SECTOR_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, sectorId: AstralSectorId, isSuccess: boolean, failEntries: nil | table<integer, { failType: ENUM_FailType, names: table<integer, unknown> }> }), sysEventName: EVENT_ASTRAL_SECTOR_CHECK_JUMP_RESULT)
---@overload fun(eventFunction: fun(data: { count: integer }), sysEventName: EVENT_ASTRAL_WRECK_LOOT_TAKEN)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_ASTROLABE_INFO_CHANGED)
---@overload fun(eventFunction: fun(data: { id: SpellId }), sysEventName: EVENT_ASTROLABE_SPELL_CHANGED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, is: SpellId } | { effect: EFFECT_TYPE_COOLDOWN_STARTED, id: SpellId, duration: integer, remaining: integer } | { effect: EFFECT_TYPE_SPELL_PREPARED, id: SpellId, prepared: boolean } | { effect: EFFECT_TYPE_SPELL_ACTIVE_STATE_CHANGED, id: SpellId, isActive: boolean, objectId: ObjectId | nil }), sysEventName: EVENT_ASTROLABE_SPELL_EFFECT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ISLAND_DEATH_LIMIT_CHANGED)
---@overload fun(eventFunction: fun(data: { playerId: ObjectId }), sysEventName: EVENT_PLAYER_ASTRAL_UNLOCK_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_SCANNED_HUB_OBJECTS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param poiId ObjectId # идентификатор астральной POI
---@param spellId ObjectId # идентификатор заклинания, при помощи которого будет происходить перемещение
function astral.AstrolabeJump( poiId, spellId ) end

---@param poiId ObjectId # идентификатор астральной POI
---@param direct boolean # если true, проверяется возможность совершить прыжок с использованием ускорителей(прыжок из ангара на остров), если false, проверяется возможность совершить обычный прыжок на остров из страла
function astral.CheckJump( poiId, direct ) end

---@param addonId ObjectId # идентификатор аддона
---@return nil | { id: ObjectId, name: WString, description: WString, rect: { x1: number, x2: number, y1: number, y2: number }, levelOffset: number, isSphere: boolean }
function astral.GetAddonInfo( addonId ) end

---@return table<integer, ObjectId> # список идентификаторов аддонов
function astral.GetAddons() end

---@param addonId ObjectId # идентификатор аддона
---@return table<integer, ObjectId> # список идентификаторов секторов, находящихся в аддоне
function astral.GetAddonSectors( addonId ) end

---@return table<integer, ObjectId> # индексированный с 0 список идентификаторов точек астральных эвентов в этом секторе
function astral.GetAllPOIs() end

---@return table<integer, ObjectId> # список идентификаторов секторов
function astral.GetAllSectorsObsolete() end

---@return table<integer, integer> # индексированный с 0 список возможных технических уровней слоёв астрала
function astral.GetAllTLsObsolete() end

---@return { withoutCoins: table<integer, WString>, withoutFairies: table<integer, WString> }
function astral.GetAstrolabeDeniedPlayers() end

---@return nil | { jumpSpellId: SpellId, chargedJumpSpellId: SpellId }
function astral.GetAstrolabeInfo() end

---@return table<integer, { techLevel: integer, sectors: table<integer, ObjectId> }>
function astral.GetAstrolabeInfoEx() end

---@return nil | ObjectId # идентификатор сектора, если идет прыжок и информация о секторе доступна
function astral.GetAstrolabeTarget() end

---@return ObjectId | nil # идентификатор сектора, если мы в астральном секторе
function astral.GetCurrentSector() end

---@return GamePosition | nil # центр хаба (координаты в хабе), если игрок в астральном хабе
function astral.GetHubCenter() end

---@return number
function astral.GetHubRadius() end

---@return nil | { durationMs: integer, remainingMs: integer }
function astral.GetIslandCollapseTime() end

---@return { limit: integer, deathCount: integer }
function astral.GetIslandDeathLimit() end

---@param objectId ObjectId # идентификатор юнита
---@return nil | { name: WString, description: WString, position: GamePosition, isEnabled: boolean, sectorId: ObjectId | nil, collisionRadius: integer | nil, image?: TextureId, collisionIcon?: TextureId }
function astral.GetObjectInfo( objectId ) end

---@return table<integer, ObjectId> # список идентификаторов объектов (индексирован с 1)
function astral.GetObjects() end

---@param playerId ObjectId # идентификатор игрока
---@return number # уровень астрального анлока данного игрока
function astral.GetPlayerUnlockLevel( playerId ) end

---@param poiId ObjectId # идентификатор точки
---@return nil | { id: ObjectId, sectorId: ObjectId, name: WString | nil, description: WString | nil, visibleOnMap: boolean, canJump: boolean, texture?: TextureId }
function astral.GetPOIInfo( poiId ) end

---@param poiId ObjectId # идентификатор точки
---@return nil | { prodPrice: integer, rawPrice: integer, prodStockpile: integer, rawStockpile: integer, maxProdStockpile: integer, maxRawStockPile: integer }
function astral.GetPOITradeInfo( poiId ) end

---@return table<integer, { type: ENUM_HubScanInfoObjectType, position: GamePosition, durationMs: integer, elapsedMs: integer }>
function astral.GetScannedObjects() end

---@param sectorId ObjectId # идентификатор сектора
---@return table<integer, { unlockLevel: number, isAvailable: boolean }>
function astral.GetSectorAstrolabeInfo( sectorId ) end

---@param sectorId ObjectId # идентификатор сектора
---@return ObjectId | nil # идентификатор точки астрального эвента в этом секторе, к которому мы хотим выполнить прыжок
function astral.GetSectorDirectPOI( sectorId ) end

---@param sectorId ObjectId # идентификатор сектора
---@return table<integer, ObjectId> # список идентификаторов секторов, связанных с данным
function astral.GetSectorEdges( sectorId )end

---@param astralSectorId AstralSectorId
---@return nil | table<integer, AstralSectorId> # nil если нет информации; иначе список идентификаторов секторов (индексация начинается с 0), связанных с данным
function astral.GetSectorEdgesById( astralSectorId ) end

---@param sectorId ObjectId # идентификатор сектора
---@return table<integer, ObjectId> # список идентификаторов секторов, связанных с данным
function astral.GetSectorEdgesObsolete( sectorId ) end

---@param sectorId ObjectId # идентификатор сектора
---@return nil | SectorInfo
function astral.GetSectorInfo( sectorId ) end
---@alias SectorInfo { id: ObjectId, addonId: ObjectId | nil, name: WString | nil, description: ValuedText | nil, techLevel: integer, quality: ITEM_QUALITY, requiredUnlock: number, ticketsCount: number, maxServerProgress: number, number: integer, x: number, y: number, astrolabeVisible: boolean, mapVisible: boolean, allowChoiceLoot: boolean }

---@param astralSectorId AstralSectorId
---@return nil | SectorInfo
function astral.GetSectorInfoById( astralSectorId ) end

---@param sectorId ObjectId # идентификатор сектора
---@return table<integer, ObjectId> # индексированный с 0 список идентификаторов точек астральных эвентов в этом секторе
function astral.GetSectorPOIs( sectorId ) end

---@param sectorId ObjectId # идентификатор сектора
---@return table<integer, QuestId> # список идентификаторов заданий, связанных с данным сектором
function astral.GetSectorRelatedQuests( sectorId ) end

---@return table<integer, ObjectId> # список идентификаторов астральных юнитов (индексирован с 1)
function astral.GetUnits() end

---@param playerId ObjectId # идентификатор игрока
---@param sectorId ObjectId # идентификатор астрального сектора
---@return boolean # исследован ли сектор
function astral.IsSectorKnownForGroup( playerId, sectorId ) end

---@param playerId ObjectId # идентификатор игрока
---@param sectorId ObjectId # идентификатор астрального сектора
---@return boolean # исследован ли сектор
function astral.IsSectorKnownForPlayer( playerId, sectorId ) end