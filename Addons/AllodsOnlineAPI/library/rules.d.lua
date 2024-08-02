---@meta

--[[ ENUMS --]]

---@alias ENUM_MsgGetBonusListResultResult
---| "ENUM_MsgGetBonusListResultResult_Success"
---| "ENUM_MsgGetBonusListResultResult_InternalError"
---| "ENUM_MsgGetBonusListResultResult_BillingUnavailable"

---@alias ENUM_RuleNotificationType_Default unknown | "ENUM_RuleNotificationType_Default"
---@alias ENUM_RuleNotificationType_Box unknown | "ENUM_RuleNotificationType_Box"
---@alias ENUM_RuleNotificationType_Chest unknown | "ENUM_RuleNotificationType_Chest"
---@alias ENUM_RuleNotificationType_CrystalSale unknown | "ENUM_RuleNotificationType_CrystalSale"
---@alias ENUM_RuleNotificationType_PriceChanging unknown | "ENUM_RuleNotificationType_PriceChanging"
---@alias ENUM_RuleNotificationType_New unknown | "ENUM_RuleNotificationType_New"
---@alias ENUM_RuleNotificationType ENUM_RuleNotificationType_Default | ENUM_RuleNotificationType_Box | ENUM_RuleNotificationType_Chest | ENUM_RuleNotificationType_CrystalSale | ENUM_RuleNotificationType_PriceChanging | ENUM_RuleNotificationType_New

---@alias RULE_TYPE_ACTION unknown - рекламная акция и т.п.
---@alias RULE_TYPE_HOLYDAY unknown - праздники
---@alias RULE_TYPE_SINGLE unknown - одиночные
---@alias RULE_TYPE_GROUP unknown - групповые
---@alias RULE_TYPE_GUILD unknown - гильдейские
---@alias RULE_TYPE RULE_TYPE_ACTION | RULE_TYPE_HOLYDAY | RULE_TYPE_SINGLE | RULE_TYPE_GROUP | RULE_TYPE_GUILD

---@alias ENUM_ItemMallCurrency unknown

---@alias ENUM_Month integer месяц (1-12, начиная с января)

--[[ EVENTS --]]

---@alias EVENT_BILLINGINFO_BONUS_CHANGED "EVENT_BILLINGINFO_BONUS_CHANGED"
---@alias EVENT_BILLINGINFO_BONUS_STATUS_CHANGED "EVENT_BILLINGINFO_BONUS_STATUS_CHANGED"
---@alias EVENT_MISSION_RULE_ADDED "EVENT_MISSION_RULE_ADDED"
---@alias EVENT_MISSION_RULE_CHANGED "EVENT_MISSION_RULE_CHANGED"
---@alias EVENT_MISSION_RULE_COUNTER_CHANGED "EVENT_MISSION_RULE_COUNTER_CHANGED"
---@alias EVENT_MISSION_RULE_REMOVED "EVENT_MISSION_RULE_REMOVED"
---@alias EVENT_MISSION_RULES_CHANGED "EVENT_MISSION_RULES_CHANGED"
---@alias EVENT_NEWS_POST_LOADED "EVENT_NEWS_POST_LOADED"
---@alias EVENT_NEWS_POST_SELECTED "EVENT_NEWS_POST_SELECTED"
---@alias EVENT_WISHMASTER_CHANGED "EVENT_WISHMASTER_CHANGED"
---@alias EVENT_WISHMASTER_MULTIPLYING "EVENT_WISHMASTER_MULTIPLYING"

---@overload fun(eventFunction: fun(data: { bonusId: BillingBonusId }), sysEventName: EVENT_BILLINGINFO_BONUS_CHANGED)
---@overload fun(eventFunction: fun(data: { status: ENUM_MsgGetBonusListResultResult }), sysEventName: EVENT_BILLINGINFO_BONUS_STATUS_CHANGED)
---@overload fun(eventFunction: fun(data: { ruleId: RuleId }), sysEventName: EVENT_MISSION_RULE_ADDED)
---@overload fun(eventFunction: fun(data: { ruleId: RuleId }), sysEventName: EVENT_MISSION_RULE_CHANGED)
---@overload fun(eventFunction: fun(data: { ruleId: ObjectId }), sysEventName: EVENT_MISSION_RULE_COUNTER_CHANGED)
---@overload fun(eventFunction: fun(data: { ruleId: RuleId }), sysEventName: EVENT_MISSION_RULE_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_MISSION_RULES_CHANGED)
---@overload fun(eventFunction: fun(data: { ruleId: ObjectId | nil }), sysEventName: EVENT_NEWS_POST_LOADED)
---@overload fun(eventFunction: fun(data: { ruleId: ObjectId | nil }), sysEventName: EVENT_NEWS_POST_SELECTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_WISHMASTER_CHANGED)
---@overload fun(eventFunction: fun(data: { resourceId: WishmasterResourceId }), sysEventName: EVENT_WISHMASTER_MULTIPLYING)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return nil | table<integer, BillingBonusId>
function rules.BillingInfoGetBonuses() end

---@param bonusId BillingBonusId
---@return nil | { name: WString, description: WString, currency: ENUM_ItemMallCurrency, limitTotal: integer, bonusPercent: number, isSinglePayment: boolean, limitUsed: integer | nil, loyalPart: integer, updateTime: nil | { year: integer, month: integer, day: ENUM_Month, day: integer, wday: integer, hour: integer, minute: integer, second: integer, msec: integer }, removeTime: nil | { year: integer, month: integer, day: ENUM_Month, day: integer, wday: integer, hour: integer, minute: integer, second: integer, msec: integer }, image?: TextureId }
--- TODO: docs hasn't arguments
function rules.BillingInfoGetBonusInfo( bonusId ) end

function rules.BillingInfoUpdate() end

---@param ruleId RuleId
---@param getHidden boolean | nil
---@return ObjectId | nil
function rules.GetEventByRuleId( ruleId, getHidden ) end

---@param sysName string
---@param getHidden boolean | nil
---@return ObjectId | nil
function rules.GetEventBySysName( sysName, getHidden ) end

---@param eventRuleId ObjectId
---@return nil | { value: integer, limit: integer }
function rules.GetEventCounter( eventRuleId ) end

---@param eventRuleId ObjectId
---@return nil | { id: ObjectId, resourceId: RuleId, name: WString, description: WString, sysName: string, sysDebugName: string | nil, isActive: boolean, rating: integer, level: integer, zonesMapId: ObjectId | nil, factionId: FactionId | nil, reward?: table, types: table<RULE_TYPE, true>, location: QuestLocation | nil }
function rules.GetEventInfo( eventRuleId ) end

---@param getHidden boolean | nil
---@return table<integer, ObjectId>
function rules.GetEvents( getHidden ) end

---@param eventRuleId ObjectId
---@return table<integer, table>
function rules.GetEventTimeIntervals( eventRuleId ) end

---@param eventRuleId ObjectId
---@return nil | { type: ENUM_RuleNotificationType, sysType: ENUM_RuleNotificationType, text: WString | nil, image?: TextureId | nil }
function rules.GetNotificationInfo( eventRuleId ) end

---@return nil | table<integer, { name: WString, description: WString, paymentMultiplier: number, bonusPaymentLimit: integer, image?: TextureId }>
function rules.GetWishmaster() end

---@return table<integer, { name: WString, description: WString, isPreviousStepSuccess: boolean, curentBonusValue: number, stepLeft: integer, stepMultiplier: number, resourceId: WishmasterResourceId, image?: TextureId }>
function rules.GetWishmasterMultiplyingInfos() end

---@param resourceId WishmasterResourceId
function rules.WishmasterRollMultiplying( resourceId ) end