---@meta

---@alias WidgetSafe userdata #  // TODO: требует уточнения

---@alias EditLineSafe userdata # строка ввода // TODO: требует уточнения

---@alias Control3DSafe userdata  #  // TODO: требует уточнения

---@alias WString userdata # TODO: требует уточнения

---@alias ValuedText string # TODO: требует уточнения

---@alias ValuedObject userdata # TODO: требует уточнения

---@alias FormSafe table # (главная форма аддона) // TODO: требует уточнения

---@alias ObjectId integer # идентификатор объекта // TODO: требует уточнения

---@alias DecalObjectId integer  # идентификатор декала // TODO: требует уточнения

---@alias VisObjectId integer  # идентификатор объекта VisObject // TODO: требует уточнения

---@alias AliasVisObjectId integer  # идентификатор привязки объекта // TODO: требует уточнения

---@alias Color { r: number, g: number, b: number, a: number } # цвет

---@alias CheckRoomCategoryId integer # идентификатор ресурса коневой категории гардероба // TODO: требует уточнения

---@alias CheckRoomCollectionId integer # идентификатор ресурсов коллекций категории // TODO: требует уточнения

---@alias TextureId integer # TODO: требует уточнения

---@alias ResourceId integer # TODO: требует уточнения

---@alias GoalId integer #  // TODO: требует уточнения

---@alias ItemCategoryId integer # категория // TODO: требует уточнения

---@alias ItemClassId integer # идентификатор класса предмета // TODO: требует уточнения

---@alias ComponetPropertyId integer # Id ресурсов компонент крафтинг // TODO: требует уточнения

---@alias ZodiacSignId unknown # id знака зодиака руны // TODO: требует уточнения

---@alias SpecialStatId integer # TODO: требует уточнения

---@alias GuildAbilityId integer # TODO: требует уточнения

---@alias BuffId integer # TODO: требует уточнения

---@alias ComponentId integer # TODO: требует уточнения

---@alias VariableId string # идентификатор ресурса переменной // TODO: требует уточнения

---@alias UnlockId integer # идентификатор возможности (анлока) // TODO: требует уточнения

---@alias UnlockCategoryId integer # идентификатор типа категории возможностей (анлоков) // TODO: требует уточнения

---@alias ForgeRecipeId integer # идентификатор рецепта для forge крафта // TODO: требует уточнения

---@alias ForgeResourceId integer # идентификатор ресурса (тира) для forge-крафта // TODO: требует уточнения

---@alias ForgeCraftRecipeId integer # идентификатор рецепта для forge крафта // TODO: требует уточнения & is equal ForgeRecipeId?

---@alias ReforgeResourceId table # идентификатор ресурса для reforge крафта // TODO: требует уточнения

---@alias RequirementsTable table # список условий // TODO: требует уточнения

---@alias PostTypeId unknown # идентификатор раздела // TODO: требует уточнения

---@alias ShipSkinId integer #  // TODO: требует уточнения

---@alias OrderBonusId unknown # идентификатор бонуса // TODO: требует уточнения

---@alias TeleportId integer # TODO: требует уточнения

---@alias TeleportMasterId integer # TODO: требует уточнения

---@alias InterfaceMapMarkerId integer # идентификатор ресурса маркера // TODO: требует уточнения

---@alias MapModifierId integer # идентификатор модификатора карты // TODO: требует уточнения

---@alias UniqueId string # кросс-серверный (постоянный) уникальный идентификатор аватара TODO: требует уточнения

---@alias PersistentId number # серверный (постоянный) идентификатор аватара

---@alias CharacterClassId integer # идентификатор класса аватара // TODO: требует уточнения

---@alias UISingleTexture string # иконка // TODO: требует уточнения

---@alias GamePosition { posX: number, posY: number, posZ: number } # позиция аватара // TODO: требует уточнения

---@alias LuaFullDateTime { y: integer, m: integer, d: integer, h: integer, min: integer, s: integer, ms: integer, wday: integer, month: integer, sysMonth: string, overallMs: integer } # TODO: требует уточнения

---@alias OfficeTable { officeInfo: WString, groups: table<integer, GroupTable> }

---@alias GroupTable { groupHeader: WString, groupSubHeader: WString?, items: table<integer, ItemTable> }

---@alias ItemTable { name: WString, type: WString?, special: string? }

---@alias LuaSexInfoPart { sex: SEX, name: WString, raceSexName: WString }

---@alias LuaRaceClassInfoPart { sysName: WString, name: WString, description: WString, sysClassName: WString, className: WString, sysRaceName: WString, raceName: WString }

---@alias MutationInfo { difficulty: ZONE_TIER_DIFFICULTY, population: number, buff: BuffId }

---@alias TimeEntry table

---@alias Locale "ru" | "en" | "de" | string

---@alias Localization "rus" | string

---@class ButtonSafe
ButtonSafe = {}
function ButtonSafe:ClearValues(  ) end
---@return integer
function ButtonSafe:GetVariant(  )end
---@return integer
function ButtonSafe:GetVariantCount(  ) end
---@param tag string | WString
---@param value string | WString
function ButtonSafe:SetClassVal( tag, value ) end
---@param tagName string | WString
---@param color integer | string | WString | Color
---@param colorType? EnumColorType
function ButtonSafe:SetTextColor( tagName, color, colorType ) end
---@param textValues string | WString
function ButtonSafe:SetTextValues( textValues ) end
---@param tag string | WString
---@param value WString
function ButtonSafe:SetVal( tag, value ) end
---@param variant integer
function ButtonSafe:SetVariant( variant ) end

---@class TextViewSafe
TextViewSafe = {}

---@class Sound
Sound = {}
function Sound:Play() end
---@param immediate boolean
function Sound:Stop( immediate ) end

---@class BattlegroundMarkId
BattlegroundMarkId = {}
---@return { image: WString, sysName: string | nil }
function BattlegroundMarkId:GetInfo() end
---@return nil | string
function BattlegroundMarkId:GetPath() end
---@return nil | lightuserdata
function BattlegroundMarkId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function BattlegroundMarkId:IsEqual( resourceId ) end

---@class LifestyleCategoryId
LifestyleCategoryId = {}
---@return { name: WString, description: string }
function LifestyleCategoryId:GetInfo() end
---@return nil | string
function LifestyleCategoryId:GetPath() end
---@return nil | lightuserdata
function LifestyleCategoryId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function LifestyleCategoryId:IsEqual( resourceId ) end

---@class LifestyleCollectionId
LifestyleCollectionId = {}
---@return { name: WString, description: string }
function LifestyleCollectionId:GetInfo() end
---@return nil | string
function LifestyleCollectionId:GetPath() end
---@return nil | lightuserdata
function LifestyleCollectionId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function LifestyleCollectionId:IsEqual( resourceId ) end

---@class CurrencyCategoryId # идентификатор категории альтернативной игровой валюты
CurrencyCategoryId = {}
---@return { name: WString, description: string, sysName: string }
function CurrencyCategoryId:GetInfo() end
---@return nil | string
function CurrencyCategoryId:GetPath() end
---@return nil | lightuserdata
function CurrencyCategoryId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function CurrencyCategoryId:IsEqual( resourceId ) end

---@class CurrencyId # идентификатор ресурса валюты
CurrencyId = {}
---@return { category: CurrencyCategoryId, description: WString, hideMaxValue: boolean, image: TextureId, isCoupon: boolean, limitCurrency: CurrencyId, maxValue: integer, name: WString, storage: ENUM_CURRENCY_STORAGE, sysStorage: string, sysName: string, visualizeMode: ENUM_CURRENCY_VISUALIZE_MODE, sysVisualizeMode: string }
function CurrencyId:GetInfo() end
---@return nil | string
function CurrencyId:GetPath() end
---@return nil | lightuserdata
function CurrencyId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function CurrencyId:IsEqual( resourceId ) end

---@class FactionId # Идентификатор фракции
FactionId = {}
---@return { name: WString, sysName: string | nil, hide: boolean, hideNotification: boolean }
function FactionId:GetInfo() end
---@return nil | string
function FactionId:GetPath() end
---@return nil | lightuserdata
function FactionId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function FactionId:IsEqual( resourceId ) end

---@class VisualShipId # Идентификатор корпуса корабля
VisualShipId = {}
---@return { description: WString, name: WString, image: TextureId, cannonVisualType: ENUM_CANNON_VISUAL_TYPE, sysCannonVisualType: string }
function VisualShipId:GetInfo() end
---@return nil | string
function VisualShipId:GetPath() end
---@return nil | lightuserdata
function VisualShipId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function VisualShipId:IsEqual( resourceId ) end

---@class ItemId # Идентификатор ресурса предмета
ItemId = {}
---@return { description: WString, image: TextureId, name: WString }
function ItemId:GetInfo() end
---@return nil | string
function ItemId:GetPath() end
---@return nil | lightuserdata
function ItemId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function ItemId:IsEqual( resourceId ) end

---@class LfgDestinationId # Идентификатор активности для LFG
LfgDestinationId = {}
---@return { name: WString | nil, description: WString | nil, requiredItem: ItemId | nil, requiredCurrency: CurrencyId | nil, leaderDepartOnly: boolean, category: LfgDestinationCategoryId | nil, minAvatarLvl: integer, maxMembers: integer, maxEventDuration: integer, soloMode: boolean, instancedEvent: InstancedEventResourceId | nil, difficulty: WString | nil, difficultyMode: ENUM_LFGEventDifficulty, sysDifficultyMode: ENUM_LFGEventDifficulty }
function LfgDestinationId:GetInfo() end
---@return nil | string
function LfgDestinationId:GetPath() end
---@return nil | lightuserdata
function LfgDestinationId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function LfgDestinationId:IsEqual( resourceId ) end

---@class LfgDestinationCategoryId # Идентификатор категории цели для LFG
LfgDestinationCategoryId = {}
---@return { name: WString | nil, sysName: string }
function LfgDestinationCategoryId:GetInfo() end
---@return nil | string
function LfgDestinationCategoryId:GetPath() end
---@return nil | lightuserdata
function LfgDestinationCategoryId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function LfgDestinationCategoryId:IsEqual( resourceId ) end

---@class LootGroupId # Идентификатор ресурса, определяющего вариант выпадения лута на астральных островах
LootGroupId = {}
---@return { name: WString | nil, image?: TextureId | nil }
function LootGroupId:GetInfo() end
---@return nil | string
function LootGroupId:GetPath() end
---@return nil | lightuserdata
function LootGroupId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function LootGroupId:IsEqual( resourceId ) end

---@class VoteId # Идентификатор ресурса, определяющего вариант выпадения лута на астральных островах
VoteId = {}
---@return { marker: CurrencyId, questions: nil | table<integer, { description: WString, answersCount: 0 | integer, answers: nil | table<integer, { description: WString }> }> }
function VoteId:GetInfo() end
---@return nil | string
function VoteId:GetPath() end
---@return nil | lightuserdata
function VoteId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function VoteId:IsEqual( resourceId ) end

---@class InstancedEventCategoryId # Идентификатор ресурса категории сражения
InstancedEventCategoryId = {}
---@return { name: WString, sysName: string, allowDummyPass: boolean }
function InstancedEventCategoryId:GetInfo() end
---@return nil | string
function InstancedEventCategoryId:GetPath() end
---@return nil | lightuserdata
function InstancedEventCategoryId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function InstancedEventCategoryId:IsEqual( resourceId ) end

---@class InstancedEventResourceId # Идентификатор ресурса сражения
InstancedEventResourceId = {}
---@return { startTime: TimeTableId }
function InstancedEventResourceId:GetInfo() end
---@return nil | string
function InstancedEventResourceId:GetPath() end
---@return nil | lightuserdata
function InstancedEventResourceId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function InstancedEventResourceId:IsEqual( resourceId ) end

---@class TimeTableId # Идентификатор таблицы с предустановленным списком времен/дат
TimeTableId = {}
---@return { entries: nil | table }
function TimeTableId:GetInfo() end
---@return nil | string
function TimeTableId:GetPath() end
---@return nil | lightuserdata
function TimeTableId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function TimeTableId:IsEqual( resourceId ) end

---@class Sound2DId # Идентификатор звука
Sound2DId = {}
---@return unknown
function Sound2DId:GetInfo() end
---@return nil | string
function Sound2DId:GetPath() end
---@return nil | lightuserdata
function Sound2DId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function Sound2DId:IsEqual( resourceId ) end

---@class MedalId # Идентификатор ресурса достижения
MedalId = {}
---@return { name: WString, description: WString, image: TextureId, canLink: boolean }
function MedalId:GetInfo() end
---@return nil | string
function MedalId:GetPath() end
---@return nil | lightuserdata
function MedalId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function MedalId:IsEqual( resourceId ) end

---@class MedalRankId # Идентификатор ресурса ранга достижения
MedalRankId = {}
---@return { completeProgress: integer, name: WString, description: WString, image: TextureId, score: integer, reward: { description: WString } }
function MedalRankId:GetInfo() end
---@return nil | string
function MedalRankId:GetPath() end
---@return nil | lightuserdata
function MedalRankId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function MedalRankId:IsEqual( resourceId ) end

---@class AstralSectorId # Идентификатор астрального сектора
AstralSectorId = {}
---@return unknown
function AstralSectorId:GetInfo() end
---@return nil | string
function AstralSectorId:GetPath() end
---@return nil | lightuserdata
function AstralSectorId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function AstralSectorId:IsEqual( resourceId ) end

---@class QuestId # Идентификатор задания
QuestId = {}
---@return { finishText: WString, startText: WString, goal: WString, image: TextureId, name: WString, isAutomatic: boolean, questCategory: ENUM_QuestCategory }
function QuestId:GetInfo() end
---@return nil | string
function QuestId:GetPath() end
---@return nil | lightuserdata
function QuestId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function QuestId:IsEqual( resourceId ) end

---@class BillingBonusId # Идентификатор платёжного бонуса
BillingBonusId = {}
---@return unknown
function BillingBonusId:GetInfo() end
---@return nil | string
function BillingBonusId:GetPath() end
---@return nil | lightuserdata
function BillingBonusId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function BillingBonusId:IsEqual( resourceId ) end

---@class RuleId # Идентификатор ресурса переодического события
RuleId = {}
---@return { name: WString, description: WString, sysName: string }
function RuleId:GetInfo() end
---@return nil | string
function RuleId:GetPath() end
---@return nil | lightuserdata
function RuleId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function RuleId:IsEqual( resourceId ) end

---@class WishmasterResourceId # Идентификатор Волшебной лампы
WishmasterResourceId = {}
---@return unknown
function WishmasterResourceId:GetInfo() end
---@return nil | string
function WishmasterResourceId:GetPath() end
---@return nil | lightuserdata
function WishmasterResourceId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function WishmasterResourceId:IsEqual( resourceId ) end

---@class SkillId # Идентификатор умения
SkillId = {}
---@return { name: WString, description: WString, sysName: string | nil, image: TextureId, type: CRAFTING_SKILL, useLevels: boolean }
function SkillId:GetInfo() end
---@return nil | string
function SkillId:GetPath() end
---@return nil | lightuserdata
function SkillId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function SkillId:IsEqual( resourceId ) end

---@class RecipeId # Идентификатор рецепта
RecipeId = {}
---@return { name: WString, description: WString, image: unknown }
function RecipeId:GetInfo() end
---@return nil | string
function RecipeId:GetPath() end
---@return nil | lightuserdata
function RecipeId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function RecipeId:IsEqual( resourceId ) end

---@class SocketId # Идентификатор ресурса предмета для дерева талантов души
SocketId = {}
---@return { gemSlot: unknown, quality: ITEM_QUALITY }
function SocketId:GetInfo() end
---@return nil | string
function SocketId:GetPath() end
---@return nil | lightuserdata
function SocketId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function SocketId:IsEqual( resourceId ) end

---@class AbilityId # Идентификатор умения
AbilityId = {}
---@return unknown
function AbilityId:GetInfo() end
---@return nil | string
function AbilityId:GetPath() end
---@return nil | lightuserdata
function AbilityId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function AbilityId:IsEqual( resourceId ) end

---@class ActionGroupId # Идентификатор группы заклинаний
ActionGroupId = {}
---@return unknown
function ActionGroupId:GetInfo() end
---@return nil | string
function ActionGroupId:GetPath() end
---@return nil | lightuserdata
function ActionGroupId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function ActionGroupId:IsEqual( resourceId ) end

---@class SpellId # Идентификатор группы заклинаний
SpellId = {}
---@return unknown
function SpellId:GetInfo() end
---@return nil | string
function SpellId:GetPath() end
---@return nil | lightuserdata
function SpellId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function SpellId:IsEqual( resourceId ) end

---@class CombatTagId # Идентификатор группы заклинаний
CombatTagId = {}
---@return { name: WString | nil, shortname: WString | nil, description: WString | nil, isHelpful: boolean, image: TextureId | nil }
function CombatTagId:GetInfo() end
---@return nil | string
function CombatTagId:GetPath() end
---@return nil | lightuserdata
function CombatTagId:GetInstanceId() end
---@param resourceId WidgetSafe | ResourceId
---@return boolean
function CombatTagId:IsEqual( resourceId ) end