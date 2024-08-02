---@meta

---@class order
order = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_AVAILABLE_ORDERS_CHANGED "EVENT_AVAILABLE_ORDERS_CHANGED"
---@alias EVENT_ORDER_ACHIEVEMENTS_CHANGED "EVENT_ORDER_ACHIEVEMENTS_CHANGED"
---@alias EVENT_ORDER_CAN_VOTE_CHANGED "EVENT_ORDER_CAN_VOTE_CHANGED"
---@alias EVENT_ORDER_CHANGED "EVENT_ORDER_CHANGED"
---@alias EVENT_ORDER_INFO_CHANGED "EVENT_ORDER_INFO_CHANGED"
---@alias EVENT_ORDER_VOTE_ANSWER "EVENT_ORDER_VOTE_ANSWER"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVAILABLE_ORDERS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ORDER_ACHIEVEMENTS_CHANGED)
---@overload fun(eventFunction: fun(data: { canVote: boolean }), sysEventName: EVENT_ORDER_CAN_VOTE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ORDER_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ORDER_INFO_CHANGED)
---@overload fun(eventFunction: fun(data: { isOk: boolean, result: string }), sysEventName: EVENT_ORDER_VOTE_ANSWER)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return boolean
function order.CanVote() end

---@param orderId ObjectId
---@return nil | { mainPlayerAchievement: number, [string]: nil | table<integer, { position: number, name: WString, guildName: WString, shardName: WString, achievement: number, raceClass: LuaRaceClassInfoPart | nil, isMainPlayer: boolean }> }
--- TODO: check docs arguments
--- TODO: unknown table property (named as string)
function order.GetAchievements( orderId ) end

---@return nil | { trainingEvent: ObjectId | nil, raitingEvent: ObjectId | nil }
function order.GetBattleEvents() end

---@return number
function order.GetBonusDuration() end

---@return nil | { id: OrderBonusId, name: WString, description: WString, image: TextureId, voteCount: number, disabled: boolean }
function order.GetBonusVoitingList() end

---@return number | nil
function order.GetMainPlayerOrder() end

---@return number
--- TODO: is it correct in docs (title: order.GetMainPlayerVoteWeigh; named once and exist: order.GetMainPlayerVoteWeight)
function order.GetMainPlayerVoteWeight() end

---@return nil | number
function order.GetMainPlayerVoteWeight() end

---@return nil | number
function order.GetMaxAvatarVotesCount() end

---@return OrderBonusId
function order.GetOrderBonus() end

---@return nil | { id: OrderBonusId, name: WString, description: WString, image: TextureId }
function order.GetOrderBonusInfo() end

---@param orderNumber number
---@return nil | { orderNumber: number, image: TextureId, description: WString | nil, sysName: string, isAvailable: boolean }
function order.GetOrderInfo( orderNumber ) end

---@return nil | table
--- TODO: check return type
function order.GetOrdersList() end

---@return nil | { orderScore: number, orderTopPosition: number }
function order.GetOrderStats() end

---@return nil | { name: WString, raitingEventId: ObjectId }
function order.GetPrestigeSections() end

---@param objectId ObjectId
---@return nil | { name: WString, achievement: number }
--- TODO: dosc arguments
function order.GetPreviousAchievementTop( objectId ) end

---@return nil | { name: WString, raitingEventId: ObjectId }
function order.GetRatingSections() end

---@return nil | { y: integer, m: integer, d: integer }
function order.GetSeasonStartDate() end

--- TODO: dosc is empty
function order.GetVotedBonuses() end

---@return boolean
function order.IsOrderAvailable() end

function order.LeaveOrder() end

function order.RequestOrderInfo() end

function order.RequestPrestigeAchivements() end

function order.RequestRatingAchivements() end

---@param bonusIds OrderBonusId[]
--- TODO: incorrect dosc title
function order.SendBonusVotes( bonusIds )end

---@param bonusIds OrderBonusId[]
function order.SendBonusVotes( bonusIds ) end

---@param orderNumber number
function order.SetMainPlayerOrder( orderNumber ) end