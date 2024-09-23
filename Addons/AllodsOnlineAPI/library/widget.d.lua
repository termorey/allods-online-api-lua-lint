---@meta

--[[ ENUMS --]]

---@alias ET_MOVE number - эффект изменения положения (WidgetPlacement: posX, posY, highPosX, highPosY) виджета
---@alias ET_FADE number - эффект изменения прозрачности виджета/текста
---@alias ET_RESIZE number - эффект изменения размеров (WidgetPlacement: sizeX, sizeY) виджета
---@alias ET_TEXTURE_ROTATION number - эффект изменения угла поворота текстур (BackLayer, FrontLayer) виджета
---@alias ET_TEXT_SCALE number - эффект изменения размера текста, только для TextView
---@alias ET ET_MOVE | ET_FADE | ET_RESIZE | ET_TEXTURE_ROTATION | ET_TEXT_SCALE

---@alias EA_MONOTONOUS_INCREASE unknown - равномерное изменение параметра
---@alias EA_SYMMETRIC_FLASH unknown - изменение параметра с последующим восстановлением
---@alias EA_ACCELERATED unknown - ускоренное изменение параметра
---@alias EA EA_MONOTONOUS_INCREASE | EA_SYMMETRIC_FLASH | EA_ACCELERATED

---@alias BLEND_EFFECT_ALPHABLND number
---@alias BLEND_EFFECT_HIGHLIGHT number
---@alias BLEND_EFFECT_ADD number
---@alias BLEND_EFFECT_MUL number
---@alias BLEND_EFFECT_REPLACE number
---@alias BLEND_EFFECT BLEND_EFFECT_ALPHABLND | BLEND_EFFECT_HIGHLIGHT | BLEND_EFFECT_ADD | BLEND_EFFECT_MUL | BLEND_EFFECT_REPLACE

--[[ TYPES --]]

---@alias WidgetDesc userdata # Описатель виджета из ресурсной системы
---@alias WidgetPlacementLua { sizingX: number, sizingY: number, alignX: number, alignY: number, sizeX: number, sizeY: number, posX: number, posY: number, highPosX: number, highPosY: number }
---@alias WidgetPlacementLua.Partial { sizingX?: number, sizingY?: number, alignX?: number, alignY?: number, sizeX?: number, sizeY?: number, posX?: number, posY?: number, highPosX?: number, highPosY?: number }
---@alias SequenceParams<Start,Finish> { [integer]: { start: Start | nil, finish: Finish | nil, timeMs: integer | nil, algoDesc: EA | { type: EA } | nil }, showOnStart?: boolean, hideOnFinish?: boolean, cycled?: boolean, sendStepEvent?: boolean, sendFinishEvent?: boolean, eventLabel?: string | number, startOffsetMs?: integer }

--[[ METHODS --]]

---@class WidgetSafe
WidgetSafe = {}
---@param widgetDesc WidgetDesc
---@return WidgetSafe
function WidgetSafe:CreateWidgetByDesc ( widgetDesc ) end
function WidgetSafe:DestroyWidget () end
---@param show boolean
function WidgetSafe:Enable ( show ) end
---@param finalPosition boolean | nil
---@param sendEvent boolean | nil
function WidgetSafe:FinishEffect ( finalPosition, sendEvent ) end
---@param finalPosition boolean | nil
---@param sendEvent boolean | nil
function WidgetSafe:FinishAllEffects ( finalPosition, sendEvent ) end
---@param finalPosition boolean | nil
---@param sendEvent boolean | nil
function WidgetSafe:FinishFadeEffect ( finalPosition, sendEvent ) end
---@param finalPosition boolean | nil
---@param sendEvent boolean | nil
function WidgetSafe:FinishMoveEffect ( finalPosition, sendEvent ) end
---@param finalPosition boolean | nil
---@param sendEvent boolean | nil
function WidgetSafe:FinishResizeEffect ( finalPosition, sendEvent ) end
---@param finalPosition boolean | nil
---@param sendEvent boolean | nil
function WidgetSafe:FinishRotationEffect ( finalPosition, sendEvent ) end
---@return string
function WidgetSafe:GetAddonName () end
---@return number
function WidgetSafe:GetAddonType () end
---@return Color
function WidgetSafe:GetBackgroundColor () end
---@param name string
---@param recursive boolean
---@return WidgetSafe
function WidgetSafe:GetChildChecked (name, recursive ) end
---@param name string
---@param recursive boolean
---@return WidgetSafe | nil
function WidgetSafe:GetChildUnchecked (name, recursive ) end
---@return number
function WidgetSafe:GetFade () end
---@return Color
function WidgetSafe:GetForegroundColor () end
---@return string
function WidgetSafe:GetName () end
---@return table<integer, WidgetSafe>
function WidgetSafe:GetNamedChildren () end
---@return WidgetSafe | nil
function WidgetSafe:GetParent () end
---@return WidgetPlacementLua
function WidgetSafe:GetPlacementPlain () end
---@return integer
function WidgetSafe:GetPriority () end
---@return { x1: number, y1: number, x2: number, y2: number }
function WidgetSafe:GetRealRect () end
---@return number
function WidgetSafe:GetRotation () end
---@return WidgetPlacementLua
function WidgetSafe:GetSmartPlacementPlain () end
---@return integer
function WidgetSafe:GetTabOrder () end
---@return boolean
function WidgetSafe:GetTransparentInput () end
---@return WidgetDesc
function WidgetSafe:GetWidgetDesc () end
---@param effectType ET | nil
---@return unknown
function WidgetSafe:HasActiveEffects ( effectType ) end
---@return boolean
function WidgetSafe:IsClipContent () end
---@return boolean
function WidgetSafe:IsEnabled () end
---@return boolean
function WidgetSafe:IsFocused () end
---@return boolean
function WidgetSafe:IsValid () end
---@return boolean
function WidgetSafe:IsVisible () end
---@return boolean
function WidgetSafe:IsVisibleEx () end
---@param repeatForever boolean | nil
function WidgetSafe:PlayBackground( repeatForever ) end
---@param effectPack { [ET]: SequenceParams, [ET_TEXTURE_ROTATION]: SequenceParams<number, number> }
function WidgetSafe:PlayEffectSequencePack( effectPack ) end
---@param start number | nil
---@param finish number | nil
---@param timeMs? integer
---@param algoDesc? EA | { type: EA } | nil
---@param needEvent? boolean | nil
---@param eventReceivers? table<integer, string>
function WidgetSafe:PlayFadeEffect( start, finish, timeMs, algoDesc, needEvent, eventReceivers ) end
---@param sequenceParams SequenceParams<number, number>
function WidgetSafe:PlayFadeEffectSequence( sequenceParams ) end
---@param start WidgetPlacementLua.Partial | nil
---@param finish WidgetPlacementLua.Partial | nil
---@param timeMs? integer
---@param algoDesc? EA | { type: EA } | nil
---@param needEvent? boolean | nil
---@param eventReceivers? table<integer, string>
function WidgetSafe:PlayMoveEffect( start, finish, timeMs, algoDesc, needEvent, eventReceivers ) end
---@param sequenceParams SequenceParams<WidgetPlacementLua.Partial, WidgetPlacementLua.Partial>
function WidgetSafe:PlayMoveEffectSequence( sequenceParams ) end
---@param start WidgetPlacementLua.Partial | nil
---@param finish WidgetPlacementLua.Partial | nil
---@param timeMs? integer
---@param algoDesc? EA | { type: EA } | nil
---@param needEvent? boolean | nil
---@param eventReceivers? table<integer, string>
function WidgetSafe:PlayResizeEffect( start, finish, timeMs, algoDesc, needEvent, eventReceivers ) end
---@param sequenceParams SequenceParams<WidgetPlacementLua.Partial, WidgetPlacementLua.Partial>
function WidgetSafe:PlayResizeEffectSequence( sequenceParams ) end
---@param start number | nil
---@param finish number | nil
---@param timeMs? integer
---@param algoDesc? EA | { type: EA, from: number, to: number } | nil
---@param needEvent? boolean | nil
---@param eventReceivers? table<integer, string>
function WidgetSafe:PlayRotationEffect( start, finish, timeMs, algoDesc, needEvent, eventReceivers ) end
---@param sequenceParams SequenceParams<number, number>
function WidgetSafe:PlayRotationEffectSequence( sequenceParams ) end
---@param start number | nil
---@param finish number | nil
---@param timeMs? integer
---@param algoDesc? EA | { type: EA, from: number, to: number } | nil
---@param needEvent? boolean | nil
---@param eventReceivers? table<integer, string>
function WidgetSafe:PlayRotationWithChildrenEffect( start, finish, timeMs, algoDesc, needEvent, eventReceivers ) end
---@param sequenceParams SequenceParams<number, number>
function WidgetSafe:PlayRotationWithChildrenEffectSequence( sequenceParams ) end
---@param radians number
function WidgetSafe:Rotate( radians ) end
---@param angle number
function WidgetSafe:RotateWithChildrenChildren( angle ) end
---@param blendEffect BLEND_EFFECT
function WidgetSafe:SetBackgroundBlendEffect( blendEffect ) end
---@param primaryColor Color
---@param secondaryColor Color
function WidgetSafe:SetBackgroundClearMaskEffect( primaryColor, secondaryColor ) end
---@param color Color
function WidgetSafe:SetBackgroundColor( color ) end
---@param texture TextureId
function WidgetSafe:SetBackgroundTexture( texture ) end
---@param clipContent boolean
function WidgetSafe:SetClipContent( clipContent ) end
---@param fade number
function WidgetSafe:SetFade( fade ) end
---@param focus boolean
function WidgetSafe:SetFocus( focus ) end
---@param blendEffect BLEND_EFFECT
function WidgetSafe:SetForegroundBlendEffect( blendEffect ) end
---@param primaryColor Color
---@param secondaryColor Color
function WidgetSafe:SetForegroundClearMaskEffect( primaryColor, secondaryColor ) end
---@param color Color
function WidgetSafe:SetForegroundColor( color ) end
---@param texture TextureId | nil
function WidgetSafe:SetForegroundTexture( texture ) end
---@param name string
function WidgetSafe:SetName( name ) end
---@param notify boolean
function WidgetSafe:SetOnShowNotification( notify ) end
---@param placement WidgetPlacementLua
function WidgetSafe:SetPlacementPlain( placement ) end
---@param priority integer
function WidgetSafe:SetPriority( priority ) end
---@param placement WidgetPlacementLua.Partial
---@return WidgetPlacementLua
function WidgetSafe:SetSmartPlacementPlain( placement ) end
---@param tabOrder integer
function WidgetSafe:SetTabOrder( tabOrder ) end
---@param transparentInput boolean
function WidgetSafe:SetTransparentInput( transparentInput ) end
---@param show boolean
function WidgetSafe:Show( show ) end

---@class EditLineSafe
EditLineSafe = {}
function EditLineSafe:BackspaceCharAtCursorPos() end
function EditLineSafe:DeleteCharAtCursorPos() end
---@return integer
function EditLineSafe:GetCursorPos() end
---@return WString
function EditLineSafe:GetInitialGlobalClass() end
---@return WString
function EditLineSafe:GetInitialSelectionClass() end
---@return integer
function EditLineSafe:GetPosObjectCount() end
---@return string
function EditLineSafe:GetString() end
---@return WString
function EditLineSafe:GetText() end
---@param text WString
function EditLineSafe:InsertTextAtCursorPos( text ) end
---@param index integer
function EditLineSafe:SetCursorPos( index ) end
---@param classNames table<integer, string | WString>
function EditLineSafe:SetGlobalClasses( classNames ) end
---@param maxSize integer | nil
function EditLineSafe:SetMaxSize( maxSize ) end
---@param className string | WString
function EditLineSafe:SetSelectionClass( className ) end
---@param text WString
function EditLineSafe:SetText( text ) end
---@param isRTag boolean
---@param tagName WString
---@param tagAttributes table<WString, false | string | WString>
function EditLineSafe:SetTextAttributes( isRTag, tagName, tagAttributes ) end

--[[ GLOBALS --]]

---@type WidgetSafe
mainForm = {}