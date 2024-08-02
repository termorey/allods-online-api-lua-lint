---@meta

--[[ ENUMS --]]

---@alias ENUM_QuestCategory_Common unknown - обычный
---@alias ENUM_QuestCategory_Compendium unknown - для компендиума
---@alias ENUM_QuestCategory ENUM_QuestCategory_Common | ENUM_QuestCategory_Compendium

---@alias QUEST_FIND_NEXT_QUEST_MODE_ZONE unknown # искать в пределах зоны, в которой находится аватар
---@alias QUEST_FIND_NEXT_QUEST_MODE_ALL unknown # искать во всём игровом мире
---@alias QUEST_FIND_NEXT_QUEST_MODE QUEST_FIND_NEXT_QUEST_MODE_ZONE | QUEST_FIND_NEXT_QUEST_MODE_ALL

---@alias QUEST_TYPE_SOLO unknown - Квест - задание
---@alias QUEST_TYPE_PARTY unknown - Групповой - миссия
---@alias QUEST_TYPE_RAID unknown - В рейд инстанс - кампания
---@alias QUEST_TYPE_MINI_RAID unknown - В мини рейд инстанс - кампания
---@alias QUEST_TYPE QUEST_TYPE_SOLO | QUEST_TYPE_PARTY | QUEST_TYPE_RAID | QUEST_TYPE_MINI_RAID

---@alias ACCEPT_ERROR_SUCCESS number
---@alias ACCEPT_ERROR_FAIL_SYSTEM number
---@alias ACCEPT_ERROR_QUEST_IS_STARTED number
---@alias ACCEPT_ERROR_QUEST_IS_FINISHED number
---@alias ACCEPT_ERROR_QUEST_ON_COOLDOWN number
---@alias ACCEPT_ERROR_TOO_MANY_ACTIVE_QUESTS number
---@alias ACCEPT_ERROR_TO_MANY_QUESTS_ON_COOLDOWN number
---@alias ACCEPT_ERROR_LOW_AVATAR_LEVEL number
---@alias ACCEPT_ERROR ACCEPT_ERROR_SUCCESS | ACCEPT_ERROR_FAIL_SYSTEM | ACCEPT_ERROR_QUEST_IS_STARTED | ACCEPT_ERROR_QUEST_IS_FINISHED | ACCEPT_ERROR_QUEST_ON_COOLDOWN | ACCEPT_ERROR_TOO_MANY_ACTIVE_QUESTS | ACCEPT_ERROR_TO_MANY_QUESTS_ON_COOLDOWN | ACCEPT_ERROR_LOW_AVATAR_LEVEL

---@alias QuestShareResult_Success integer
---@alias QuestShareResult_NoQuest integer
---@alias QuestShareResult_NoInvite integer
---@alias QuestShareResult_Decline integer
---@alias QuestShareResult_QuestFailed integer
---@alias QuestShareResult_NotPossible integer
---@alias QuestShareResult_Cancel integer
---@alias QuestShareResult QuestShareResult_Success | QuestShareResult_NoQuest | QuestShareResult_NoInvite | QuestShareResult_Decline | QuestShareResult_QuestFailed | QuestShareResult_NotPossible | QuestShareResult_Cancel

--[[ EVENTS --]]

---@alias EVENT_CURRENT_QUEST_CHANGED "EVENT_CURRENT_QUEST_CHANGED"
---@alias EVENT_QUEST_ABANDONED "EVENT_QUEST_ABANDONED"
---@alias EVENT_QUEST_ACCEPT_ERROR "EVENT_QUEST_ACCEPT_ERROR"
---@alias EVENT_QUEST_BOOK_CHANGED "EVENT_QUEST_BOOK_CHANGED"
---@alias EVENT_QUEST_BOOK_LIMITS_CHANGED "EVENT_QUEST_BOOK_LIMITS_CHANGED"
---@alias EVENT_QUEST_COMPLETED "EVENT_QUEST_COMPLETED"
---@alias EVENT_QUEST_DISCARDED "EVENT_QUEST_DISCARDED"
---@alias EVENT_QUEST_FAILED "EVENT_QUEST_FAILED"
---@alias EVENT_QUEST_FIND_NEXT_RESULT "EVENT_QUEST_FIND_NEXT_RESULT"
---@alias EVENT_QUEST_FINISH_FAILED_NO_SPACE "EVENT_QUEST_FINISH_FAILED_NO_SPACE"
---@alias EVENT_QUEST_MARK_UPDATED "EVENT_QUEST_MARK_UPDATED"
---@alias EVENT_QUEST_OBJECTIVE_UPDATED "EVENT_QUEST_OBJECTIVE_UPDATED"
---@alias EVENT_QUEST_READY_TO_RETURN_CHANGED "EVENT_QUEST_READY_TO_RETURN_CHANGED"
---@alias EVENT_QUEST_RECEIVED "EVENT_QUEST_RECEIVED"
---@alias EVENT_QUEST_REWARD_UPDATED "EVENT_QUEST_REWARD_UPDATED"
---@alias EVENT_QUEST_SHARE_INVITATION "EVENT_QUEST_SHARE_INVITATION"
---@alias EVENT_QUEST_SHARE_INVITATION_RESULT "EVENT_QUEST_SHARE_INVITATION_RESULT"
---@alias EVENT_QUEST_SHARE_INVITATION_TIMEOUT "EVENT_QUEST_SHARE_INVITATION_TIMEOUT"
---@alias EVENT_QUEST_START_FAILED_LOG_FULL "EVENT_QUEST_START_FAILED_LOG_FULL"
---@alias EVENT_QUEST_START_FAILED_NO_SPACE "EVENT_QUEST_START_FAILED_NO_SPACE"
---@alias EVENT_QUEST_TIMER_FINISHED "EVENT_QUEST_TIMER_FINISHED"
---@alias EVENT_QUEST_TIMER_UPDATED "EVENT_QUEST_TIMER_UPDATED"
---@alias EVENT_QUEST_UPDATED "EVENT_QUEST_UPDATED"

---@overload fun(eventFunction: fun(data: { questId: QuestId | nil }), sysEventName: EVENT_CURRENT_QUEST_CHANGED)
---@overload fun(eventFunction: fun(data: { name: WString }), sysEventName: EVENT_QUEST_ABANDONED)
---@overload fun(eventFunction: fun(data: { result: ACCEPT_ERROR }), sysEventName: EVENT_QUEST_ACCEPT_ERROR)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_QUEST_BOOK_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_QUEST_BOOK_LIMITS_CHANGED)
---@overload fun(eventFunction: fun(data: { questId: QuestId }), sysEventName: EVENT_QUEST_COMPLETED)
---@overload fun(eventFunction: fun(data: { name: WString }), sysEventName: EVENT_QUEST_DISCARDED)
---@overload fun(eventFunction: fun(data: { questId: QuestId }), sysEventName: EVENT_QUEST_FAILED)
---@overload fun(eventFunction: fun(data: { questId: QuestId | nil }), sysEventName: EVENT_QUEST_FIND_NEXT_RESULT)
---@overload fun(eventFunction: fun(data: { questId: QuestId, pocket: integer | nil }), sysEventName: EVENT_QUEST_FINISH_FAILED_NO_SPACE)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_QUEST_MARK_UPDATED)
---@overload fun(eventFunction: fun(data: { questId: QuestId, objectiveId: ObjectId, objectiveNumber: integer }), sysEventName: EVENT_QUEST_OBJECTIVE_UPDATED)
---@overload fun(eventFunction: fun(data: { questId: QuestId }), sysEventName: EVENT_QUEST_READY_TO_RETURN_CHANGED)
---@overload fun(eventFunction: fun(data: { questId: QuestId }), sysEventName: EVENT_QUEST_RECEIVED)
---@overload fun(eventFunction: fun(data: { questId: QuestId }), sysEventName: EVENT_QUEST_REWARD_UPDATED)
---@overload fun(eventFunction: fun(data: { shareID: ObjectId }), sysEventName: EVENT_QUEST_SHARE_INVITATION)
---@overload fun(eventFunction: fun(data: { questName: WString, sharerName: WString, sharerId: ObjectId, result: QuestShareResult }), sysEventName: EVENT_QUEST_SHARE_INVITATION_RESULT)
---@overload fun(eventFunction: fun(data: { questName: WString, sharerName: WString }), sysEventName: EVENT_QUEST_SHARE_INVITATION_TIMEOUT)
---@overload fun(eventFunction: fun(data: { questId: QuestId }), sysEventName: EVENT_QUEST_START_FAILED_LOG_FULL)
---@overload fun(eventFunction: fun(data: { questId: QuestId, pocket: integer | nil }), sysEventName: EVENT_QUEST_START_FAILED_NO_SPACE)
---@overload fun(eventFunction: fun(data: { questId: QuestId }), sysEventName: EVENT_QUEST_TIMER_FINISHED)
---@overload fun(eventFunction: fun(data: { questId: QuestId, durationMs: integer, timeLeftMs: integer }), sysEventName: EVENT_QUEST_TIMER_UPDATED)
---@overload fun(eventFunction: fun(data: { questId: QuestId }), sysEventName: EVENT_QUEST_UPDATED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

