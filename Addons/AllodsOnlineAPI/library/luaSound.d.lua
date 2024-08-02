---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]



--[[ FUNCTIONS --]]

---@param soundId Sound2DId
---@param slot integer
---@return Sound | nil
function common.CreateProlongedStateSound( soundId, slot ) end

---@param soundId Sound2DId
---@return Sound | nil
function common.CreateSound( soundId ) end

---@param musicAlias string
function common.PlayMusic( musicAlias ) end