---@meta

---@class questionLib
questionLib = {}

--[[ ENUMS --]]

---@alias ENUM_Question_ShowResultsType_None unknown  -- результаты выводить не нужно
---@alias ENUM_Question_ShowResultsType_All unknown  -- результаты нужно выводить
---@alias ENUM_Question_ShowResultsType_Anonymous unknown  -- результаты нужно выводить анонимно
---@alias ENUM_Question_ShowResultsType ENUM_Question_ShowResultsType_None | ENUM_Question_ShowResultsType_All | ENUM_Question_ShowResultsType_Anonymous

---@alias ENUM_QuizQuestionType_UNSPECIFIC unknown  -- Произвольный опрос
---@alias ENUM_QuizQuestionType_VOTE_KICK unknown  -- Голосование за кик
---@alias ENUM_QuizQuestionType ENUM_QuizQuestionType_UNSPECIFIC | ENUM_QuizQuestionType_VOTE_KICK

--[[ EVENTS --]]

---@alias EVENT_QUESTION_ADDED "EVENT_QUESTION_ADDED"
---@alias EVENT_QUESTION_REMOVED "EVENT_QUESTION_REMOVED"
---@alias EVENT_QUESTION_RESULTS_CHANGED "EVENT_QUESTION_RESULTS_CHANGED"

---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_QUESTION_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_QUESTION_REMOVED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_QUESTION_RESULTS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param questionId ObjectId
function questionLib.Cancel( questionId ) end

---@param questionId ObjectId
---@return nil | { id: ObjectId, isObserver: boolean, type: string, showResult: ENUM_Question_ShowResultsType, clientData: nil | table, questionData: { questionCustomData: nil | table }, remainingTimeMs: integer | nil, endTimeMs: integer | nil, results: nil | table<integer, { playerId: ObjectId | nil, playerName: WString | nil, clientData: table }> }
function questionLib.GetInfo( questionId ) end

---@return table<integer, ObjectId>
function questionLib.GetQuestions() end

---@param questionId ObjectId
---@param result table
function questionLib.SendData( questionId, result ) end