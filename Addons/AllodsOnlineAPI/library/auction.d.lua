---@meta

---@class auction
auction = {}

--[[ ENUMS --]]

---@alias ENUM_AuctionBidResultMsgResult
---| "ENUM_AuctionBidResultMsgResult_SUCCESS" # удачно
---| "ENUM_AuctionBidResultMsgResult_ERROR" # произошла какая-то ошибка
---| "ENUM_AuctionBidResultMsgResult_NOMONEY" # не хватает денег для ставки
---| "ENUM_AuctionBidResultMsgResult_OLDVERSION" # информация об этом аукционе устарела
---| "ENUM_AuctionBidResultMsgResult_SAMEUSER" # игрок не может выкупать вещь у себя самого
---| "ENUM_AuctionBidResultMsgResult_NOTFOUND" # лот пропал, возможно, он был выкуплен либо снят с продажи

---@alias ENUM_AuctionCreateResultMsg
---| "ENUM_AuctionCreateResultMsgResult_SUCCESS"
---| "ENUM_AuctionCreateResultMsgResult_ERROR"
---| "ENUM_AuctionCreateResultMsgResult_NOITEM"
---| "ENUM_AuctionCreateResultMsgResult_NOMONEY"

---@alias AUCTION_CREATETIME_HOURS12 integer
---@alias AUCTION_CREATETIME_HOURS24 integer
---@alias AUCTION_CREATETIME_HOURS36 integer
---@alias AUCTION_CREATETIME_HOURS48 integer
---@alias AUCTION_CREATETIME AUCTION_CREATETIME_HOURS12 | AUCTION_CREATETIME_HOURS24 | AUCTION_CREATETIME_HOURS36 | AUCTION_CREATETIME_HOURS48 # время действия аукциона

---@alias ENUM_AuctionDescriptorParticipationStatus
---| "ENUM_AuctionDescriptorParticipationStatus_NONE"
---| "ENUM_AuctionDescriptorParticipationStatus_OWNER"
---| "ENUM_AuctionDescriptorParticipationStatus_WINNER"

---@alias ENUM_AuctionDiscardResultMsgResult
---| "ENUM_AuctionDiscardResultMsgResult_SUCCESS"
---| "ENUM_AuctionDiscardResultMsgResult_ERROR"
---| "ENUM_AuctionDiscardResultMsgResult_NOMONEY"
---| "ENUM_AuctionDiscardResultMsgResult_OLDVERSION"

---@alias ENUM_AuctionGetParamsResultMsgStatus
---| "ENUM_AuctionGetParamsResultMsgStatus_SUCCESS" # удачно
---| "ENUM_AuctionGetParamsResultMsgStatus_ERROR" # произошла какая-то ошибка

---@alias ENUM_AuctionGetResultMsgResult
---| "ENUM_AuctionGetResultMsgResult_SUCCESS"
---| "ENUM_AuctionGetResultMsgResult_NOTFOUND"
---| "ENUM_AuctionGetResultMsgResult_ERROR"

---@alias AUCTION_ORDERFIELD_NAME unknown
---@alias AUCTION_ORDERFIELD_CLASS unknown
---@alias AUCTION_ORDERFIELD_SLOT unknown
---@alias AUCTION_ORDERFIELD_RARETY unknown
---@alias AUCTION_ORDERFIELD_LEVEL unknown
---@alias AUCTION_ORDERFIELD_TYPE unknown
---@alias AUCTION_ORDERFIELD_BID unknown
---@alias AUCTION_ORDERFIELD_BUYOUT unknown
---@alias AUCTION_ORDERFIELD_LEFTTIME unknown
---@alias AUCTION_ORDERFIELD_NONE unknown
---@alias AUCTION_ORDERFIELD AUCTION_ORDERFIELD_NAME | AUCTION_ORDERFIELD_CLASS | AUCTION_ORDERFIELD_SLOT | AUCTION_ORDERFIELD_RARETY | AUCTION_ORDERFIELD_LEVEL | AUCTION_ORDERFIELD_TYPE | AUCTION_ORDERFIELD_BID | AUCTION_ORDERFIELD_BUYOUT | AUCTION_ORDERFIELD_LEFTTIME | AUCTION_ORDERFIELD_NONE

---@alias ENUM_AuctionSearchResultMsgResult
---| "ENUM_AuctionSearchResultMsgResult_SUCCESS"
---| "ENUM_AuctionSearchResultMsgResult_NOLANG"
---| "ENUM_AuctionSearchResultMsgResult_ERROR"

--[[ EVENTS --]]

---@alias EVENT_AUCTION_BID_RESULT "EVENT_AUCTION_BID_RESULT"
---@alias EVENT_AUCTION_CREATION_RESULT "EVENT_AUCTION_CREATION_RESULT"
---@alias EVENT_AUCTION_DISCARD_RESULT "EVENT_AUCTION_DISCARD_RESULT"
---@alias EVENT_AUCTION_PROPERTIES "EVENT_AUCTION_PROPERTIES"
---@alias EVENT_AUCTION_SEARCH_RESULT "EVENT_AUCTION_SEARCH_RESULT"
---@alias EVENT_AUCTION_UPDATE_RESULT "EVENT_AUCTION_UPDATE_RESULT"

---@overload fun(eventFunction: fun(data: { id: ObjectId, sysResult: ENUM_AuctionBidResultMsgResult }), sysEventName: EVENT_AUCTION_BID_RESULT)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_AuctionCreateResultMsg }), sysEventName: EVENT_AUCTION_CREATION_RESULT)
---@overload fun(eventFunction: fun(data: { id: ObjectId, sysResult: ENUM_AuctionDiscardResultMsgResult }), sysEventName: EVENT_AUCTION_DISCARD_RESULT)
---@overload fun(eventFunction: fun(data: { id: ObjectId, sysResult: ENUM_AuctionGetParamsResultMsgStatus }), sysEventName: EVENT_AUCTION_PROPERTIES)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_AuctionSearchResultMsgResult, totalPagesCount: integer }), sysEventName: EVENT_AUCTION_SEARCH_RESULT)
---@overload fun(eventFunction: fun(data: { id: ObjectId, sysResult: ENUM_AuctionGetResultMsgResult }), sysEventName: EVENT_AUCTION_UPDATE_RESULT)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param id ObjectId # id аукциона
---@param price number # ставка
function auction.Bid( id, price ) end

---@param id ObjectId # id аукциона
function auction.Buyout( id ) end

---@param itemId ObjectId # id предмета, который выставляется на аукцион; предмет должен находится в одном из контейнеров (например в инвентаре)
---@return boolean # true, если можно создать аукцион
function auction.CanCreateForItem( itemId ) end

---@param itemId ObjectId # id предмета, который выставляется на аукцион
---@param startPrice number # стартовая цена
---@param buyoutPrice number # окончательная цена выкупа с прекращением аукциона
---@param timeLength AUCTION_CREATETIME
function auction.CreateForItem( itemId, startPrice, buyoutPrice, timeLength ) end

---@param id ObjectId # id аукциона
function auction.Discard( id ) end

---@param id ObjectId # идентификатор аукциона
---@return nil | { id: ObjectId, itemId: ObjectId, bidderName: WString, currentBid: number, sellerName: WString, startPrice: number, buyoutPrice: number, participationStatus: ENUM_AuctionDescriptorParticipationStatus, timeLeftSeconds: integer, timeLeft: { d: integer, h: integer, m: integer, s: integer } }
function auction.GetAuctionInfo( id ) end

---@return table<integer, ObjectId> # индексированная с 0 таблица идентификаторов аукционов
function auction.GetAuctions() end

---@return integer # количество аукционов
function auction.GetAuctionsCount() end

---@return integer # номер страницы
function auction.GetAuctionsPage() end

---@return integer # количество страницы
function auction.GetAuctionsPageCount() end

---@param id ObjectId # идентификатор аукциона
---@return nil | { bidInProgerss: boolean, discardInProgress: boolean, discarded: boolean }
function auction.GetAuctionState( id ) end

---@param id ObjectId # идентификатор предмета
---@return integer | nil # значение приоритетного уровня предмета, nil в случаи ошибки
function auction.GetItemForegroundLevel( id ) end

---@return nil | { pawnFactorPercent: integer, bidStepOnPecent: integer, discardingFinePercent: integer, taxInPercent: integer, searchPageSize: integer, bidIncreaseTimeSec: integer }
function auction.GetProperties() end

---@return boolean # true, если идёт процесс создания аукциона
function auction.IsCreationInProgress() end

---@return boolean # true, если идёт процесс создания аукциона
function auction.IsSearchInProgress() end

---@param name WString | nil # маска для поиска по имени (nil означает, что имя не используется, пустое)
---@return boolean # является ли маска допустимой
function auction.IsSearchNameValid( name ) end

---@param filter { name?: WString, itemClass?: string, dressSlot?: DRESS_SLOT, rarityMin?: string, rarityMax?: string, levelMin?: integer, levelMax?: integer, bidMin?: number, bidMax?: number, buyoutMin?: number, buyoutMax?: number, onlyMyAuctions?: boolean, onlyAuctionsWithMyBids?: boolean, rootCategory?: ItemCategoryId, childCategory?: ItemCategoryId }
---@param orderField AUCTION_ORDERFIELD
---@param asc boolean # направление сортировки. true - сортировать по возрастанию
---@param page integer # номер страницы для показа, начиная с 1
function auction.Search( filter, orderField, asc, page ) end