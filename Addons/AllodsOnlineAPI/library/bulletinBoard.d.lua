---@meta

---@class bulletinBoard
bulletinBoard = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_BULLETIN_BOARD_CHANGED "EVENT_BULLETIN_BOARD_CHANGED"
---@alias EVENT_BULLETIN_BOARD_OPERATION_IN_PROGRESS_CHANGED "EVENT_BULLETIN_BOARD_OPERATION_IN_PROGRESS_CHANGED"
---@alias EVENT_BULLETIN_BOARD_POST_ADDED "EVENT_BULLETIN_BOARD_POST_ADDED"
---@alias EVENT_BULLETIN_BOARD_POST_CHANGED "EVENT_BULLETIN_BOARD_POST_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_BULLETIN_BOARD_CHANGED)
---@overload fun(eventFunction: fun(data: { postId: integer }), sysEventName: EVENT_BULLETIN_BOARD_OPERATION_IN_PROGRESS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: integer }), sysEventName: EVENT_BULLETIN_BOARD_POST_ADDED)
---@overload fun(eventFunction: fun(data: { id: integer }), sysEventName: EVENT_BULLETIN_BOARD_POST_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param postTypeId PostTypeId
---@return { isCanAdd: boolean, isMsgLimitReached: boolean, sysCause: ENUM_ActionFailCause, isInNotPredictate: boolean }
function bulletinBoard.CanAddText( postTypeId ) end

---@param postId integer
---@return nil | { postId: integer, isPremium: boolean, name: WString, guild?: WString, isOnline: boolean, level: integer, raceClass: nil | table, sex: nil | table, zoneName: WString, text: WString, lifeTimeMs: number | nil, lifeTime: nil | { d: integer, h: integer, m: integer, s: integer }, remainingTimeMs: number | nil, remainingTime: { d: integer, h: integer, m: integer, s: integer } }
function bulletinBoard.GetPost( postId ) end

---@return nil | { currencyId: CurrencyId, currencyValue: integer }
function bulletinBoard.GetPostPriceInfo() end

---@return table<integer, { postTypeId: PostTypeId, sysName: string, name: WString, description: WString, lengthLimit: integer }>
function bulletinBoard.GetSectionInfos() end

---@param postId integer
---@return WString | nil
function bulletinBoard.GetText( postId ) end

---@return boolean
function bulletinBoard.IsOperationInProgress() end

---@param postTypeId PostTypeId
---@return nil | table<integer, integer>
function bulletinBoard.ReadSection( postTypeId ) end