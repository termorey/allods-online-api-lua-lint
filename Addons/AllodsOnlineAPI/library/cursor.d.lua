---@meta

--[[ ENUMS --]]



--[[ EVENTS --]]
---@alias EVENT_INGAME_UNDER_CURSOR_CHANGED "EVENT_INGAME_UNDER_CURSOR_CHANGED"

---@overload fun(eventFunction: fun(data: { state: string } | { state: "interface" } | { state: "main_view_3d_none" } | { state: "main_view_3d_unit", unitId: ObjectId } | { state: "main_view_3d_device", deviceId: ObjectId, canUse: boolean } | { state: "main_view_3d_astral_unit", unitId: ObjectId } | { state: "main_view_3d_interactive_device_element", deviceType: USDEV } | { state: "main_view_3d_interactive_device_element", deviceType: USDEV_SCANER, type: HT, name: WString | nil }), sysEventName: EVENT_INGAME_UNDER_CURSOR_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

