---@meta

---@class tutorialLib
tutorialLib = {}

--[[ ENUMS --]]

---@alias ENUM_TutorialRunType_ClientData number
---@alias ENUM_TutorialRunType_LevelUp number
---@alias ENUM_TutorialRunType_Custom number
---@alias ENUM_TutorialRunType ENUM_TutorialRunType_ClientData | ENUM_TutorialRunType_LevelUp | ENUM_TutorialRunType_Custom

---@alias ENUM_TutorialViewType_Window number
---@alias ENUM_TutorialViewType_BlockerWindow number
---@alias ENUM_TutorialViewType_PopUp number
---@alias ENUM_TutorialViewType_Custom number
---@alias ENUM_TutorialViewType ENUM_TutorialViewType_Window | ENUM_TutorialViewType_BlockerWindow | ENUM_TutorialViewType_PopUp | ENUM_TutorialViewType_Custom

--[[ EVENTS --]]

---@alias EVENT_TUTORIAL_REQUEST "EVENT_TUTORIAL_REQUEST"
---@alias EVENT_TUTORIAL_SEARCH_RESULT "EVENT_TUTORIAL_SEARCH_RESULT"

---@overload fun(eventFunction: fun(data: { id: TutorialId }), sysEventName: EVENT_TUTORIAL_REQUEST)
---@overload fun(eventFunction: fun(data: { id: TutorialId, request: WString, tutorials: table<integer, TutorialId>, categories: table<integer, TutorialCategoryId> }), sysEventName: EVENT_TUTORIAL_SEARCH_RESULT)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return nil | table<integer, TutorialCategoryId>
function tutorialLib.GetCategories() end

---@param id TutorialCategoryId
---@return nil | table<integer, TutorialId>
function tutorialLib.GetCategoryContent( id ) end

---@param id TutorialCategoryId
---@return { name: WString, sysName: string, isHidden: boolean }
function tutorialLib.GetCategoryInfo( id ) end

---@param sysName string | nil
---@return TutorialId | nil
function tutorialLib.GetTutorialBySysName( sysName ) end

---@param id TutorialId
---@return { name: WString | nil, text: ValuedText | nil, shortText: ValuedText | nil, image: TextureId | nil, link: ValuedText | nil, bind: nil | { section: string, name: string }, popUps: nil | table<integer, { text: ValuedText, target: string }> }
function tutorialLib.GetTutorialContent( id ) end

---@param id TutorialId
---@return { sysName: string | nil, viewType: ENUM_TutorialViewType, runType: ENUM_TutorialRunType, isForced: boolean, isUnlearnable: boolean, minLevel: integer, maxLevel: integer, nextTutorial: TutorialId | nil }
function tutorialLib.GetTutorialInfo( id ) end

---@param id TutorialId
---@return WString | nil
function tutorialLib.GetTutorialName( id ) end

---@param request WString
function tutorialLib.SearchTutorial( request ) end