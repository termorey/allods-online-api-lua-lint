---@meta

---@class astralUnit
astralUnit = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_ASTRAL_OBJECTS_CHANGED "EVENT_ASTRAL_OBJECTS_CHANGED"
---@alias EVENT_ASTRAL_UNIT_AGGRO_CHANGED "EVENT_ASTRAL_UNIT_AGGRO_CHANGED"
---@alias EVENT_ASTRAL_UNIT_POS_CHANGED "EVENT_ASTRAL_UNIT_POS_CHANGED"
---@alias EVENT_ASTRAL_UNITS_CHANGED "EVENT_ASTRAL_UNITS_CHANGED"

---@overload fun(eventFunction: fun(data: { spawned: table<integer, ObjectId>, despawned: table<integer, ObjectId> }), sysEventName: EVENT_ASTRAL_OBJECTS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_ASTRAL_UNIT_AGGRO_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_ASTRAL_UNIT_POS_CHANGED)
---@overload fun(eventFunction: fun(data: { spawned: table<integer, ObjectId>, despawned: table<integer, ObjectId> }), sysEventName: EVENT_ASTRAL_UNITS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param unitId ObjectId # идентификатор юнита
---@return TextureId # идентификатор ресурса иконки, обозначающей моба
function astralUnit.GetImage( unitId ) end

---@param unitId ObjectId # идентификатор юнита
---@return integer # уровень астрального моба
function astralUnit.GetLevel( unitId ) end

---@param unitId ObjectId # идентификатор юнита
---@return boolean # true, если агрессивен
function astralUnit.HasAggro( unitId ) end