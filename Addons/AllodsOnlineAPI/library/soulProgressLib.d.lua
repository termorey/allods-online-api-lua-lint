---@meta

---@class soulProgressLib
soulProgressLib = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_INVENTORY_GEMS_CHANGED "EVENT_INVENTORY_GEMS_CHANGED"
---@alias EVENT_INVENTORY_GEMS_SLOT_ADDED "EVENT_INVENTORY_GEMS_SLOT_ADDED"
---@alias EVENT_INVENTORY_GEMS_SLOT_REMOVED "EVENT_INVENTORY_GEMS_SLOT_REMOVED"
---@alias EVENT_SOUL_PROGRESS_EXPERIENCE_CHANGED "EVENT_SOUL_PROGRESS_EXPERIENCE_CHANGED"
---@alias EVENT_SOUL_PROGRESS_TALENTS_CHANGED "EVENT_SOUL_PROGRESS_TALENTS_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_INVENTORY_GEMS_CHANGED)
---@overload fun(eventFunction: fun(data: { slot: integer }), sysEventName: EVENT_INVENTORY_GEMS_SLOT_ADDED)
---@overload fun(eventFunction: fun(data: { slot: integer }), sysEventName: EVENT_INVENTORY_GEMS_SLOT_REMOVED)
---@overload fun(eventFunction: fun(data: { currentValue: integer, deltaValue: integer, currentLevel: integer, deltaLevel: integer }), sysEventName: EVENT_SOUL_PROGRESS_EXPERIENCE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_SOUL_PROGRESS_TALENTS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param socketId SocketId
---@param objectId ObjectId
---@return boolean
function soulProgressLib.CanInsertGem( socketId, objectId ) end

---@return number
function soulProgressLib.GetCurrentExperience() end

---@param level number
---@return number
--- TODO: missed docs argument
function soulProgressLib.GetExperienceBySoulLevel( level ) end

---@return { talentCurrency: CurrencyId | nil }
function soulProgressLib.GetInfo() end

---@return number | nil
function soulProgressLib.GetMaxLevel() end

---@return number
function soulProgressLib.GetRerollPrice() end

---@return table<integer, number>
function soulProgressLib.GetSelectedTalents() end

---@param value number
---@return number
--- TODO: missed docs argument
function soulProgressLib.GetSoulLevelForExperience( value ) end

---@return { edges: { firstNodeId: integer, secondNodeId: integer }, nodes: table<integer, { id: integer, start: boolean, x: integer, y: integer, socket: SocketId | nil, quality: ITEM_QUALITY }>, version: integer }
function soulProgressLib.GetTalentGraph() end

---@return ValuedText | nil
function soulProgressLib.GetTipProgressGain() end

function soulProgressLib.RerollSoulTalents() end

---@param talents number[]
function soulProgressLib.SelectSoulTalents( talents ) end