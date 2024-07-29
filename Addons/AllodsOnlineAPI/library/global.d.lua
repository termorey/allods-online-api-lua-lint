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

---@alias ComponentPropertyId string # Id ресурса компонента // TODO: требует уточнения

---@alias VariableId string # идентификатор ресурса переменной // TODO: требует уточнения

---@alias UnlockId integer # идентификатор возможности (анлока) // TODO: требует уточнения

---@alias UnlockCategoryId integer # идентификатор типа категории возможностей (анлоков) // TODO: требует уточнения

---@alias RuleId integer # идентификатор события // TODO: требует уточнения

---@alias RecipeId integer # Id ресурса рецепта // TODO: требует уточнения

---@alias FactionId integer # идентификатор фракции // TODO: требует уточнения

---@alias CurrencyId integer # идентификатор ресурса валюты // TODO: требует уточнения

---@alias CurrencyCategoryId integer # TODO: требует уточнения

---@alias TeleportId integer # TODO: требует уточнения

---@alias TeleportMasterId integer # TODO: требует уточнения

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

---@class TextViewSafe
TextViewSafe = {}