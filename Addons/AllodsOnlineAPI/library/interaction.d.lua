---@meta

---@class interaction
interaction = {}

--[[ ENUMS --]]

---@alias ENUM_ExchangeResult
---| "ENUM_MsgStartExchangeResultResult_SUCCESS"
---| "ENUM_MsgStartExchangeResultResult_ERROR"
---| "ENUM_MsgStartExchangeResultResult_INVITEDAVATARISBUSY"
---| "ENUM_MsgStartExchangeResultResult_INVITERAVATARISBUSY"
---| "ENUM_MsgStartExchangeResultResult_INVITEDAVATARNOTFOUND"
---| "ENUM_MsgStartExchangeResultResult_TOOFAR"
---| "ENUM_MsgStartExchangeResultResult_INVITEDAVATARISDEAD"
---| "ENUM_MsgStartExchangeResultResult_INVITERAVATARISDEAD"
---| "ENUM_MsgStartExchangeResultResult_YOUAREINVISIBLE"
---| "ENUM_MsgExchangeErrorErrorType_MONEYNOTENOUGH"
---| "ENUM_MsgExchangeErrorErrorType_PRIMARYCONFIRMATIONREQUIRED"
---| "ENUM_MsgExchangeErrorErrorType_ITEMNOTFOUND"
---| "ENUM_MsgExchangeErrorErrorType_SLOTISUSED"
---| "ENUM_MsgExchangeErrorErrorType_ITEMISUSED"
---| "ENUM_MsgExchangeErrorErrorType_ITEMISBOUND"

---@alias ItemsExchangeState_INVITATION unknown - приглашение отправлено
---@alias ItemsExchangeState_INPROGRESS unknown - в процессе торговли
---@alias ItemsExchangeState_COMPLETED unknown - торговля успешно завершена
---@alias ItemsExchangeState_CANCELED unknown - торговля отменена
---@alias ItemsExchangeState_FAILED unknown - что-то пошло не так
---@alias ItemsExchangeState_NOBAGSPACE unknown - не хватает места в сумке
---@alias ItemsExchangeState_LOST unknown - один из участников торгов вышел из игры
---@alias ItemsExchangeState ItemsExchangeState_INVITATION | ItemsExchangeState_INPROGRESS | ItemsExchangeState_COMPLETED | ItemsExchangeState_CANCELED | ItemsExchangeState_FAILED | ItemsExchangeState_NOBAGSPACE | ItemsExchangeState_LOST

---@alias MANA_TYPE unknown

--[[ EVENTS --]]

---@alias EVENT_INTERACTION_STARTED "EVENT_INTERACTION_STARTED"
---@alias EVENT_ITEMS_EXCHANGE_DECLINE_IGNORED "EVENT_ITEMS_EXCHANGE_DECLINE_IGNORED"
---@alias EVENT_ITEMS_EXCHANGE_ERROR "EVENT_ITEMS_EXCHANGE_ERROR"
---@alias EVENT_ITEMS_EXCHANGE_FINISHED "EVENT_ITEMS_EXCHANGE_FINISHED"
---@alias EVENT_ITEMS_EXCHANGE_INVITED "EVENT_ITEMS_EXCHANGE_INVITED"
---@alias EVENT_ITEMS_EXCHANGE_OFFER_FINAL_CONFIRMED_CHANGED "EVENT_ITEMS_EXCHANGE_OFFER_FINAL_CONFIRMED_CHANGED"
---@alias EVENT_ITEMS_EXCHANGE_OFFER_ITEMS_CHANGED "EVENT_ITEMS_EXCHANGE_OFFER_ITEMS_CHANGED"
---@alias EVENT_ITEMS_EXCHANGE_OFFER_MONEY_CHANGED "EVENT_ITEMS_EXCHANGE_OFFER_MONEY_CHANGED"
---@alias EVENT_ITEMS_EXCHANGE_OFFER_PRIMARY_CONFIRMED_CHANGED "EVENT_ITEMS_EXCHANGE_OFFER_PRIMARY_CONFIRMED_CHANGED"
---@alias EVENT_ITEMS_EXCHANGE_SLOT_IS_BUSY "EVENT_ITEMS_EXCHANGE_SLOT_IS_BUSY"
---@alias EVENT_ITEMS_EXCHANGE_STARTED "EVENT_ITEMS_EXCHANGE_STARTED"
---@alias EVENT_ITEMS_EXCHANGE_STATE_CHANGED "EVENT_ITEMS_EXCHANGE_STATE_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_INTERACTION_STARTED)
---@overload fun(eventFunction: fun(data: { declinerName: WString }), sysEventName: EVENT_ITEMS_EXCHANGE_DECLINE_IGNORED)
---@overload fun(eventFunction: fun(data: { inviter: WString, invited: WString, error: ENUM_ExchangeResult }), sysEventName: EVENT_ITEMS_EXCHANGE_ERROR)
---@overload fun(eventFunction: fun(data: { state: ItemsExchangeState }), sysEventName: EVENT_ITEMS_EXCHANGE_FINISHED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ITEMS_EXCHANGE_INVITED)
---@overload fun(eventFunction: fun(data: { offerId: ObjectId }), sysEventName: EVENT_ITEMS_EXCHANGE_OFFER_FINAL_CONFIRMED_CHANGED)
---@overload fun(eventFunction: fun(data: { offerId: ObjectId }), sysEventName: EVENT_ITEMS_EXCHANGE_OFFER_ITEMS_CHANGED)
---@overload fun(eventFunction: fun(data: { offerId: ObjectId }), sysEventName: EVENT_ITEMS_EXCHANGE_OFFER_MONEY_CHANGED)
---@overload fun(eventFunction: fun(data: { offerId: ObjectId }), sysEventName: EVENT_ITEMS_EXCHANGE_OFFER_PRIMARY_CONFIRMED_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ITEMS_EXCHANGE_SLOT_IS_BUSY)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ITEMS_EXCHANGE_STARTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ITEMS_EXCHANGE_STATE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function interaction.CancelExchange() end

---@return nil | { playerId: ObjectId, money: integer, primaryConfirmed: boolean, finalConfirmed: boolean, items: table<integer, ObjectId | nil> }
function interaction.GetExchangeInvited() end

---@return nil | { playerId: ObjectId, money: integer, primaryConfirmed: boolean, finalConfirmed: boolean, items: table<integer, ObjectId | nil> }
function interaction.GetExchangeInviter() end

---@return integer
function interaction.GetExchangeSlotCount() end

---@return boolean
function interaction.HasExchange() end

---@param invitedName WString
function interaction.InviteToExchange( invitedName ) end

---@return boolean
function interaction.IsAvatarExchangeInviter() end

---@return boolean
function interaction.IsExchangeInInvitation() end

---@return boolean
function interaction.IsExchangeInProgress() end

---@param exchangeSlot integer
function interaction.RemoveExchangeItem( exchangeSlot ) end

---@param id ObjectId
---@return nil | { className: string, manaType: MANA_TYPE, name: WString }
function unit.GetTrainerClass(id) end

---@param id ObjectId
---@return boolean
function unit.IsTrainer( id ) end