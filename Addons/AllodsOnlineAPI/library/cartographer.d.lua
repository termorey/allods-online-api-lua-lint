---@meta

---@class rules
rules = {}

---@class cartographer
cartographer = {}

---@alias Geodata { x: integer, y: integer, height: integer, width: integer }

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_NAVIGATE_ENABLED_CHANGED "EVENT_NAVIGATE_ENABLED_CHANGED"
---@alias EVENT_SOS_FINISHED "EVENT_SOS_FINISHED"
---@alias EVENT_SOS_STARTED "EVENT_SOS_STARTED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_NAVIGATE_ENABLED_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SOS_FINISHED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SOS_STARTED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param zonesMapId ObjectId
---@return boolean
function cartographer.CanNavigateToPoint( zonesMapId ) end

---@return nil | { name: WString, description: WString, isTerrain: boolean, isAstralIsland: boolean, size: unknown, isStartInstance: boolean }
--- TODO: unknown size type
function cartographer.GetCurrentMapInfo() end

---@return table<integer, MapModifierId>
function cartographer.GetCurrentMapModifiers() end

---@return table<string, boolean>
function cartographer.GetCurrentZoneAttributes() end

---@return { allod: WString, zoneName: WString, sysZoneName: string, subZoneName: WString, sysSubZoneName: string, zonesMapId: ObjectId | nil }
function cartographer.GetCurrentZoneInfo() end

---@param mapBlockId ObjectId
---@return nil | { id: ObjectId, name: WString, description: WString, isShowInList: boolean, zonesMaps: table<integer, ObjectId> }
function cartographer.GetMapBlockInfo( mapBlockId ) end

---@return table<integer, ObjectId>
function cartographer.GetMapBlocks() end

---@param zonesMapId ObjectId
---@param markerId InterfaceMapMarkerId
---@return table<integer, { pos: GamePosition, geodata: nil | { x: integer, y: integer, height: integer, width: integer } }>
function cartographer.GetMapMarkerObjects( zonesMapId, markerId ) end

---@param zonesMapId ObjectId
---@return table<integer, InterfaceMapMarkerId>
function cartographer.GetMapMarkers( zonesMapId ) end

---@param mapModifierId MapModifierId
---@return nil | { name: WString, description: WString, difficult: integer, finishTime: integer | nil, image?: TextureId }
function cartographer.GetMapModifierInfo( mapModifierId ) end

---@param mapModifierId MapModifierId
---@return ValuedObject
function cartographer.GetMapModifierValuedObject( mapModifierId ) end

---@param markerId InterfaceMapMarkerId
---@return nil | { name: WString, description: WString, priority: integer, image?: TextureId }
function cartographer.GetMarkerInfo( markerId ) end

---@param objectId ObjectId
---@param zonesMapId ObjectId | nil
---@return nil | Geodata
function cartographer.GetObjectGeodata( objectId, zonesMapId ) end

---@param questId QuestId
---@param zonesMapId ObjectId
---@return nil | { returnGeodata: Geodata | nil }
function cartographer.GetQuestGeodata( questId, zonesMapId ) end

---@param objectiveId QuestId
---@param zonesMapId ObjectId
---@return nil | table<integer, Geodata>
function cartographer.GetQuestObjectiveGeodata( objectiveId, zonesMapId ) end

---@param id ObjectId
---@return { id: ObjectId, durationMs: integer, remainingMs: integer, requesterName: WString, zonesMapId: ObjectId | nil, position: GamePosition, message: WString }
function cartographer.GetSosInfo( id ) end

---@return table<integer, ObjectId>
function cartographer.GetSosObjects() end

---@param sysName string
---@return ObjectId | nil
function cartographer.GetZonesMapId( sysName ) end

---@param zonesMapId ObjectId | nil
---@return nil | { id: ObjectId, sysName: string, name: WString, description: WString, mapBlockId: ObjectId | nil, isShowInList: boolean, isShowPositions: boolean, isShowQuestProgress: boolean, isUnknown: boolean, isNeedTeleportUnlock: boolean, minLevel: integer | nil, maxLevel: integer | nil, zoneCeil: integer | nil, zoneFloor: integer | nil, texture?: TextureId }
function cartographer.GetZonesMapInfo( zonesMapId ) end

---@param zonesMapId ObjectId
---@return nil | { totalCount: integer, currentCount: integer, completedCount: integer, currentQuests: table<integer, QuestId>, completedQuests: table<integer, QuestId> }
function cartographer.GetZonesMapLowQuests( zonesMapId ) end

---@param zonesMapId ObjectId
---@return nil | { totalCount: integer, currentCount: integer, completedCount: integer, currentQuests: table<integer, QuestId>, completedQuests: table<integer, QuestId> }
function cartographer.GetZonesMapQuests( zonesMapId ) end

---@return boolean
--- TODO: Ccheck returned type
function cartographer.IsCurrentZoneAnonymizedMap() end

---@return boolean
--- TODO: Ccheck returned type
function cartographer.IsCurrentZoneRiftMap() end

---@param zonesMapId ObjectId
---@return boolean
function cartographer.IsFinalQuestCompleted( zonesMapId ) end

---@return boolean
function cartographer.IsOnCommon() end

---@return table<integer, ObjectId>
function rules.GetZonesMaps() end

---@param unitId ObjectId
---@return ObjectId | nil
function unit.GetZonesMapId( unitId ) end