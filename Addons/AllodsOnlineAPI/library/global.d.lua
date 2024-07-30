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

---@alias ItemId integer # TODO: требует уточнения

---@alias ItemCategoryId integer # категория // TODO: требует уточнения

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

---@class LifestyleCategoryId
LifestyleCategoryId = {}
---@return { name: WString, description: string }
function LifestyleCategoryId:GetInfo() end

---@class LifestyleCollectionId
LifestyleCollectionId = {}
---@return { name: WString, description: string }
function LifestyleCollectionId:GetInfo() end

---@class CurrencyCategoryId # идентификатор категории альтернативной игровой валюты
CurrencyCategoryId = {}
---@return { name: WString, description: string, sysName: string }
function CurrencyCategoryId:GetInfo() end

---@class CurrencyId # идентификатор ресурса валюты
CurrencyId = {}
---@return { category: CurrencyCategoryId, description: WString, hideMaxValue: boolean, image: TextureId, isCoupon: boolean, limitCurrency: CurrencyId, maxValue: integer, name: WString, storage: ENUM_CURRENCY_STORAGE, sysStorage: string, sysName: string, visualizeMode: ENUM_CURRENCY_VISUALIZE_MODE, sysVisualizeMode: string }
function CurrencyId:GetInfo() end

---@class FactionId # Идентификатор фракции
CurrencyId = {}
---@return { name: WString, sysName: string | nil, hide: boolean, hideNotification: boolean }
function CurrencyId:GetInfo() end