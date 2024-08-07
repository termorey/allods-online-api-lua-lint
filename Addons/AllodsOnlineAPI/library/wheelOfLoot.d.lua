---@meta

---@class wheelOfLoot
wheelOfLoot = {}

--[[ ENUMS --]]

---@alias GameId number

--[[ EVENTS --]]

---@alias EVENT_WHEELOFLOOT_ADDED "EVENT_WHEELOFLOOT_ADDED"
---@alias EVENT_WHEELOFLOOT_CHANGED "EVENT_WHEELOFLOOT_CHANGED"
---@alias EVENT_WHEELOFLOOT_ITEMS "EVENT_WHEELOFLOOT_ITEMS"
---@alias EVENT_WHEELOFLOOT_REMOVED "EVENT_WHEELOFLOOT_REMOVED"

---@overload fun(eventFunction: fun(data: { wheelId: number }), sysEventName: EVENT_WHEELOFLOOT_ADDED)
---@overload fun(eventFunction: fun(data: { wheelId: number }), sysEventName: EVENT_WHEELOFLOOT_CHANGED)
---@overload fun(eventFunction: fun(data: { wheelId: number, slots: table<integer, GameId>, prizes: table<integer, GameId> }), sysEventName: EVENT_WHEELOFLOOT_ITEMS)
---@overload fun(eventFunction: fun(data: { wheelId: number }), sysEventName: EVENT_WHEELOFLOOT_REMOVED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param id number
---@return { sysName: string, lifeTime: number, price: integer, rollsCount: integer, maxRollsCount: integer, itemPriceId: ObjectId, wheelId: number, isLoginEvent: boolean, isManual: boolean }
function wheelOfLoot.GetInfo( id ) end

---@return table<integer, number>
function wheelOfLoot.GetList() end

---@param id number
function wheelOfLoot.RequestItems( id ) end