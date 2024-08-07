---@meta

---@class RelatedSoundsLua
--- Объект, представляющий собой группу звуковых ресурсов
RelatedSoundsLua = {}

---@class RelatedTextsLua
--- Объект, представляющий собой группу текстовых ресурсов
RelatedTextsLua = {}

---@class RelatedTexturesLua
--- Объект, представляющий собой группу текстурных ресурсов
RelatedTexturesLua = {}

--[[ ENUMS --]]



--[[ EVENTS --]]



--[[ FUNCTIONS --]]

---@return table<integer, string>
function RelatedSoundsLua:GetList() end

---@return Sound2DId | nil
function RelatedSoundsLua:GetSound() end

---@param sysName string
---@return boolean
function RelatedSoundsLua:HasSound( sysName ) end

---@return table<integer, string>
function RelatedTextsLua:GetList() end

---@param sysName string
---@return WString | nil
function RelatedTextsLua:GetText( sysName ) end

---@param sysName string
---@return boolean
function RelatedTextsLua:HasText( sysName ) end

---@return table<integer, string>
function RelatedTexturesLua:GetList() end

---@param sysName string
---@return TextureId | nil
function RelatedTexturesLua:GetTexture( sysName ) end

---@param sysName string
---@return boolean
function RelatedTexturesLua:HasTexture( sysName ) end