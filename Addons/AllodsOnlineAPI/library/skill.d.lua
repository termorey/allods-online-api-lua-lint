---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_SKILL_ADDED "EVENT_SKILL_ADDED"
---@alias EVENT_SKILL_IMPROVEMENT_CHANGED "EVENT_SKILL_IMPROVEMENT_CHANGED"
---@alias EVENT_SKILL_REMOVED "EVENT_SKILL_REMOVED"
---@alias EVENT_SKILLS_CHANGED "EVENT_SKILLS_CHANGED"
---@alias EVENT_SKILL_SCORE_CHANGED "EVENT_SKILL_SCORE_CHANGED"

---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_SKILL_ADDED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_SKILL_IMPROVEMENT_CHANGED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_SKILL_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_SKILLS_CHANGED)
---@overload fun(eventFunction: fun(data: { skillId: SkillId }), sysEventName: EVENT_SKILL_SCORE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

