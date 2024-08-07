---@meta

--[[ ENUMS --]]

---@alias ENUM_MsgGuildAllodAuctionBidResultResult
---| "ENUM_MsgGuildAllodAuctionBidResultResult_SUCCESS"
---| "ENUM_MsgGuildAllodAuctionBidResultResult_ERROR"
---| "ENUM_MsgGuildAllodAuctionBidResultResult_OLDVERSION"
---| "ENUM_MsgGuildAllodAuctionBidResultResult_SAMEUSER"
---| "ENUM_MsgGuildAllodAuctionBidResultResult_NOGUILD"
---| "ENUM_MsgGuildAllodAuctionBidResultResult_NOMONEY"
---| "ENUM_MsgGuildAllodAuctionBidResultResult_NOAUCTION"
---| "ENUM_MsgGuildAllodAuctionBidResultResult_FINISHED"

--[[ EVENTS --]]

---@alias EVENT_GUILD_ALLOD_ATTACK_FAILED "EVENT_GUILD_ALLOD_ATTACK_FAILED"
---@alias EVENT_GUILD_ALLOD_ATTACK_SUCCESSFUL "EVENT_GUILD_ALLOD_ATTACK_SUCCESSFUL"
---@alias EVENT_GUILD_ALLOD_OWNER_CHANGED "EVENT_GUILD_ALLOD_OWNER_CHANGED"
---@alias EVENT_GUILD_ALLOD_TELEPORT_COOLDOWN_FINISHED "EVENT_GUILD_ALLOD_TELEPORT_COOLDOWN_FINISHED"
---@alias EVENT_GUILD_ALLOD_TELEPORT_COOLDOWN_STARTED "EVENT_GUILD_ALLOD_TELEPORT_COOLDOWN_STARTED"

---@overload fun(eventFunction: fun(data: { allodId: ObjectId | nil, allod: WString, attacker: WString, deffender: WString }), sysEventName: EVENT_GUILD_ALLOD_ATTACK_FAILED)
---@overload fun(eventFunction: fun(data: { allodId: ObjectId | nil, allod: WString, attacker: WString, deffender: WString }), sysEventName: EVENT_GUILD_ALLOD_ATTACK_SUCCESSFUL)
---@overload fun(eventFunction: fun(data: { allodId: ObjectId | nil, allod: WString, newOwner: WString, oldOwner: WString }), sysEventName: EVENT_GUILD_ALLOD_OWNER_CHANGED)
---@overload fun(eventFunction: fun(data: { allodId: ObjectId }), sysEventName: EVENT_GUILD_ALLOD_TELEPORT_COOLDOWN_FINISHED)
---@overload fun(eventFunction: fun(data: { allodId: ObjectId, duration: integer, remaining: integer }), sysEventName: EVENT_GUILD_ALLOD_TELEPORT_COOLDOWN_STARTED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

