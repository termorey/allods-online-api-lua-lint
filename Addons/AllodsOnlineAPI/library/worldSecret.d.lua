---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_SECRET_CLOSED "EVENT_SECRET_CLOSED"
---@alias EVENT_SECRET_COMPONENT_CLOSED "EVENT_SECRET_COMPONENT_CLOSED"
---@alias EVENT_SECRET_FINISHED "EVENT_SECRET_FINISHED"
---@alias EVENT_SECRET_FINISHER_STATUS_CHANGED "EVENT_SECRET_FINISHER_STATUS_CHANGED"
---@alias EVENT_SECRET_OPENED "EVENT_SECRET_OPENED"
---@alias EVENT_SECRETS_CHANGED "EVENT_SECRETS_CHANGED"

---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SECRET_CLOSED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, componentIndex: integer }), sysEventName: EVENT_SECRET_COMPONENT_CLOSED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SECRET_FINISHED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SECRET_FINISHER_STATUS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_SECRET_OPENED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_SECRETS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

