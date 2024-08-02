---@meta

---@class mwar
mwar = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_MWAR_FLAG_COSTS_CHANGED "EVENT_MWAR_FLAG_COSTS_CHANGED"
---@alias EVENT_MWAR_LADDER_CHANGED "EVENT_MWAR_LADDER_CHANGED"
---@alias EVENT_MWAR_QUEUE_CHANGED "EVENT_MWAR_QUEUE_CHANGED"
---@alias EVENT_MWAR_RATING_PROGRESS_CHANGED "EVENT_MWAR_RATING_PROGRESS_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_MWAR_FLAG_COSTS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MWAR_LADDER_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MWAR_QUEUE_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MWAR_RATING_PROGRESS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return nil | { serviceResourceIncreaseMax: integer, serviceResourceIncomeIncrease: number, serviceResourceExchangeCost: integer, serviceResourceCostIncrease: number, serviceResource: CurrencyId | nil, regionProgressIncome: integer, pvpResource: CurrencyId | nil, pveResource: CurrencyId | nil, mapProgressCounterCap: integer, serviceResourceExchangeFactor: number, minResourceEffectivnessFactor: number, maxInitialAttackSectorsCount: integer, championFightsTimes: { entries: TimeTableId[] } }
function mwar.GetCommonInfo() end

---@return nil | { raidEventResource: InstancedEventResourceId, groupEventResource: InstancedEventResourceId }
function mwar.GetCommonMatchMakingInfo() end

---@param eventResourceId InstancedEventResourceId
---@return TimeEntry[]
function mwar.GetEventStartTimeEntries( eventResourceId ) end

---@return nil | table<integer, unknown>
--- TODO: check return type
function mwar.GetFlagCosts() end

---@return nil | { combats: table<integer, { time: LuaFullDateTime, winnerId: ObjectId, winnerScore: integer, winLeadName: WString, loserId: ObjectId, loserScore: integer, lossLeadName: WString, isRatingBattle: boolean }> }
function mwar.GetGuildHistory() end

---@param guildId ObjectId
---@return nil | { guildId: ObjectId, guildName: WString, rating: integer, symbolics: table }
--- TODO: is method from description (mwar.GetGuildSymbolics) exist?
function mwar.GetGuildInfo( guildId ) end

---@return nil | { auction: { stakeAllowed: boolean, recentStakeBeatingAllowed: boolean, targetsToStakes: table<ObjectId, { stakeOwner: ObjectId, stakeValue: integer, targetGuild: ObjectId, time: LuaFullDateTime }>, targetToResult: table<ObjectId, { staker: ObjectId, target: ObjectId, targetPart: number }> }, guilds: ObjectId[] }
--- TODO: check type of targetsToStakes property
function mwar.GetLadderInfo() end

---@return nil | { event: InstancedEventResourceId, isRaid: boolean, targetGuildId: ObjectId | nil, targetGuildName: WString | nil }
function mwar.GetQueueInfo() end

---@return nil | table<BattlegroundMarkId, { guildId: ObjectId, isRaid: boolean, leaderRating: integer }>
--- TODO: check return type
function mwar.GetRatingProgressInfo() end

---@param targetGuildId ObjectId
function mwar.JoinRequestRaid( targetGuildId ) end

---@param isReplicate boolean
function mwar.ReplicateLadder( isReplicate ) end

---@param targetGuildId ObjectId
function mwar.Stake( targetGuildId ) end