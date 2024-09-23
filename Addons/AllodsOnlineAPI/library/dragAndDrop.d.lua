---@meta

--[[ ENUMS --]]

---@alias DND_STATE_NOT_REGISTERED number - Виджет не зарегистрирован в системе drag&drop
---@alias DND_STATE_NOT_READY number - Виджет не готов к началу перемещения (система занята, перемещается другой виджет и тп)
---@alias DND_STATE_READY number - Виджет готов к началу перемещения, попыток перемещения не зарегистрировано
---@alias DND_STATE_PREPARE number - Виджет готов к началу перемещения, возможно есть попытка перемещения (кнопка мыши нажата, но сдвига еще нет)
---@alias DND_STATE_WAIT_PICK_CONFIRMATION number - Ожидается подтверждение на начало перемещения виджета
---@alias DND_STATE_DRAGGING number - Виджет в процессе перемещения
---@alias DND_STATE_WAIT_DROP_CONFIRMATION number - Ожидается подтверждение на завершение перемещения виджета
---@alias DND_STATE DND_STATE_NOT_REGISTERED | DND_STATE_NOT_READY | DND_STATE_READY | DND_STATE_PREPARE | DND_STATE_WAIT_PICK_CONFIRMATION | DND_STATE_DRAGGING | DND_STATE_WAIT_DROP_CONFIRMATION

--[[ EVENTS --]]

---@alias EVENT_DND_DRAG_CANCELLED "EVENT_DND_DRAG_CANCELLED"
---@alias EVENT_DND_DRAG_OVER "EVENT_DND_DRAG_OVER"
---@alias EVENT_DND_DRAG_TO "EVENT_DND_DRAG_TO"
---@alias EVENT_DND_DROP_ATTEMPT "EVENT_DND_DROP_ATTEMPT"
---@alias EVENT_DND_PICK_ATTEMPT "EVENT_DND_PICK_ATTEMPT"
---@alias EVENT_GROUP_INVITE_END "EVENT_GROUP_INVITE_END"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_DND_DRAG_CANCELLED)
---@overload fun(eventFunction: fun(data: { srcWidget: WidgetSafe, srcId: integer, targetWidget: WidgetSafe | nil, targetId: integer, enter: boolean }), sysEventName: EVENT_DND_DRAG_OVER)
---@overload fun(eventFunction: fun(data: { srcWidget: WidgetSafe, srcId: integer, posX: integer, posY: integer, outside: boolean, kbFlags: KBF }), sysEventName: EVENT_DND_DRAG_TO)
---@overload fun(eventFunction: fun(data: { srcWidget: WidgetSafe, srcId: integer, targetWidget: WidgetSafe | nil, targetId: integer, kbFlags: KBF }), sysEventName: EVENT_DND_DROP_ATTEMPT)
---@overload fun(eventFunction: fun(data: { srcWidget: WidgetSafe, srcId: integer, posX: integer, posY: integer, kbFlags: KBF }), sysEventName: EVENT_DND_PICK_ATTEMPT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GROUP_INVITE_END)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ METHODS --]]

---@class wtPanel
wtPanel = {}

function wtPanel:DNDCancelDrag() end

function wtPanel:DNDConfirmDropAttempt() end

function wtPanel:DNDConfirmPickAttempt() end

---@param isActive boolean
function wtPanel:DNDConfirmPickAttempt( isActive ) end

---@return DND_STATE
function wtPanel:DNDGetState() end

---@param id integer
---@param isDragOnly boolean
function wtPanel:DNDRegister( id, isDragOnly ) end

---@param isDragOnly boolean
---@return integer
function wtPanel:DNDRegisterGeneric( isDragOnly ) end

function wtPanel:DNDUnregister() end
