---@meta

---@class mailBox
mailBox = {}

--[[ ENUMS --]]

---@alias ENUM_CreateMailResult
---| "ENUM_CreateMailResult_Succeeded"
---| "ENUM_CreateMailResult_InvalidMoneyAmount"
---| "ENUM_CreateMailResult_TooManyItemsAttached"
---| "ENUM_CreateMailResult_UnknownReceiver"
---| "ENUM_CreateMailResult_AbonentsCannotParticipateByMail"
---| "ENUM_CreateMailResult_InternalSystemError"
---| "ENUM_CreateMailResult_NotEnoughMoney"
---| "ENUM_CreateMailResult_NotEnoughItems"
---| "ENUM_CreateMailResult_NotEnoughMoneyAndItems"
---| "ENUM_CreateMailResult_NotTalkingToMailBox"
---| "ENUM_CreateMailResult_NoSubject"
---| "ENUM_CreateMailResult_ItemBound"

---@alias ENUM_MailServiceReply
---| "ENUM_MailServiceReply_Succeeded"
---| "ENUM_MailServiceReply_InternalSystemError"
---| "ENUM_MailServiceReply_AvatarNotRecognized"
---| "ENUM_MailServiceReply_MailNotFound"
---| "ENUM_MailServiceReply_CannotReturnMail"
---| "ENUM_MailServiceReply_MailItemNotFound"
---| "ENUM_MailServiceReply_BagFull"
---| "ENUM_MailServiceReply_NotReadByOwner"
---| "ENUM_MailServiceReply_NotTalkingToMailBox"
---| "ENUM_MailServiceReply_NoMoneyInMail"
---| "ENUM_MailServiceReply_MailItemRemoved"
---| "ENUM_MailServiceReply_CannotRemoveMail"
---| "ENUM_MailServiceReply_MoneyOverflow"
---| "ENUM_MailServiceReply_OwnershipLimitExceeded"

---@alias MailGroupOperationType_MARKREAD integer
---@alias MailGroupOperationType_GETATTACHMENT integer
---@alias MailGroupOperationType_DELETE integer
---@alias MailGroupOperationType_GETATTACHMENT_DELETE integer
---@alias CmdMailGroupOperationOperationType MailGroupOperationType_MARKREAD | MailGroupOperationType_GETATTACHMENT | MailGroupOperationType_DELETE | MailGroupOperationType_GETATTACHMENT_DELETE

--[[ EVENTS --]]

---@alias EVENT_MAILBOX_ACTIVATED "EVENT_MAILBOX_ACTIVATED"
---@alias EVENT_MAILBOX_CHANGED "EVENT_MAILBOX_CHANGED"
---@alias EVENT_MAILBOX_CHANGED_ON_SERVER "EVENT_MAILBOX_CHANGED_ON_SERVER"
---@alias EVENT_MAILBOX_CLOSED "EVENT_MAILBOX_CLOSED"
---@alias EVENT_MAILBOX_NEW_MAIL_ARRIVED "EVENT_MAILBOX_NEW_MAIL_ARRIVED"
---@alias EVENT_MAILBOX_NEW_UNREAD_MESSAGE "EVENT_MAILBOX_NEW_UNREAD_MESSAGE"
---@alias EVENT_MAILBOX_SERVER_OPERATION_RESULT "EVENT_MAILBOX_SERVER_OPERATION_RESULT"
---@alias EVENT_MAIL_CREATE_RESULT "EVENT_MAIL_CREATE_RESULT"
---@alias EVENT_MAIL_DELETE_RESULT "EVENT_MAIL_DELETE_RESULT"
---@alias EVENT_MAIL_EXTRACT_ITEMS_RESULT "EVENT_MAIL_EXTRACT_ITEMS_RESULT"
---@alias EVENT_MAIL_EXTRACT_MONEY_RESULT "EVENT_MAIL_EXTRACT_MONEY_RESULT"
---@alias EVENT_MAIL_RETURN_RESULT "EVENT_MAIL_RETURN_RESULT"
---@alias EVENT_MAILS_CHANGED "EVENT_MAILS_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_MAILBOX_ACTIVATED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MAILBOX_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MAILBOX_CHANGED_ON_SERVER)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MAILBOX_CLOSED)
---@overload fun(eventFunction: fun(data: { totalCount: integer, unreadCount: integer }), sysEventName: EVENT_MAILBOX_NEW_MAIL_ARRIVED)
---@overload fun(eventFunction: fun(data: { oldUnreadMessages: integer, unreadMessages: integer }), sysEventName: EVENT_MAILBOX_NEW_UNREAD_MESSAGE)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_MailServiceReply | ENUM_CreateMailResult }), sysEventName: EVENT_MAILBOX_SERVER_OPERATION_RESULT)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_CreateMailResult, recipientName: WString }), sysEventName: EVENT_MAIL_CREATE_RESULT)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_MailServiceReply, mailId: ObjectId }), sysEventName: EVENT_MAIL_DELETE_RESULT)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_MailServiceReply, mailId: ObjectId }), sysEventName: EVENT_MAIL_EXTRACT_ITEMS_RESULT)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_MailServiceReply, mailId: ObjectId }), sysEventName: EVENT_MAIL_EXTRACT_MONEY_RESULT)
---@overload fun(eventFunction: fun(data: { sysResult: ENUM_MailServiceReply, mailId: ObjectId }), sysEventName: EVENT_MAIL_RETURN_RESULT)
---@overload fun(eventFunction: fun(data: table<integer, ObjectId>), sysEventName: EVENT_MAILS_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function mailBox.Close() end

---@param mailId ObjectId
---@return boolean
function mailBox.DeleteMail( mailId ) end

---@param mailId ObjectId
---@param slot integer | nil
---@return boolean
function mailBox.ExtractMailItems( mailId, slot ) end

---@param mailId ObjectId
---@return boolean
function mailBox.ExtractMailMoney( mailId ) end

function mailBox.FirstPage() end

---@return { totalMessages: integer, unreadMessages: integer }
function mailBox.GetInfo() end

---@return { maxMailItemsCount: integer }
function mailBox.GetLimits() end

---@param mailId ObjectId
---@return nil | Mail
function mailBox.GetMail( mailId ) end
---@alias Mail { mailId: ObjectId, createdAt: LuaFullDateTime, owneredAt: LuaFullDateTime, remainingTime: { d: integer, h: integer, m: integer, s: integer }, participantName?: WString, flags: { accountShared: boolean, fromSystem: boolean, readByOwner: boolean, readByRecipient: boolean, returnAllowed: boolean, returned: boolean }, subject: WString, body: WString, money: number, items: table<integer, ObjectId | nil>, systemMail: nil | { body: WString, from: WString, subject: WString, denyRemoveMailWithItems: boolean, sysName: string, voteResource: VoteId }, clientDataParams: nil | table }

---@return nil | table<integer, Mail>
function mailBox.GetMails() end

---@return boolean
function mailBox.IsActive() end

---@return boolean
function mailBox.IsInteracting() end

---@return boolean
function mailBox.IsReady() end

function mailBox.NextPage() end

function mailBox.Open() end

function mailBox.PrevPage() end

---@param mailId ObjectId
function mailBox.ReadMail( mailId ) end

---@param mailId ObjectId
function mailBox.RequestMail( mailId ) end

---@param operation CmdMailGroupOperationOperationType
---@param mailList table<integer, ObjectId>
function mailBox.RequestMailGroupOperation( operation, mailList ) end

---@return table<integer, ObjectId>
function mailBox.RequestMailIds() end

---@param mailId ObjectId
---@return nil | { header: nil | { participantName: WString, subject: WString, hasMoney: boolean, hasItems: boolean, isReturned: boolean, isReturnAllowed: boolean, isReadByRecipient: boolean, isReadByOwner: boolean, isFromSystem: boolean, remainingTime: { d: integer, h: integer, m: integer, s: integer }, body: nil | { text: WString, money: number, itemSlotCount: integer, items: table<integer, ObjectId | nil> }, mailTemplate: nil | { sysName: string, subject: WString, from: WString, body: WString, denyRemoveMailWithItems: boolean, clientDataParams: table } } }
function mailBox.RequestMailInfo( mailId ) end

---@param startIndex integer
---@param count integer
function mailBox.RequestMails( startIndex, count ) end

---@param mailId ObjectId
---@return boolean
function mailBox.ReturnMailToSender( mailId ) end