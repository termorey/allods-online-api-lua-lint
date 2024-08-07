---@meta

---@class transport
transport = {}

--[[ ENUMS --]]

---@alias ENUM_CriticalMalfunctionType_CMT
---| "ENUM_CriticalMalfunctionType_CMT_ReactorShutdown" - реактор выключился от перегрева
---| "ENUM_CriticalMalfunctionType_CMT_ManaBurst" - случился Mana Burst
---| "ENUM_CriticalMalfunctionType_CMT_EngineShutdown" - движок выключился
---| "ENUM_CriticalMalfunctionType_CMT_RudderStuck" - руль заклинило
---| "ENUM_CriticalMalfunctionType_CMT_RudderBrokenLeft" - руль не поворачивается влево
---| "ENUM_CriticalMalfunctionType_CMT_RudderBrokenRight" - руль не поворачивается вправо
---| "ENUM_CriticalMalfunctionType_CMT_DoubleDeath" - чувак в лазарете оставлен на второй срок
---| "ENUM_CriticalMalfunctionType_CMT_CriticalMiss" - пушка критически промахнулась

---@alias SHIP_SIDE_NONE number
---@alias SHIP_SIDE_GENERAL number
---@alias SHIP_SIDE_FRONT number
---@alias SHIP_SIDE_REAR number
---@alias SHIP_SIDE_LEFT number
---@alias SHIP_SIDE_RIGHT number
---@alias SHIP_SIDE SHIP_SIDE_NONE | SHIP_SIDE_GENERAL | SHIP_SIDE_FRONT | SHIP_SIDE_REAR | SHIP_SIDE_LEFT | SHIP_SIDE_RIGHT # сторона корабля

--[[ EVENTS --]]

---@alias EVENT_REACTOR_COUNTDOWN "EVENT_REACTOR_COUNTDOWN"
---@alias EVENT_REACTOR_COUNTDOWN_CANCELLED "EVENT_REACTOR_COUNTDOWN_CANCELLED"
---@alias EVENT_SHIP_DAMAGE_RECEIVED "EVENT_SHIP_DAMAGE_RECEIVED"
---@alias EVENT_TRANSPORT_ACCELERATION_TARGET_CHANGED "EVENT_TRANSPORT_ACCELERATION_TARGET_CHANGED"
---@alias EVENT_TRANSPORT_ANGULAR_VELOCITY_CHANGED "EVENT_TRANSPORT_ANGULAR_VELOCITY_CHANGED"
---@alias EVENT_TRANSPORT_CRITICAL_MALFUNCTION "EVENT_TRANSPORT_CRITICAL_MALFUNCTION"
---@alias EVENT_TRANSPORT_DEVICES_CHANGED "EVENT_TRANSPORT_DEVICES_CHANGED"
---@alias EVENT_TRANSPORT_DIRECTION_CHANGED "EVENT_TRANSPORT_DIRECTION_CHANGED"
---@alias EVENT_TRANSPORT_ENERGY_CHANGED "EVENT_TRANSPORT_ENERGY_CHANGED"
---@alias EVENT_TRANSPORT_HORIZONTAL_VELOCITY_CHANGED "EVENT_TRANSPORT_HORIZONTAL_VELOCITY_CHANGED"
---@alias EVENT_TRANSPORT_INSIGHT_CHANGED "EVENT_TRANSPORT_INSIGHT_CHANGED"
---@alias EVENT_TRANSPORT_OBSERVING_FINISHED "EVENT_TRANSPORT_OBSERVING_FINISHED"
---@alias EVENT_TRANSPORT_OBSERVING_STARTED "EVENT_TRANSPORT_OBSERVING_STARTED"
---@alias EVENT_TRANSPORT_POS_CHANGED "EVENT_TRANSPORT_POS_CHANGED"
---@alias EVENT_TRANSPORTS_CHANGED "EVENT_TRANSPORTS_CHANGED"
---@alias EVENT_TRANSPORT_SHIELD_CHANGED "EVENT_TRANSPORT_SHIELD_CHANGED"
---@alias EVENT_TRANSPORT_SHIP_INFO_CHANGED "EVENT_TRANSPORT_SHIP_INFO_CHANGED"
---@alias EVENT_TRANSPORT_VERTICAL_VELOCITY_CHANGED "EVENT_TRANSPORT_VERTICAL_VELOCITY_CHANGED"

---@overload fun(eventFunction: fun(data: { timeMs: integer }), sysEventName: EVENT_REACTOR_COUNTDOWN)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_REACTOR_COUNTDOWN_CANCELLED)
---@overload fun(eventFunction: fun(data: { attacker: ObjectId | nil, defender: ObjectId | nil, damageSource: ObjectId | nil, attackerPlayer: ObjectId | nil, totalDamage: integer, hullDamage: integer, shieldDamage: integer, deviceDamage: integer, isCritical: boolean, isGlancing: boolean, isLethal: boolean, side: SHIP_SIDE | nil, angle: number | nil, cannonPenetration: number | nil, spellId: SpellId | nil, abilityId: AbilityId | nil, buffId: BuffId | nil, mapModifierId: MapModifierId | nil }), sysEventName: EVENT_SHIP_DAMAGE_RECEIVED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRANSPORT_ACCELERATION_TARGET_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRANSPORT_ANGULAR_VELOCITY_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, sysType: ENUM_CriticalMalfunctionType_CMT }), sysEventName: EVENT_TRANSPORT_CRITICAL_MALFUNCTION)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRANSPORT_DEVICES_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRANSPORT_DIRECTION_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRANSPORT_ENERGY_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRANSPORT_HORIZONTAL_VELOCITY_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, delta: integer }), sysEventName: EVENT_TRANSPORT_INSIGHT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_TRANSPORT_OBSERVING_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_TRANSPORT_OBSERVING_STARTED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRANSPORT_POS_CHANGED)
---@overload fun(eventFunction: fun(data: { spawned: table<integer, ObjectId>, despawned: table<integer, ObjectId> }), sysEventName: EVENT_TRANSPORTS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, side: SHIP_SIDE, strengthDelta: integer }), sysEventName: EVENT_TRANSPORT_SHIELD_CHANGED)
---@overload fun(eventFunction: fun(data: { objectId: ObjectId }), sysEventName: EVENT_TRANSPORT_SHIP_INFO_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRANSPORT_VERTICAL_VELOCITY_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param transportId ObjectId
---@return boolean
function transport.CanDrawInterface( transportId ) end

---@param transportId ObjectId
---@return number | nil
function transport.GetAcceleratorNominalMass( transportId ) end

---@param transportId ObjectId
---@return table<integer, ObjectId>
function transport.GetDevices( transportId ) end

---@param transportId ObjectId
---@return number
function transport.GetDirection( transportId ) end

---@param transportId ObjectId
---@return nil | { value: integer, limit: integer, changeRate: number }
function transport.GetEnergy( transportId ) end

---@param transportId ObjectId
---@return integer
function transport.GetHealthMaximum( transportId ) end

---@param transportId ObjectId
---@return integer
function transport.GetInsight( transportId ) end

---@param transportId ObjectId
---@return number
function transport.GetMass( transportId ) end

---@param id ObjectId
---@return { posX: number, posY: number, posZ: number }
function transport.GetPosition( id ) end

---@param transportId ObjectId
---@param side SHIP_SIDE
---@return { value: integer, maxValue: integer }
function transport.GetShieldStrength( transportId, side ) end

---@param id ObjectId
---@return nil | { name: WString, ownerName: WString, ownerGuildName: WString | nil, gearScore: number, techLevel: number, quality: number, isEnhanced: boolean }
function transport.GetShipInfo( id ) end

---@param transportId ObjectId
---@return nil | { horizontal: number, vertical: number, angular: number }
function transport.GetVelocities( transportId ) end