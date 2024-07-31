---@meta

---@class lifestyle
lifestyle = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_LIFESTYLE_CHANGED "EVENT_LIFESTYLE_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_LIFESTYLE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return boolean
function lifestyle.CanChangePreset() end

---@param presetIndex? unknown
---@return integer
--- TODO: has argument in title, but hasn't in description
function lifestyle.GetActivePreset( presetIndex ) end

---@param presetIndex integer
---@return table<integer, ObjectId>
function lifestyle.GetPreset( presetIndex ) end

---@return integer
function lifestyle.GetPresetsCount() end

---@return table<integer, DRESS_SLOT>
function lifestyle.GetSlots() end

---@param presetIndex integer
function lifestyle.SetActivePreset( presetIndex ) end