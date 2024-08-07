---@meta

---@class proceduralDungeonLib
proceduralDungeonLib = {}

--[[ ENUMS --]]

---@alias ENUM_EventGoalState
---| "ENUM_EventGoalState_Active" - в процессе
---| "ENUM_EventGoalState_Success" - успешно завершено
---| "ENUM_EventGoalState_Failed" - провалено

---@alias ENUM_EventGoalType
---| "ENUM_EventGoalType_KillMobs" - охота на мобов
---| "ENUM_EventGoalType_DefenceMobs" - защита/сопровождение моба
---| "ENUM_EventGoalType_Survive" - выживание
---| "ENUM_EventGoalType_ElementProgress" - прогресс элементов

--[[ EVENTS --]]

---@alias EVENT_AVATAR_ENTER_PROCEDURAL_DUNGEON "EVENT_AVATAR_ENTER_PROCEDURAL_DUNGEON"
---@alias EVENT_AVATAR_LEAVE_PROCEDURAL_DUNGEON "EVENT_AVATAR_LEAVE_PROCEDURAL_DUNGEON"
---@alias EVENT_PROCEDURAL_DUNGEON_GOAL_ADDED "EVENT_PROCEDURAL_DUNGEON_GOAL_ADDED"
---@alias EVENT_PROCEDURAL_DUNGEON_GOAL_COUNT_CHANGED "EVENT_PROCEDURAL_DUNGEON_GOAL_COUNT_CHANGED"
---@alias EVENT_PROCEDURAL_DUNGEON_GOALS_CHANGED "EVENT_PROCEDURAL_DUNGEON_GOALS_CHANGED"
---@alias EVENT_PROCEDURAL_DUNGEON_GOAL_STATE_CHANGED "EVENT_PROCEDURAL_DUNGEON_GOAL_STATE_CHANGED"
---@alias EVENT_PROCEDURAL_DUNGEON_POINTS_CHANGED "EVENT_PROCEDURAL_DUNGEON_POINTS_CHANGED"
---@alias EVENT_PROCEDURAL_DUNGEON_SCENARIO_ADDED "EVENT_PROCEDURAL_DUNGEON_SCENARIO_ADDED"
---@alias EVENT_PROCEDURAL_DUNGEON_SCENARIO_STATE_CHANGED "EVENT_PROCEDURAL_DUNGEON_SCENARIO_STATE_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_ENTER_PROCEDURAL_DUNGEON)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_LEAVE_PROCEDURAL_DUNGEON)
---@overload fun(eventFunction: fun(data: { goal: ObjectId }), sysEventName: EVENT_PROCEDURAL_DUNGEON_GOAL_ADDED)
---@overload fun(eventFunction: fun(data: { goal: ObjectId }), sysEventName: EVENT_PROCEDURAL_DUNGEON_GOAL_COUNT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROCEDURAL_DUNGEON_GOALS_CHANGED)
---@overload fun(eventFunction: fun(data: { goal: ObjectId }), sysEventName: EVENT_PROCEDURAL_DUNGEON_GOAL_STATE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROCEDURAL_DUNGEON_POINTS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_PROCEDURAL_DUNGEON_SCENARIO_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_PROCEDURAL_DUNGEON_SCENARIO_STATE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return SpellId | nil
function proceduralDungeonLib.GetEscapeSpell() end

---@param goalId ObjectId
---@return nil | { goalId: ObjectId, scenarioId: ObjectId, objective: WString, description: WString, hasTimer: boolean, duration: integer, startTime: LuaFullDateTime, state: ENUM_EventGoalState, type: ENUM_EventGoalType, count?: integer | nil, total?: integer | nil, isEscort?: boolean | nil }
function proceduralDungeonLib.GetGoalInfo( goalId ) end

---@return nil | table<integer, ObjectId>
function proceduralDungeonLib.GetGoals() end

---@param goalId ObjectId | nil
---@return nil | GamePosition[]
function proceduralDungeonLib.GetPoints( goalId ) end

---@return SpellId | nil
function proceduralDungeonLib.GetRunScenarioSpell() end

---@param scenarioId ObjectId
---@return nil | { scenarioId: ObjectId, state: ENUM_EventGoalState, name: WString, description: WString, goals: table<integer, ObjectId> }
function proceduralDungeonLib.GetScenarioInfo( scenarioId ) end

---@return nil | table<integer, ObjectId>
function proceduralDungeonLib.GetScenarios() end

---@return SpellId | nil
function proceduralDungeonLib.GetStopScenarioSpell() end

---@return boolean
function proceduralDungeonLib.IsExist() end