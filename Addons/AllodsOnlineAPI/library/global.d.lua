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

---@alias AstralSectorId integer # сектор астрала // TODO: требует уточнения

---@alias ItemCategoryId integer # категория // TODO: требует уточнения

---@alias ItemClassId integer # идентификатор класса предмета // TODO: требует уточнения

---@alias ComponetPropertyId integer # Id ресурсов компонент крафтинг // TODO: требует уточнения

---@alias ZodiacSignId unknown # id знака зодиака руны // TODO: требует уточнения

---@alias QuestId integer # идентификатор задания // TODO: требует уточнения

---@alias SpecialStatId integer # TODO: требует уточнения

---@alias SkillId integer # TODO: требует уточнения

---@alias SpellId integer # TODO: требует уточнения

---@alias AbilityId integer # TODO: требует уточнения

---@alias GuildAbilityId integer # TODO: требует уточнения

---@alias BuffId integer # TODO: требует уточнения

---@alias ComponentId integer # TODO: требует уточнения

---@alias VariableId string # идентификатор ресурса переменной // TODO: требует уточнения

---@alias UnlockId integer # идентификатор возможности (анлока) // TODO: требует уточнения

---@alias UnlockCategoryId integer # идентификатор типа категории возможностей (анлоков) // TODO: требует уточнения

---@alias RuleId integer # идентификатор события // TODO: требует уточнения

---@alias RecipeId integer # Id ресурса рецепта // TODO: требует уточнения

---@alias ForgeRecipeId integer # идентификатор рецепта для forge крафта // TODO: требует уточнения

---@alias ForgeResourceId integer # идентификатор ресурса (тира) для forge-крафта // TODO: требует уточнения

---@alias ForgeCraftRecipeId integer # идентификатор рецепта для forge крафта // TODO: требует уточнения & is equal ForgeRecipeId?

---@alias ReforgeResourceId table # идентификатор ресурса для reforge крафта // TODO: требует уточнения

---@alias RequirementsTable table # список условий // TODO: требует уточнения

---@alias PostTypeId unknown # идентификатор раздела // TODO: требует уточнения

---@alias ShipSkinId integer #  // TODO: требует уточнения

---@alias InstancedEventResourceId unknown #  // TODO: требует уточнения

---@alias TeleportId integer # TODO: требует уточнения

---@alias TeleportMasterId integer # TODO: требует уточнения

---@alias InterfaceMapMarkerId integer # идентификатор ресурса маркера // TODO: требует уточнения

---@alias MapModifierId integer # идентификатор модификатора карты // TODO: требует уточнения

---@alias UniqueId string # кросс-серверный (постоянный) уникальный идентификатор аватара TODO: требует уточнения

---@alias PersistentId string # серверный (постоянный) идентификатор аватара // TODO: требует уточнения

---@alias ActionGroupId integer # TODO: требует уточнения

---@alias CharacterClassId integer # идентификатор класса аватара // TODO: требует уточнения

---@alias UISingleTexture string # иконка // TODO: требует уточнения

---@alias GamePosition { posX: number, posY: number, posZ: number } # позиция аватара // TODO: требует уточнения

---@alias LuaFullDateTime { y: integer, m: integer, d: integer, h: integer, min: integer, s: integer, ms: integer, wday: integer, month: integer, sysMonth: string, overallMs: integer } # TODO: требует уточнения

---@alias OfficeTable { officeInfo: WString, groups: table<integer, GroupTable> }

---@alias GroupTable { groupHeader: WString, groupSubHeader: WString?, items: table<integer, ItemTable> }

---@alias ItemTable { name: WString, type: WString?, special: string? }

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