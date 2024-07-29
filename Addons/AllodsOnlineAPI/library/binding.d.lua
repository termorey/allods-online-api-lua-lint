---@meta

---@class binding
binding = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_BINDING_CHANGED "EVENT_BINDING_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_BINDING_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function binding.Apply() end

function binding.ApplyRebind() end

function binding.Cancel() end

function binding.CancelRebind() end

---@param sysSectionName string
---@param sysBindName string
---@return nil | { sysName: string, name: WString, keys: table<integer, table<integer, WString>> }
function binding.GetBind( sysSectionName, sysBindName ) end

---@return { isConflict: boolean, sysSection: string, sysBind: string }
function binding.GetRebindConflict() end

---@return string
function binding.GetRebindKey() end

---@param sysSectionName string
---@return nil | { sysName: string, name: WString, bindNames: table<integer, string> }
function binding.GetSection( sysSectionName )end

---@return table<integer, string>
function binding.GetSections() end

---@return boolean
function binding.HasRebind() end

---@return boolean
function binding.IsWaitingRebind() end

---@param sysSectionName string
---@param sysBindName string
---@param index integer
function binding.RemoveBind( sysSectionName, sysBindName, index ) end

function binding.ResetToDefault() end

---@param sysSectionName string
---@param sysBindName string
---@param index integer
function binding.StartRebind( sysSectionName, sysBindName, index ) end