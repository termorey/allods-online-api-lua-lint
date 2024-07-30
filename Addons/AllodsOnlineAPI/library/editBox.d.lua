---@meta

---@class wtEditBox
wtEditBox = {}

--[[ ENUMS --]]



--[[ EVENTS --]]



--[[ FUNCTIONS --]]

--- TODO:  check type (non return type, but has template boolean check on return)
function wtEditBox:IsOverflow() end

---@param maxSize integer | nil
function wtEditBox:SetMaxSize( maxSize ) end

---@param show boolean
function wtEditBox:ShowScrollbar( show ) end