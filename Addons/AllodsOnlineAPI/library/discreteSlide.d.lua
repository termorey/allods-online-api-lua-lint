---@meta

---@class wtDiscreteSlider
wtDiscreteSlider = {}

--[[ ENUMS --]]



--[[ EVENTS --]]



--[[ FUNCTIONS --]]

---@return integer
function wtDiscreteSlider:GetPos() end

---@return integer
function wtDiscreteSlider:GetStepsCount() end

---@param pos integer
function wtDiscreteSlider:SetPos( pos ) end

---@param count integer
function wtDiscreteSlider:SetStepsCount( count ) end