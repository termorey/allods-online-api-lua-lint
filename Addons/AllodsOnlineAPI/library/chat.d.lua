---@meta

--[[ ENUMS --]]

---@alias ENUM_ChatFailedType_Mute "ENUM_ChatFailedType_Mute"
---@alias ENUM_ChatFailedType_InternalError "ENUM_ChatFailedType_InternalError"
---@alias ENUM_ChatFailedType_Silence "ENUM_ChatFailedType_Silence"
---@alias ENUM_ChatFailedType_NoPoints "ENUM_ChatFailedType_NoPoints"
---@alias ENUM_ChatFailedType_EnemyFaction "ENUM_ChatFailedType_EnemyFaction"
---@alias ENUM_ChatFailedType_Ignored "ENUM_ChatFailedType_Ignored"
---@alias ENUM_ChatFailedType ENUM_ChatFailedType_Mute | ENUM_ChatFailedType_InternalError | ENUM_ChatFailedType_Silence | ENUM_ChatFailedType_NoPoints | ENUM_ChatFailedType_EnemyFaction | ENUM_ChatFailedType_Ignored

--[[ EVENTS --]]

---@alias EVENT_CANT_SEND_CHAT_BY_DELAY "EVENT_CANT_SEND_CHAT_BY_DELAY"
---@alias EVENT_CHAT_AVATAR_MUTED "EVENT_CHAT_AVATAR_MUTED"
---@alias EVENT_CHAT_MESSAGE "EVENT_CHAT_MESSAGE"
---@alias EVENT_CHAT_MESSAGE_IS_FLOOD "EVENT_CHAT_MESSAGE_IS_FLOOD"
---@alias EVENT_CHAT_MESSAGE_REJECTED "EVENT_CHAT_MESSAGE_REJECTED"
---@alias EVENT_CHAT_MESSAGE_WITH_OBJECTS "EVENT_CHAT_MESSAGE_WITH_OBJECTS"
---@alias EVENT_CHAT_NAMED_ERROR "EVENT_CHAT_NAMED_ERROR"
---@alias EVENT_CHAT_SENT_TO_ALT "EVENT_CHAT_SENT_TO_ALT"
---@alias EVENT_CUSTOM_EMOTE "EVENT_CUSTOM_EMOTE"
---@alias EVENT_GLOBAL_NOTICE "EVENT_GLOBAL_NOTICE"
---@alias EVENT_PLAYED_COMMAND_RESPONSE "EVENT_PLAYED_COMMAND_RESPONSE"
---@alias EVENT_SLASH_COMMAND_FAILED "EVENT_SLASH_COMMAND_FAILED"
---@alias EVENT_SLASH_COMMAND_PREFIX_CHANGED "EVENT_SLASH_COMMAND_PREFIX_CHANGED"
---@alias EVENT_UNKNOWN_SLASH_COMMAND "EVENT_UNKNOWN_SLASH_COMMAND"
---@alias EVENT_VETERANRANKS_COMMAND_RESPONSE "EVENT_VETERANRANKS_COMMAND_RESPONSE"
---@alias EVENT_WHISPER_FAILED "EVENT_WHISPER_FAILED"

---@overload fun(eventFunction: fun(data: { delayMs: integer }), sysEventName: EVENT_CANT_SEND_CHAT_BY_DELAY)
---@overload fun(eventFunction: fun(data: { reason: WString, durationMinutes: integer, time: { h: integer, m: integer, s: integer } }), sysEventName: EVENT_CHAT_AVATAR_MUTED)
---@overload fun(eventFunction: fun(data: { sender: WString, shard: WString, senderUniqueId: UniqueId | nil, senderId: ObjectId, chatType: CHAT_TYPE, isEcho: boolean, recipient?: WString, isAlive:boolean, msg: WString, spamWeight: integer }), sysEventName: EVENT_CHAT_MESSAGE)
---@overload fun(eventFunction: fun(data: { cooldownMs: integer }), sysEventName: EVENT_CHAT_MESSAGE_IS_FLOOD)
---@overload fun(eventFunction: fun(data: { sysReason: ENUM_ChatFailedType, time: { h: integer, m: integer, s: integer }, expiredTime?: { d: integer, h: integer, m: integer, s: integer } }), sysEventName: EVENT_CHAT_MESSAGE_REJECTED)
---@overload fun(eventFunction: fun(data: { sender: WString, shard: WString, senderUniqueId: UniqueId | nil, senderId: ObjectId | nil, recipientUniqueId: UniqueId | nil, recipientId: ObjectId | nil, chatType: CHAT_TYPE, isEcho: boolean, time: { h: integer, m: integer, s: integer }, recipient?: WString, isAlive: boolean, messages: table<integer, { text: WString | nil, spamWeight: integer | nil, item: ValuedObject | nil, medal: ValuedObject | nil }> }), sysEventName: EVENT_CHAT_MESSAGE_WITH_OBJECTS)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_AccessionResult }), sysEventName: EVENT_CHAT_NAMED_ERROR)
---@overload fun(eventFunction: fun(data: { altName: WString }), sysEventName: EVENT_CHAT_SENT_TO_ALT)
---@overload fun(eventFunction: fun(data: { id: ObjectId, targetId: ObjectId | nil, text: WString, isAlive: boolean }), sysEventName: EVENT_CUSTOM_EMOTE)
---@overload fun(eventFunction: fun(data: { msg: WString }), sysEventName: EVENT_GLOBAL_NOTICE)
---@overload fun(eventFunction: fun(data: { time: { d: number, h: number, m: number, s: number } }), sysEventName: EVENT_PLAYED_COMMAND_RESPONSE)
---@overload fun(eventFunction: fun(data: { name: WString, sysReason: ENUM_SLASH_COMMAND }), sysEventName: EVENT_SLASH_COMMAND_FAILED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_SLASH_COMMAND_PREFIX_CHANGED)
---@overload fun(eventFunction: fun(data: { text: WString }), sysEventName: EVENT_UNKNOWN_SLASH_COMMAND)
---@overload fun(eventFunction: fun(data: { value: integer, rewards: table<integer, { value: integer, name: WString }> }), sysEventName: EVENT_VETERANRANKS_COMMAND_RESPONSE)
---@overload fun(eventFunction: fun(data: { name: WString, sysReason: ENUM_EnumRequestAddressByNameFailCause }), sysEventName: EVENT_WHISPER_FAILED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

