---@meta

---@class dungeonChoice
dungeonChoice = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_DUNGEON_CHOICE_FINISHED "EVENT_DUNGEON_CHOICE_FINISHED"
---@alias EVENT_DUNGEON_CHOICE_STARTED "EVENT_DUNGEON_CHOICE_STARTED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_DUNGEON_CHOICE_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_DUNGEON_CHOICE_STARTED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param dungeonIndex integer
---@param rewardIndex integer
function dungeonChoice.ChooseDungeon( dungeonIndex, rewardIndex ) end

---@return table<integer, WString>
function dungeonChoice.GetCategories() end

---@param dungeonIndex integer
---@return table<integer, { index: integer, name: WString, count: integer }>
function dungeonChoice.GetDungeonReward( dungeonIndex ) end

---@return table<integer, { index: integer, categoryName: WString, hasRooms: boolean, level: integer | nil }>
function dungeonChoice.GetList() end

---@return { durationMs: integer, remainingMs: integer }
function dungeonChoice.GetTimeout() end

---@return boolean
function dungeonChoice.IsActive() end