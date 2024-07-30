---@meta

---@class wtEditLine
wtEditLine = {}

--[[ ENUMS --]]



--[[ EVENTS --]]



--[[ FUNCTIONS --]]

function wtEditLine:BackspaceCharAtCursorPos() end

function wtEditLine:DeleteCharAtCursorPos() end

---@return integer
function wtEditLine:GetCursorPos() end

---@return WString
function wtEditLine:GetInitialGlobalClass() end

---@return integer
function wtEditLine:GetPosObjectCount() end

---@return string
function wtEditLine:GetString() end

---@return WString
function wtEditLine:GetText() end

---@param text WString
function wtEditLine:InsertTextAtCursorPos( text ) end

---@param index integer
function wtEditLine:SetCursorPos( index ) end

---@param classNames table<integer, string | WString>
function wtEditLine:SetGlobalClasses( classNames ) end

---@param maxSize integer | nil
function wtEditLine:SetMaxSize( maxSize ) end

---@param text WString
function wtEditLine:SetText( text ) end

---@param tagName WString | string | nil
---@param color integer | string | WString | Color
---@param colorType? EnumColorType
function wtEditLine:SetTextColor( tagName, color, colorType ) end