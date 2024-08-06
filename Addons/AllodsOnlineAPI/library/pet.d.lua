---@meta

--[[ ENUMS --]]

---@alias PET_TYPE_UNKNOWN number
---@alias PET_TYPE_NECROMANCER number
---@alias PET_TYPE_DRUID number
---@alias PET_TYPE_PSIONIC number
---@alias PET_TYPE PET_TYPE_UNKNOWN | PET_TYPE_NECROMANCER | PET_TYPE_DRUID | PET_TYPE_PSIONIC

--[[ EVENTS --]]

---@alias EVENT_ACTIVE_PET_CHANGED "EVENT_ACTIVE_PET_CHANGED"
---@alias EVENT_ACTIVE_PET_SPELLS_CHANGED "EVENT_ACTIVE_PET_SPELLS_CHANGED"
---@alias EVENT_ACTIVE_PET_STATE_CHANGED "EVENT_ACTIVE_PET_STATE_CHANGED"
---@alias EVENT_PARTY_MEMBER_ACTIVE_PET_CHANGED "EVENT_PARTY_MEMBER_ACTIVE_PET_CHANGED"
---@alias EVENT_PET_INFO_CHANGED "EVENT_PET_INFO_CHANGED"
---@alias EVENT_UNIT_FOLLOWERS_LIST_CHANGED "EVENT_UNIT_FOLLOWERS_LIST_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_ACTIVE_PET_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ACTIVE_PET_SPELLS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ACTIVE_PET_STATE_CHANGED)
---@overload fun(eventFunction: fun(data: { palyerId: ObjectId }), sysEventName: EVENT_PARTY_MEMBER_ACTIVE_PET_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_PET_INFO_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_UNIT_FOLLOWERS_LIST_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

