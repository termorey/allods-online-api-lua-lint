---@meta

--[[ ENUMS --]]

-- REPUTATION_LEVEL
---@alias REPUTATION_LEVEL_HOSTILITY integer
---@alias REPUTATION_LEVEL_ENEMY integer
---@alias REPUTATION_LEVEL_UNFRIENDLY integer
---@alias REPUTATION_LEVEL_NEUTRAL integer
---@alias REPUTATION_LEVEL_KINDLY integer
---@alias REPUTATION_LEVEL_FRIENDLY integer
---@alias REPUTATION_LEVEL_CONFIDENTIAL integer
---@alias REPUTATION_LEVEL REPUTATION_LEVEL_HOSTILITY | REPUTATION_LEVEL_ENEMY | REPUTATION_LEVEL_UNFRIENDLY | REPUTATION_LEVEL_NEUTRAL | REPUTATION_LEVEL_KINDLY | REPUTATION_LEVEL_FRIENDLY | REPUTATION_LEVEL_CONFIDENTIAL # уровень репутации

--[[ EVENTS --]]

---@alias EVENT_NEW_REPUTATION_APPEARED "EVENT_NEW_REPUTATION_APPEARED"
---@alias EVENT_REPUTATION_DISAPPEARED "EVENT_REPUTATION_DISAPPEARED"
---@alias EVENT_REPUTATION_LEVEL_CHANGED "EVENT_REPUTATION_LEVEL_CHANGED"
---@alias EVENT_REPUTATION_VALUE_CHANGED "EVENT_REPUTATION_VALUE_CHANGED"

---@overload fun(eventFunction: fun(data: { factionId: FactionId }), sysEventName: EVENT_NEW_REPUTATION_APPEARED)
---@overload fun(eventFunction: fun(data: { factionId: FactionId }), sysEventName: EVENT_REPUTATION_DISAPPEARED)
---@overload fun(eventFunction: fun(data: { factionId: FactionId }), sysEventName: EVENT_REPUTATION_LEVEL_CHANGED)
---@overload fun(eventFunction: fun(data: { factionId: FactionId, delta: integer }), sysEventName: EVENT_REPUTATION_VALUE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

