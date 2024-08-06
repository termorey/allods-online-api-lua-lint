---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_SPELLBOOK_CHANGED "EVENT_SPELLBOOK_CHANGED"
---@alias EVENT_SPELLBOOK_ELEMENT_ADDED "EVENT_SPELLBOOK_ELEMENT_ADDED"
---@alias EVENT_SPELLBOOK_ELEMENT_CHANGED "EVENT_SPELLBOOK_ELEMENT_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_SPELLBOOK_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SPELLBOOK_ELEMENT_ADDED)
---@overload fun(eventFunction: fun(data: { id: SpellId }), sysEventName: EVENT_SPELLBOOK_ELEMENT_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

