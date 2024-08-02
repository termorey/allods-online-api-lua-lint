---@meta

---@class objects
objects = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_TRACK_ADDED "EVENT_TRACK_ADDED"
---@alias EVENT_TRACK_OBJECT_CHANGED "EVENT_TRACK_OBJECT_CHANGED"
---@alias EVENT_TRACK_POS_CHANGED "EVENT_TRACK_POS_CHANGED"
---@alias EVENT_TRACK_REMOVED "EVENT_TRACK_REMOVED"

---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRACK_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRACK_OBJECT_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRACK_POS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_TRACK_REMOVED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param trackId ObjectId
---@return nil | { id: ObjectId, objectId: ObjectId | nil, playerName: WString, text: WString, sysName: string, characterClass: CharacterClassId | nil, level: integer | 0, position: nil | GamePosition, durationMs: integer, remainingMs: integer, mutation: nil | MutationInfo, image?: TextureId | nil }
function objects.GetTrackInfo( trackId ) end

---@return table<integer, ObjectId>
function objects.GetTracks() end