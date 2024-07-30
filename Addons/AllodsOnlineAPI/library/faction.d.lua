---@meta

--[[ ENUMS --]]

---@alias ENUM_PridenFactionChoice_League unknown # Лига
---@alias ENUM_PridenFactionChoice_Empire unknown # Империя
---@alias ENUM_PridenFactionChoice ENUM_PridenFactionChoice_League | ENUM_PridenFactionChoice_Empire

--[[ EVENTS --]]

---@alias EVENT_PRIDEN_FACTION_CHOICE "EVENT_PRIDEN_FACTION_CHOICE"
---@alias EVENT_UNIT_FACTION_CHANGED "EVENT_UNIT_FACTION_CHANGED"

---@overload fun(eventFunction: fun(data: { isLevelUp: boolean }), sysEventName: EVENT_PRIDEN_FACTION_CHOICE)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_FACTION_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

