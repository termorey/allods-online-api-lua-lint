---@meta

---@class social
social = {}

--[[ ENUMS --]]

---@alias ENUM_AvatarFriendIgnoreListsError
---| "ENUM_AvatarFriendIgnoreListsError_ServiceNotReady"
---| "ENUM_AvatarFriendIgnoreListsError_EntryAlreadyExists"
---| "ENUM_AvatarFriendIgnoreListsError_NoSuchEntry"
---| "ENUM_AvatarFriendIgnoreListsError_InternalError"
---| "ENUM_AvatarFriendIgnoreListsError_AvatarNotFound"
---| "ENUM_AvatarFriendIgnoreListsError_ListOverflow"

---@alias ENUM_CreateRevivalRollResultStatus
---| "ENUM_CreateRevivalRollResultStatus_Success"
---| "ENUM_CreateRevivalRollResultStatus_InternalError"
---| "ENUM_CreateRevivalRollResultStatus_AccountNotFound"
---| "ENUM_CreateRevivalRollResultStatus_WrongReferOwner"
---| "ENUM_CreateRevivalRollResultStatus_ActiveAccount"
---| "ENUM_CreateRevivalRollResultStatus_AlreadySent"
---| "ENUM_CreateRevivalRollResultStatus_LimitExceeded"
---| "ENUM_CreateRevivalRollResultStatus_WrongAvatarLevel"
---| "ENUM_CreateRevivalRollResultStatus_NoContentKey"

--[[ EVENTS --]]

---@alias EVENT_AVATAR_ADDED_TO_FRIEND_LIST "EVENT_AVATAR_ADDED_TO_FRIEND_LIST"
---@alias EVENT_AVATAR_FRIEND_ADDED "EVENT_AVATAR_FRIEND_ADDED"
---@alias EVENT_AVATAR_FRIEND_ALT_NAME_CHANGED "EVENT_AVATAR_FRIEND_ALT_NAME_CHANGED"
---@alias EVENT_AVATAR_FRIEND_DESCRIPTION_CHANGED "EVENT_AVATAR_FRIEND_DESCRIPTION_CHANGED"
---@alias EVENT_AVATAR_FRIEND_IGNORE_LISTS_ERROR "EVENT_AVATAR_FRIEND_IGNORE_LISTS_ERROR"
---@alias EVENT_AVATAR_FRIEND_INFO_CHANGED "EVENT_AVATAR_FRIEND_INFO_CHANGED"
---@alias EVENT_AVATAR_FRIEND_LEVEL_CHANGED "EVENT_AVATAR_FRIEND_LEVEL_CHANGED"
---@alias EVENT_AVATAR_FRIEND_LIST_CHANGED "EVENT_AVATAR_FRIEND_LIST_CHANGED"
---@alias EVENT_AVATAR_FRIEND_LIST_LOADED "EVENT_AVATAR_FRIEND_LIST_LOADED"
---@alias EVENT_AVATAR_FRIEND_MOOD_CHANGED "EVENT_AVATAR_FRIEND_MOOD_CHANGED"
---@alias EVENT_AVATAR_FRIEND_MUTUAL_CHANGED "EVENT_AVATAR_FRIEND_MUTUAL_CHANGED"
---@alias EVENT_AVATAR_FRIEND_ONLINE_CHANGED "EVENT_AVATAR_FRIEND_ONLINE_CHANGED"
---@alias EVENT_AVATAR_FRIEND_REMOVED "EVENT_AVATAR_FRIEND_REMOVED"
---@alias EVENT_AVATAR_FRIEND_SEX_CHANGED "EVENT_AVATAR_FRIEND_SEX_CHANGED"
---@alias EVENT_AVATAR_FRIEND_ZONE_CHANGED "EVENT_AVATAR_FRIEND_ZONE_CHANGED"
---@alias EVENT_AVATAR_IGNORE_ADDED "EVENT_AVATAR_IGNORE_ADDED"
---@alias EVENT_AVATAR_IGNORE_DESCRIPTION_CHANGED "EVENT_AVATAR_IGNORE_DESCRIPTION_CHANGED"
---@alias EVENT_AVATAR_IGNORE_LIST_CHANGED "EVENT_AVATAR_IGNORE_LIST_CHANGED"
---@alias EVENT_AVATAR_IGNORE_LIST_LOADED "EVENT_AVATAR_IGNORE_LIST_LOADED"
---@alias EVENT_AVATAR_IGNORE_REMOVED "EVENT_AVATAR_IGNORE_REMOVED"
---@alias EVENT_BEST_FRIEND_RETURN_STATE_CHANGED "EVENT_BEST_FRIEND_RETURN_STATE_CHANGED"
---@alias EVENT_BEST_FRIEND_TELEPORT_SPELL_CHANGED "EVENT_BEST_FRIEND_TELEPORT_SPELL_CHANGED"
---@alias EVENT_BEST_FRIEND_TELEPORT_SPELL_EFFECT "EVENT_BEST_FRIEND_TELEPORT_SPELL_EFFECT"
---@alias EVENT_BEST_FRIEND_TELEPORT_STATE_CHANGED "EVENT_BEST_FRIEND_TELEPORT_STATE_CHANGED"
---@alias EVENT_REVIVAL_ROLL_RESULT "EVENT_REVIVAL_ROLL_RESULT"
---@alias EVENT_REVIVALS_CHANGED "EVENT_REVIVALS_CHANGED"

---@overload fun(eventFunction: fun(data: { name: WString }), sysEventName: EVENT_AVATAR_ADDED_TO_FRIEND_LIST)
---@overload fun(eventFunction: fun(data: { name: WString }), sysEventName: EVENT_AVATAR_FRIEND_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, altName: WString }), sysEventName: EVENT_AVATAR_FRIEND_ALT_NAME_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_AVATAR_FRIEND_DESCRIPTION_CHANGED)
---@overload fun(eventFunction: fun(data: { sysError: ENUM_AvatarFriendIgnoreListsError }), sysEventName: EVENT_AVATAR_FRIEND_IGNORE_LISTS_ERROR)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString }), sysEventName: EVENT_AVATAR_FRIEND_INFO_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, level: integer }), sysEventName: EVENT_AVATAR_FRIEND_LEVEL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_FRIEND_LIST_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_FRIEND_LIST_LOADED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_AVATAR_FRIEND_MOOD_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, isMutual: boolean }), sysEventName: EVENT_AVATAR_FRIEND_MUTUAL_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, isOnline: boolean, sysStatus: ENUM_AvatarOnlineStatus }), sysEventName: EVENT_AVATAR_FRIEND_ONLINE_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString }), sysEventName: EVENT_AVATAR_FRIEND_REMOVED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_AVATAR_FRIEND_SEX_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString, mapId: ObjectId | nil }), sysEventName: EVENT_AVATAR_FRIEND_ZONE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId, name: WString }), sysEventName: EVENT_AVATAR_IGNORE_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_AVATAR_IGNORE_DESCRIPTION_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_IGNORE_LIST_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_IGNORE_LIST_LOADED)
---@overload fun(eventFunction: fun(data: { name: WString }), sysEventName: EVENT_AVATAR_IGNORE_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_BEST_FRIEND_RETURN_STATE_CHANGED)
---@overload fun(eventFunction: fun(data: { id: SpellId }), sysEventName: EVENT_BEST_FRIEND_TELEPORT_SPELL_CHANGED)
---@overload fun(eventFunction: fun(data: { effect: EFFECT_TYPE, id: SpellId } | { effect: EFFECT_TYPE_SPELL_ACTIVE_STATE_CHANGED, id: SpellId, duration: integer, remaining: integer } | { effect: EFFECT_TYPE_SPELL_PREPARED, id: SpellId, prepared: boolean } | { effect: EFFECT_TYPE_SPELL_ACTIVE_STATE_CHANGED, id: SpellId, isActive: boolean, objectId: ObjectId | nil }), sysEventName: EVENT_BEST_FRIEND_TELEPORT_SPELL_EFFECT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_BEST_FRIEND_TELEPORT_STATE_CHANGED)
---@overload fun(eventFunction: fun(data: { status: ENUM_CreateRevivalRollResultStatus }), sysEventName: EVENT_REVIVAL_ROLL_RESULT)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_REVIVALS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param name WString
---@param description WString
function social.AddFriend( name, description ) end

---@param name WString
---@param description WString
function social.AddIgnore( name, description ) end

---@return boolean
function social.CanReturn() end

---@param unitId ObjectId
---@return boolean
function social.CanSocialize( unitId ) end

---@return boolean
function social.CanTeleport() end

---@param friendId ObjectId
function social.EndFriendship( friendId ) end

---@param mountId ObjectId
function social.GetBackMount( mountId ) end

---@param name WString
---@return ObjectId | nil
function social.GetFriend( name ) end

---@param friendId ObjectId
---@return nil | { id: ObjectId, isBestFriend: boolean, isSimpleFriend: boolean, name: WString, altName: WString, description: WString, sysOnlineStatus: ENUM_AvatarOnlineStatus, isLogged: boolean, isAlt: boolean, altName: WString, level: integer, lastOnlineTimeMs: number, raceClass: LuaRaceClassInfoPart | nil, sex: LuaSexInfoPart | nil, mapId: ObjectId | nil, zoneName: WString, moodEmote: ObjectId | nil, isSpouse: boolean }
function social.GetFriendInfo( friendId ) end

---@return table<integer, ObjectId>
function social.GetFriendList() end

---@return nil | { bestFriendsLimit: integer, maxMountGrade: integer }
function social.GetFriendshipInfo() end

---@param ignoreId ObjectId
---@return nil | { id: ObjectId, name: WString, description: WString }
function social.GetIgnoreInfo( ignoreId ) end

---@return table<integer, ObjectId>
function social.GetIgnoreList() end

---@return nil | { maxActiveRolls: integer }
function social.GetRevivalRollInfo() end

---@return SpellId
function social.GetTeleportSpell() end

---@param mountId ObjectId
function social.GiveBackMount( mountId ) end

---@return boolean
function social.IsFriendListLoaded() end

---@return boolean
function social.IsIgnoreListLoaded() end

---@param friendId ObjectId
---@param mountId ObjectId
function social.LendMount( friendId, mountId ) end

---@param name WString
function social.RemoveFriend( name ) end

---@param name WString
function social.RemoveIgnore( name ) end

function social.ReturnFromBestFriend() end

---@param friendId ObjectId
function social.TeleportToBestFriend( friendId ) end