---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_HEAL_ABSORB_POOL_DISAPPEARED "EVENT_HEAL_ABSORB_POOL_DISAPPEARED"
---@alias EVENT_MANA_RECEIVED "EVENT_MANA_RECEIVED"

---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_HEAL_ABSORB_POOL_DISAPPEARED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId, casterId: ObjectId | nil, addedMana: integer, spellId?: SpellId | nil, abilityId?: AbilityId | nil, buffId?: BuffId | nil, isFall?: boolean, isExploit?: boolean }), sysEventName: EVENT_MANA_RECEIVED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_MANA_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_MANA_PERCENTAGE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, filter, registerPersonal ) end

--[[ FUNCTIONS --]]
