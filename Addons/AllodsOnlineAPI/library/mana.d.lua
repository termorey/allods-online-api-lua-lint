---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_HEAL_ABSORB_POOL_DISAPPEARED "EVENT_HEAL_ABSORB_POOL_DISAPPEARED"
---@alias EVENT_MANA_RECEIVED "EVENT_MANA_RECEIVED"
---@alias EVENT_UNIT_MANA_CHANGED "EVENT_UNIT_MANA_CHANGED"
---@alias EVENT_UNIT_MANA_PERCENTAGE_CHANGED "EVENT_UNIT_MANA_PERCENTAGE_CHANGED"

---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_HEAL_ABSORB_POOL_DISAPPEARED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId, casterId: ObjectId | nil, addedMana: integer, spellId?: SpellId | nil, abilityId?: AbilityId | nil, buffId?: BuffId | nil, isFall?: boolean, isExploit?: boolean }), sysEventName: EVENT_MANA_RECEIVED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_MANA_CHANGED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_UNIT_MANA_PERCENTAGE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param unitId ObjectId
---@return { mana: integer | nil, maxMana: integer | nil, percents: integer | nil }
function unit.GetMana( unitId ) end

---@param unitId ObjectId
---@return integer | nil
function unit.GetManaPercentage( unitId ) end