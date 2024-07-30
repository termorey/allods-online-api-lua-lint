---@meta

---@class family
family = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_FAMILY_CREATED "EVENT_FAMILY_CREATED"
---@alias EVENT_FAMILY_DESTROYED "EVENT_FAMILY_DESTROYED"
---@alias EVENT_FAMILY_SPELL_EXPERIENCE_CHANGED "EVENT_FAMILY_SPELL_EXPERIENCE_CHANGED"
---@alias EVENT_FAMILY_SPELLS_CHANGED "EVENT_FAMILY_SPELLS_CHANGED"
---@alias EVENT_SPOUSE_POSITION_UPDATED "EVENT_SPOUSE_POSITION_UPDATED"
---@alias EVENT_TAKE_ON_HANDS_REQUEST "EVENT_TAKE_ON_HANDS_REQUEST"

---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_FAMILY_CREATED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId }), sysEventName: EVENT_FAMILY_DESTROYED)
---@overload fun(eventFunction: fun(data: { spellid: SpellId }), sysEventName: EVENT_FAMILY_SPELL_EXPERIENCE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_FAMILY_SPELLS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SPOUSE_POSITION_UPDATED)
---@overload fun(eventFunction: fun(data: { timeoutMs: integer, name: WString }), sysEventName: EVENT_TAKE_ON_HANDS_REQUEST)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param spellId SpellId
---@return nil | { experience: integer, level: integer, levelExperience: integer, nextLevelExperience: integer }
--- TODO: incorrect doc title/description
function family.GetSpellInfo( spellId ) end

---@param unitId ObjectId
---@return ObjectId | nil
function family.GetSpouseId( unitId ) end

---@param unitId ObjectId
---@return WString | nil
function family.GetSpouseName( unitId ) end

---@param unitId ObjectId
---@return boolean
function family.IsExist( unitId ) end

---@param unitId ObjectId
---@return boolean
function family.IsSpouse( unitId ) end

---@param takeOnHands boolean
---@return WString | nil
function family.TakeOnHandsResponse( takeOnHands ) end