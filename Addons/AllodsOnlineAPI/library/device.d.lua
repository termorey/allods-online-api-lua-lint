---@meta

---@class device
device = {}

--[[ ENUMS --]]

---@alias ENUM_TurnReason
---| "ENUM_TR_Broken"
---| "ENUM_TR_Abordage"
---| "ENUM_TR_Silence"
---| "ENUM_TR_InterHubAcceleration"
---| "ENUM_TR_Construction"
---| "ENUM_TR_InHangar"
---| "ENUM_TR_TeleportToIsland"
---| "ENUM_TR_Teleport"
---| "ENUM_TR_Malfunction"
---| "ENUM_TR_ReactorsShutdown"
---| "ENUM_TR_ShipDestroyed"
---| "ENUM_TR_Init"

---@alias USDEV_NOT_USABLE_DEVICE integer # это не используемое устройство
---@alias USDEV_USABLE_DEVICE integer # просто используемое устройство
---@alias USDEV_BEAM_CANNON integer
---@alias USDEV_CANNON integer
---@alias USDEV_ENGINE_HORIZONTAL integer
---@alias USDEV_ENGINE_VERTICAL integer
---@alias USDEV_NAVIGATOR integer
---@alias USDEV_REACTOR integer
---@alias USDEV_REMOTE_RUDDER integer
---@alias USDEV_REMOTE_ENGINE_VERTICAL integer
---@alias USDEV_REPAIR integer
---@alias USDEV_RUDDER integer
---@alias USDEV_SCANER integer
---@alias USDEV_VISUAL integer
---@alias USDEV_SHIELD integer
---@alias USDEV USDEV_NOT_USABLE_DEVICE | USDEV_USABLE_DEVICE | USDEV_BEAM_CANNON | USDEV_CANNON | USDEV_ENGINE_HORIZONTAL | USDEV_ENGINE_VERTICAL | USDEV_NAVIGATOR | USDEV_REACTOR | USDEV_REMOTE_RUDDER | USDEV_REMOTE_ENGINE_VERTICAL | USDEV_REPAIR | USDEV_RUDDER | USDEV_SCANER | USDEV_VISUAL | USDEV_SHIELD

--[[ EVENTS --]]

---@alias EVENT_CANNON_SHOT_FINISHED "EVENT_CANNON_SHOT_FINISHED"
---@alias EVENT_CANNON_SHOT_PREPARATION_STARTED "EVENT_CANNON_SHOT_PREPARATION_STARTED"
---@alias EVENT_CANNON_SHOT_STARTED "EVENT_CANNON_SHOT_STARTED"
---@alias EVENT_CHEST_LOOTER_CHANGED "EVENT_CHEST_LOOTER_CHANGED"
---@alias EVENT_DEVICE_ACTION_EFFECTIVENESS_CHANGED "EVENT_DEVICE_ACTION_EFFECTIVENESS_CHANGED"
---@alias EVENT_DEVICE_ACTIVE_ACTION_CHANGED "EVENT_DEVICE_ACTIVE_ACTION_CHANGED"
---@alias EVENT_DEVICE_COOLDOWN_FINISHED "EVENT_DEVICE_COOLDOWN_FINISHED"
---@alias EVENT_DEVICE_COOLDOWNS_ENABLE_CHANGED "EVENT_DEVICE_COOLDOWNS_ENABLE_CHANGED"
---@alias EVENT_DEVICE_COOLDOWN_STARTED "EVENT_DEVICE_COOLDOWN_STARTED"
---@alias EVENT_DEVICE_DAMAGE_RECEIVED "EVENT_DEVICE_DAMAGE_RECEIVED"
---@alias EVENT_DEVICE_DEAD_CHANGED "EVENT_DEVICE_DEAD_CHANGED"
---@alias EVENT_DEVICE_OFFLINE_CHANGED "EVENT_DEVICE_OFFLINE_CHANGED"
---@alias EVENT_DEVICE_OFFLINE_REASON "EVENT_DEVICE_OFFLINE_REASON"
---@alias EVENT_DEVICE_RELATED_QUESTS_CHANGED "EVENT_DEVICE_RELATED_QUESTS_CHANGED"
---@alias EVENT_DEVICES_CHANGED "EVENT_DEVICES_CHANGED"
---@alias EVENT_DEVICE_ZERO_SPEED "EVENT_DEVICE_ZERO_SPEED"
---@alias EVENT_NAVIGATION_SCANER_HUB_PVE_INFO "EVENT_NAVIGATION_SCANER_HUB_PVE_INFO"
---@alias EVENT_NAVIGATION_SCANER_HUB_PVP_INFO "EVENT_NAVIGATION_SCANER_HUB_PVP_INFO"
---@alias EVENT_NAVIGATION_SCANER_HUB_STARTED "EVENT_NAVIGATION_SCANER_HUB_STARTED"
---@alias EVENT_NAVIGATION_SCANER_HUB_TRAILS_INFO "EVENT_NAVIGATION_SCANER_HUB_TRAILS_INFO"
---@alias EVENT_NAVIGATOR_FOLLOWED_CHANGED "EVENT_NAVIGATOR_FOLLOWED_CHANGED"
---@alias EVENT_NAVIGATOR_TARGET_CHESTS_CHANGED "EVENT_NAVIGATOR_TARGET_CHESTS_CHANGED"
---@alias EVENT_SHIELD_REGEN_IN_PROGRESS_CHANGED "EVENT_SHIELD_REGEN_IN_PROGRESS_CHANGED"
---@alias EVENT_SHIELD_STRENGTH_CHANGED "EVENT_SHIELD_STRENGTH_CHANGED"
---@alias EVENT_USABLE_DEVICES_CHANGED "EVENT_USABLE_DEVICES_CHANGED"

---@overload fun(eventFunction: fun(data: { id: ObjectId, target: ObjectId | nil }), sysEventName: EVENT_CANNON_SHOT_FINISHED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, preparationTimeMs: integer }), sysEventName: EVENT_CANNON_SHOT_PREPARATION_STARTED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, target: ObjectId | nil }), sysEventName: EVENT_CANNON_SHOT_STARTED)
---@overload fun(eventFunction: fun(data: { deviceId: number }), sysEventName: EVENT_CHEST_LOOTER_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, action: integer, isEffective: boolean }), sysEventName: EVENT_DEVICE_ACTION_EFFECTIVENESS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_DEVICE_ACTIVE_ACTION_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, action: integer }), sysEventName: EVENT_DEVICE_COOLDOWN_FINISHED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_DEVICE_COOLDOWNS_ENABLE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, action: integer }), sysEventName: EVENT_DEVICE_COOLDOWN_STARTED)
---@overload fun(eventFunction: fun(data: table), sysEventName: EVENT_DEVICE_DAMAGE_RECEIVED)
---@overload fun(eventFunction: fun(data: { deviceId: ObjectId }), sysEventName: EVENT_DEVICE_DEAD_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_DEVICE_OFFLINE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, sysReason: ENUM_TurnReason }), sysEventName: EVENT_DEVICE_OFFLINE_REASON)
---@overload fun(eventFunction: fun(data: { deviceId: ObjectId }), sysEventName: EVENT_DEVICE_RELATED_QUESTS_CHANGED)
---@overload fun(eventFunction: fun(data: { spawned: table<integer, ObjectId>, despawned: table<integer, ObjectId> }), sysEventName: EVENT_DEVICES_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_DEVICE_ZERO_SPEED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_NAVIGATION_SCANER_HUB_PVE_INFO)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_NAVIGATION_SCANER_HUB_PVP_INFO)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_NAVIGATION_SCANER_HUB_STARTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_NAVIGATION_SCANER_HUB_TRAILS_INFO)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_NAVIGATOR_FOLLOWED_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_NAVIGATOR_TARGET_CHESTS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SHIELD_REGEN_IN_PROGRESS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, strengthDelta: integer }), sysEventName: EVENT_SHIELD_STRENGTH_CHANGED)
---@overload fun(eventFunction: fun(data: { spawned: table<integer, ObjectId>, despawned: table<integer, ObjectId> }), sysEventName: EVENT_USABLE_DEVICES_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param deviceId ObjectId
---@return boolean
function device.CanUse( deviceId ) end

---@param deviceId ObjectId
---@return ObjectId | nil
function device.GetCannonTarget( deviceId ) end

---@param deviceId ObjectId
---@param actionIndex integer
---@return nil | { remainingMs: integer, durationMs: integer }
function device.GetCooldown( deviceId, actionIndex ) end

---@param deviceId ObjectId
---@return ObjectId | nil
function device.GetItemInstalled( deviceId ) end

---@param deviceId ObjectId
---@return number
function device.GetMass( deviceId ) end

---@return table<integer, WString>
function device.GetNavigatorTargetChests() end

---@param deviceId ObjectId
---@return nil | table<integer, ObjectId>
function device.GetRelatedQuestObjectives( deviceId ) end

---@return nil | { hasMajorAllods: boolean, mobDensity: number, mobDifficulty: number }
function device.GetScanerHubInfo() end

---@return nil | { islandCount: integer, wreckCount: integer }
function device.GetScanerPvEInfo() end

---@return nil | { shipCount: integer }
function device.GetScanerPvPInfo() end

---@param trailId ObjectId
---@return nil | { strength: number }
function device.GetScanerTrailInfo( trailId ) end

---@return table<integer, unknown>
--- TODO: check return type
function device.GetScanerTrails() end

---@param deviceId ObjectId
---@return nil | { value: integer, maxValue: integer }
function device.GetShieldStrength( deviceId ) end

---@param deviceId ObjectId
---@return nil | { interfaceSlot: integer, side: SHIP_SIDE }
function device.GetShipSlotInfo( deviceId ) end

---@param deviceId ObjectId
---@return WString
function device.GetTitle( deviceId ) end

---@param deviceId ObjectId
---@return ObjectId | nil
function device.GetTransport( deviceId ) end

---@param deviceId ObjectId
---@return USDEV
function device.GetUsableDeviceType( deviceId ) end

---@return boolean | nil
function device.HasNavigatorFollowedMarker() end

---@param deviceId ObjectId
---@return boolean
function device.IsInUse( deviceId ) end

---@param deviceId ObjectId
---@return boolean
function device.IsOffline( deviceId ) end

---@return boolean
function device.IsScanerScanning() end

---@param deviceId ObjectId
---@return boolean
function device.IsShieldRegenInProgress( deviceId ) end

---@param deviceId ObjectId
---@return boolean
function device.IsUsable( deviceId ) end

---@return ObjectId | nil
function device.NavigatorGetTarget() end

---@return ObjectId | nil
function device.NavigatorGetZoomedObject() end

---@param objectId ObjectId | nil
function device.NavigatorSetTarget( objectId ) end

---@param objectId ObjectId | nil
function device.NavigatorZoom( objectId ) end

function device.SetScanerDestinationDevice() end

---@param trailId ObjectId
function device.SetScanerDestinationTrail( trailId ) end