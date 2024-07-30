---@meta

---@class wtControl3D
wtControl3D = {}

--[[ ENUMS --]]

---@alias ATTACHED_OBJECT_POS_BOTTOM unknown - снизу
---@alias ATTACHED_OBJECT_POS_CENTER unknown - по центру
---@alias ATTACHED_OBJECT_POS_UP unknown - сверху
---@alias ATTACHED_OBJECT_POS ATTACHED_OBJECT_POS_BOTTOM | ATTACHED_OBJECT_POS_CENTER | ATTACHED_OBJECT_POS_UP

---@alias WIDGET_3D_BIND_POINT_LOW number - привязка наименьшей координаты (верхний край)
---@alias WIDGET_3D_BIND_POINT_CENTER number - привязка центра
---@alias WIDGET_3D_BIND_POINT_HIGH number - привязка наибольшей кооординаты (нижний край)
---@alias WIDGET_3D_BIND_POINT WIDGET_3D_BIND_POINT_LOW | WIDGET_3D_BIND_POINT_CENTER | WIDGET_3D_BIND_POINT_HIGH

--[[ EVENTS --]]

---@alias EVENT_CANNOT_ATTACH_WIDGET_3D "EVENT_CANNOT_ATTACH_WIDGET_3D"

---@overload fun(eventFunction: fun(data: { objectId: ObjectId }), sysEventName: EVENT_CANNOT_ATTACH_WIDGET_3D)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param widget WidgetSafe
---@param size { sizeX: number, sizeY: number }
---@param pos GamePosition
---@param autoResizeX boolean
---@param autoResizeY boolean
---@param cutDistance number
---@param bindPointY WIDGET_3D_BIND_POINT
---@param minSizeLimit number
---@param maxSizeLimit number
function wtControl3D:AddWidget3D( widget, size, pos, autoResizeX, autoResizeY, cutDistance, bindPointY, minSizeLimit, maxSizeLimit ) end

function wtControl3D:RemoveAllWidget3D() end

---@param widget WidgetSafe
function wtControl3D:RemoveWidget3D( widget ) end

---@param widget WidgetSafe
---@param pos GamePosition
function wtControl3D:SetWidget3DPos( widget, pos ) end

---@param widget WidgetSafe
---@param size { sizeX: number, sizeY: number }
function wtControl3D:SetWidget3DSize( widget, size ) end