---@meta

---@class loginEventLib
loginEventLib = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_LOGIN_EVENT_GOALS_CHANGED "EVENT_LOGIN_EVENT_GOALS_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_LOGIN_EVENT_GOALS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return nil | table<integer, { title: WString, description: WString, locations: table<integer, { locator: QuestLocation }> }>
function loginEventLib.GetGoals() end

---@param itemId ObjectId
---@return nil | string
function loginEventLib.GetRewardQuality( itemId ) end

---@param day integer
---@return nil | table<integer, ObjectId>
---@return boolean
function loginEventLib.GetRewardsSample( day ) end

---@return boolean
function loginEventLib.IsEnabled() end