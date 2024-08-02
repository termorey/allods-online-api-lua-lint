---@meta

---@class medalsLib
medalsLib = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_AVATAR_MEDAL_FINISHED "EVENT_AVATAR_MEDAL_FINISHED"
---@alias EVENT_INSPECT_AVATAR_MEDALS_RESULT "EVENT_INSPECT_AVATAR_MEDALS_RESULT"
---@alias EVENT_MEDAL_ADDED "EVENT_MEDAL_ADDED"
---@alias EVENT_MEDAL_PROGRESS_CHANGED "EVENT_MEDAL_PROGRESS_CHANGED"
---@alias EVENT_MEDAL_REMOVED "EVENT_MEDAL_REMOVED"
---@alias EVENT_MEDALS_CHANGED "EVENT_MEDALS_CHANGED"
---@alias EVENT_MEDALS_SEARCH_RESULTS "EVENT_MEDALS_SEARCH_RESULTS"
---@alias EVENT_MEMBER_MEDAL_FINISHED "EVENT_MEMBER_MEDAL_FINISHED"

---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_AVATAR_MEDAL_FINISHED)
---@overload fun(eventFunction: fun(data: { unitId: ObjectId, medals: table<integer, ObjectId> }), sysEventName: EVENT_INSPECT_AVATAR_MEDALS_RESULT)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_MEDAL_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_MEDAL_PROGRESS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_MEDAL_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MEDALS_CHANGED)
---@overload fun(eventFunction: fun(data: table<integer, MedalRankId>), sysEventName: EVENT_MEDALS_SEARCH_RESULTS)
---@overload fun(eventFunction: fun(data: { id: ObjectId, avatarName: WString }), sysEventName: EVENT_MEMBER_MEDAL_FINISHED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return nil | table<integer, { name: WString, subCategories: table<integer, { name: WString }> }>
function medalsLib.GetCategories() end

---@param id ObjectId
---@return nil | MedalInfo
function medalsLib.GetMedalInfo( id ) end
---@alias MedalInfo { id: ObjectId, medalId: MedalId, medalRankId: MedalRankId, name: WString, description: WString, image: TextureId, canLink: boolean, finishDate: number, categoryIndex: integer, subCategoryIndex: integer, progress: { value: number, title: WString | nil, dressCollection: nil | table<integer, { slot: DRESS_SLOT, description: WString, success: boolean }>, medalCollection: nil | table<integer, { medal: MedalId, success: boolean }>, remortCollection: nil | table<integer, { class: CharacterClassId, success: boolean }>, unlockCollection: nil | table<integer, { unlock: UnlockId, success: boolean }> } }

---@param medalId ObjectId
---@return nil | table<integer, { completeProgress: integer, name: WString, description: WString, image: TextureId, score: integer, reward: { description: WString } }>
function medalsLib.GetMedalRanks( medalId ) end

---@return nil | table<integer, ObjectId>
function medalsLib.GetMedals() end

---@param avatarId ObjectId
function medalsLib.InspectAvatarMedals( avatarId ) end

---@param name WString
---@param limit? integer | nil
function medalsLib.SearchMedals( name, limit ) end