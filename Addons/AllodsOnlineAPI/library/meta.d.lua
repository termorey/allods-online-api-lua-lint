---@meta

--[[ ENUMS --]]

---@alias META_UPGRADE_QUALITY integer - улучшается качество метапредмета
---@alias META_UPGRADE_LEVEL integer - улучшается уровень метапредмета
---@alias META_UPGRADE_ITEM integer - заменяется исходный предмет на новый
---@alias META_UPGRADE META_UPGRADE_QUALITY | META_UPGRADE_LEVEL | META_UPGRADE_ITEM

---@alias ENUM_UpgradeChanceBehavior_MaximizeImprovement integer | "ENUM_UpgradeChanceBehavior_MaximizeImprovement" - моментальное улучшение
---@alias ENUM_UpgradeChanceBehavior_DoubleImprovement integer | "ENUM_UpgradeChanceBehavior_DoubleImprovement" - удвоение величины улучшения
---@alias ENUM_UpgradeChanceBehavior ENUM_UpgradeChanceBehavior_MaximizeImprovement | ENUM_UpgradeChanceBehavior_DoubleImprovement

--[[ EVENTS --]]

---@alias EVENT_META_DIALOG "EVENT_META_DIALOG"
---@alias EVENT_META_UPGRADE_BREAK "EVENT_META_UPGRADE_BREAK"
---@alias EVENT_META_UPGRADE_RESULT "EVENT_META_UPGRADE_RESULT"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_META_DIALOG)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_META_UPGRADE_BREAK)
---@overload fun(eventFunction: fun(data: { sysCause: ENUM_ActionFailCause, isLucky: boolean, improvementIncrease: number, upgradeChanceBehavior: ENUM_UpgradeChanceBehavior, upgradeVector: META_UPGRADE, sourceId?: ObjectId, enchancerId?: ObjectId, agentId?: ObjectId, agentCount?: integer, resultId?: ObjectId }), sysEventName: EVENT_META_UPGRADE_RESULT)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

