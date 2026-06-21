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

---@alias EVENT_BEAM_CANNON_SHOT_STARTED "EVENT_BEAM_CANNON_SHOT_STARTED"
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

---@overload fun(eventFunction: fun(data: { id: ObjectId, targets: table<integer, ObjectId> | nil }), sysEventName: EVENT_BEAM_CANNON_SHOT_STARTED)
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
function common.RegisterEventHandler( eventFunction, sysEventName, filter, registerPersonal ) end

--[[ FUNCTIONS --]]

---@param deviceId ObjectId
---@return boolean
function device.CanUse( deviceId ) end

---@param cannonDeviceId ObjectId
---@return ObjectId | nil
function device.GetCannonTarget(cannonDeviceId) end

---@param usableDeviceId ObjectId
---@param actionIndex integer
---@return nil | { remainingMs: integer, durationMs: integer }
function device.GetCooldown( usableDeviceId, actionIndex ) end

---@param usableDeviceId ObjectId
---@return ObjectId | nil
function device.GetItemInstalled( usableDeviceId ) end

---@param usableDeviceId ObjectId
---@return number
function device.GetMass( usableDeviceId ) end

---@return nil | table<integer, WString> # таблица (индексирована с 1) названий увиденных сундуков если сундуки есть, иначе - nil
function device.GetNavigatorTargetChests() end

---@param deviceId ObjectId # идентификатор устройства
---@return nil | table<integer, ObjectId> # если такие цели задании имеются у игрока, то индексированный с 1 список идентификаторов целей заданий
function device.GetRelatedQuestObjectives( deviceId ) end

---@param shieldDeviceId ObjectId
---@return nil | { value: integer, maxValue: integer }
function device.GetShieldStrength( shieldDeviceId ) end

---@param deviceId ObjectId
---@return nil | { interfaceSlot: integer, side: SHIP_SIDE, sysSlotType: ENUM_SlotName }
function device.GetShipSlotInfo( deviceId ) end

---@param deviceId ObjectId
---@return WString
function device.GetTitle( deviceId ) end

---@param usableDeviceId ObjectId
---@return ObjectId | nil
function device.GetTransport( usableDeviceId ) end

---@param usableDeviceId ObjectId # идентификатор устройства
---@param actionIndex integer # номер действия (должен попадать в диапазон [0:actionsCount-1]
---@return nil | { name: WString, description: ValuedText | nil, image: TextureId, enabled: boolean, active: boolean, cost: integer | nil, isPointed: boolean, cooldown: nil | { predictedCooldown: integer, durationMs: integer, remainingMs: integer } }
function device.GetUsableDeviceActionInfo( usableDeviceId, actionIndex ) end

---@param usableDeviceId ObjectId # идентификатор устройства
---@return nil | table<integer, any>
function device.GetUsableDeviceActionsInfo( usableDeviceId ) end

---@param usableDeviceId ObjectId # идентификатор устройства
---@return nil | { id: ObjectId, type: USDEV, name: WString, hasCrosshair: boolean, actionsCount: integer }
function device.GetUsableDeviceInfo( usableDeviceId ) end

---@param usableDeviceId ObjectId
---@return USDEV
function device.GetUsableDeviceType( usableDeviceId ) end

---@return boolean | nil
function device.HasNavigatorFollowedMarker() end

---@param deviceId ObjectId # идентификатор устройства
---@param nil | QuestId | ObjectId
---@return boolean # true, если такие цели задании имеются у игрока
function device.HasRelatedQuestObjectives( deviceId ) end

---@param deviceId ObjectId
---@return boolean
function device.IsInUse( deviceId ) end

---@param usableDeviceId ObjectId
---@return boolean
function device.IsOffline( usableDeviceId ) end

---@param shieldDeviceId ObjectId
---@return boolean
function device.IsShieldRegenInProgress( shieldDeviceId ) end

---@param deviceId ObjectId
---@return (boolean, integer)
function device.IsUsable(deviceId) end

---@return ObjectId | nil
function device.NavigatorGetTarget() end

---@return ObjectId | nil
function device.NavigatorGetZoomedObject() end

---@param objectId ObjectId | nil # идентификатор транспорта или астрального юнита, или nil, если надо сбросить цель
function device.NavigatorSetTarget( objectId ) end

---@param objectId ObjectId | nil # идентификатор корабля или астрального юнита, или nil, если надо отзумиться
function device.NavigatorZoom( objectId ) end