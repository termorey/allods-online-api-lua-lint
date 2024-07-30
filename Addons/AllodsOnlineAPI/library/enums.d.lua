
---@alias ENUM_InnateStats_Plain integer | "ENUM_InnateStats_Plain"
---@alias ENUM_InnateStats_Rage integer | "ENUM_InnateStats_Rage"
---@alias ENUM_InnateStats_Finisher integer | "ENUM_InnateStats_Finisher"
---@alias ENUM_InnateStats_Lethality integer | "ENUM_InnateStats_Lethality"
---@alias ENUM_InnateStats_Vitality integer | "ENUM_InnateStats_Vitality"
---@alias ENUM_InnateStats_Endurance integer | "ENUM_InnateStats_Endurance"
---@alias ENUM_InnateStats_Lifesteal integer | "ENUM_InnateStats_Lifesteal"
---@alias ENUM_InnateStats_Will integer | "ENUM_InnateStats_Will"
---@alias ENUM_InnateStats_CritChance integer | "ENUM_InnateStats_CritChance"
---@alias ENUM_InnateStats ENUM_InnateStats_Plain | ENUM_InnateStats_Rage | ENUM_InnateStats_Finisher | ENUM_InnateStats_Lethality | ENUM_InnateStats_Vitality | ENUM_InnateStats_Endurance | ENUM_InnateStats_Lifesteal | ENUM_InnateStats_Will | ENUM_InnateStats_CritChance

---@alias MOUSE_BUTTON_NONE integer
---@alias MOUSE_BUTTON_LEFT integer
---@alias MOUSE_BUTTON_RIGHT integer
---@alias MOUSE_BUTTON_MIDDLE integer
---@alias MOUSE_BUTTON_X1 integer
---@alias MOUSE_BUTTON_X2 integer
---@alias MOUSE_BUTTON MOUSE_BUTTON_NONE | MOUSE_BUTTON_LEFT | MOUSE_BUTTON_RIGHT | MOUSE_BUTTON_MIDDLE | MOUSE_BUTTON_X1 | MOUSE_BUTTON_X2

---@alias VK_PAUSE integer # Pause
---@alias VK_CAPITAL integer # CapsLock
---@alias VK_NUMLOCK integer # NumLock
---@alias VK_SCROLL integer # ScrollLock
---@alias VK_INSERT integer # Insert
---@alias VK_DELETE integer # Delete
---@alias VK_CODES VK_PAUSE | VK_CAPITAL | VK_NUMLOCK | VK_SCROLL | VK_INSERT | VK_DELETE

---@alias ENUM_RequestAddressByNameType string

---@alias ENUM_RequestAddressByNameFailCause string

---@alias CANON_TARGET_NONE integer # в прицеле нет враждебных целей, либо до них слишком далеко
---@alias CANON_TARGET_COMMON integer # в прицеле есть враждебные цели
---@alias CANON_TARGET_HEADSHOT integer # прицел направлен на уязвимую точку враждебной цели
---@alias CANNON_TARGET CANON_TARGET_NONE | CANON_TARGET_COMMON | CANON_TARGET_HEADSHOT # цель

---@alias CHAT_TYPE string

---@alias ENUM_GlobalScalerType_MobExp integer | "ENUM_GlobalScalerType_MobExp"
---@alias ENUM_GlobalScalerType_Authority integer | "ENUM_GlobalScalerType_Authority"
---@alias ENUM_GlobalScalerType_QuestExp integer | "ENUM_GlobalScalerType_QuestExp"
---@alias ENUM_GlobalScalerType_Reputation integer | "ENUM_GlobalScalerType_Reputation"
---@alias ENUM_GlobalScalerType_QuestLoot integer | "ENUM_GlobalScalerType_QuestLoot"
---@alias ENUM_GlobalScalerType_AstralLoot integer | "ENUM_GlobalScalerType_AstralLoot"
---@alias ENUM_GlobalScalerType_GoldAndTrashDrop integer | "ENUM_GlobalScalerType_GoldAndTrashDrop"
---@alias ENUM_GlobalScalerType_WorldDrop integer | "ENUM_GlobalScalerType_WorldDrop"
---@alias ENUM_GlobalScalerType_QuestMoney integer | "ENUM_GlobalScalerType_QuestMoney"
---@alias ENUM_GlobalScalerType_PersonalDrop integer | "ENUM_GlobalScalerType_PersonalDrop"
---@alias ENUM_GlobalScalerType ENUM_GlobalScalerType_MobExp | ENUM_GlobalScalerType_Authority | ENUM_GlobalScalerType_QuestExp | ENUM_GlobalScalerType_Reputation | ENUM_GlobalScalerType_QuestLoot | ENUM_GlobalScalerType_AstralLoot | ENUM_GlobalScalerType_GoldAndTrashDrop | ENUM_GlobalScalerType_WorldDrop | ENUM_GlobalScalerType_QuestMoney | ENUM_GlobalScalerType_PersonalDrop

---@alias ENUM_SaleTag_None "ENUM_SaleTag_None" # общий
---@alias ENUM_SaleTag_Discount "ENUM_SaleTag_Discount" # скидка
---@alias ENUM_SaleTag_Discount50 "ENUM_SaleTag_Discount50" # скидка 50%
---@alias ENUM_SaleTag_Discount70 "ENUM_SaleTag_Discount70" # скидка 70%
---@alias ENUM_SaleTag_Discount80 "ENUM_SaleTag_Discount80" # скидка 80%
---@alias ENUM_SaleTag_Discount90 "ENUM_SaleTag_Discount90" # скидка 90%
---@alias ENUM_SaleTag_UniqueItem "ENUM_SaleTag_UniqueItem" # уникальный товар
---@alias ENUM_SaleTag ENUM_SaleTag_None | ENUM_SaleTag_Discount | ENUM_SaleTag_Discount50 | ENUM_SaleTag_Discount70 | ENUM_SaleTag_Discount80 | ENUM_SaleTag_Discount90 | ENUM_SaleTag_UniqueItem

---@alias ENUM_CreatureRace_HUMANOID integer | "ENUM_CreatureRace_HUMANOID"
---@alias ENUM_CreatureRace_BEAST integer | "ENUM_CreatureRace_BEAST"
---@alias ENUM_CreatureRace_UNDEAD integer | "ENUM_CreatureRace_UNDEAD"
---@alias ENUM_CreatureRace_GIANT integer | "ENUM_CreatureRace_GIANT"
---@alias ENUM_CreatureRace_DRAGON integer | "ENUM_CreatureRace_DRAGON"
---@alias ENUM_CreatureRace_ELEMENTAL integer | "ENUM_CreatureRace_ELEMENTAL"
---@alias ENUM_CreatureRace_DEMON integer | "ENUM_CreatureRace_DEMON"
---@alias ENUM_CreatureRace_ABERRATION integer | "ENUM_CreatureRace_ABERRATION"
---@alias ENUM_CreatureRace_MECHANICAL integer | "ENUM_CreatureRace_MECHANICAL"
---@alias ENUM_CreatureRace_GOBLIN integer | "ENUM_CreatureRace_GOBLIN"
---@alias ENUM_CreatureRace_DIVINE integer | "ENUM_CreatureRace_DIVINE"
---@alias ENUM_CreatureRace_KOBOLD integer | "ENUM_CreatureRace_KOBOLD"
---@alias ENUM_CreatureRace_SPIRIT integer | "ENUM_CreatureRace_SPIRIT"
---@alias ENUM_CreatureRace ENUM_CreatureRace_HUMANOID | ENUM_CreatureRace_BEAST | ENUM_CreatureRace_UNDEAD | ENUM_CreatureRace_GIANT | ENUM_CreatureRace_DRAGON | ENUM_CreatureRace_ELEMENTAL | ENUM_CreatureRace_DEMON | ENUM_CreatureRace_ABERRATION | ENUM_CreatureRace_MECHANICAL | ENUM_CreatureRace_GOBLIN | ENUM_CreatureRace_DIVINE | ENUM_CreatureRace_KOBOLD | ENUM_CreatureRace_SPIRIT

---@alias ATTACK_FAILED number
---@alias ATTACK_RESULT_UNKNOWN number
---@alias ATTACK_FAILED_DISTANCE number
---@alias ATTACK_FAILED_IN_FRONT number
---@alias ATTACK_FAILED_NO_LOS number
---@alias ATTACK ATTACK_FAILED | ATTACK_RESULT_UNKNOWN | ATTACK_FAILED_DISTANCE | ATTACK_FAILED_IN_FRONT | ATTACK_FAILED_NO_LOS

---@alias CLIENT_DATA_PARAM_MONEY integer # надо показать в денежном формате
---@alias CLIENT_DATA_DRESS_SLOT integer # надо показать имя слота на персонаже (щит, шлем, костюм...)
---@alias CLIENT_DATA_PLAYER_NAME integer # надо показать имя игрока (возможно, кликабельное)
---@alias CLIENT_DATA_PARAM CLIENT_DATA_PARAM_MONEY | CLIENT_DATA_DRESS_SLOT | CLIENT_DATA_PLAYER_NAME

---@alias ENUM_InterfaceToggle_Target_All integer # Весь интерфейс - для катсцен
---@alias ENUM_InterfaceToggle_Target_ShipConstructionProgress integer # Прогресс строительства корабля
---@alias ENUM_InterfaceToggle_Target_ShipRepairProgress integer # Прогресс ремонта корабля
---@alias ENUM_InterfaceToggle_Target ENUM_InterfaceToggle_Target_All | ENUM_InterfaceToggle_Target_ShipConstructionProgress | ENUM_InterfaceToggle_Target_ShipRepairProgress

---@alias TAKE_ITEMS_RESULT_SUCCESS integer
---@alias TAKE_ITEMS_RESULT_PARTIAL_STACK_LEFT integer
---@alias TAKE_ITEMS_RESULT_FULL_STACK_LEFT integer
---@alias TAKE_ITEMS_RESULT TAKE_ITEMS_RESULT_SUCCESS | TAKE_ITEMS_RESULT_PARTIAL_STACK_LEFT | TAKE_ITEMS_RESULT_FULL_STACK_LEFT

---@alias ITEM_QUALITY_SYSTEM unknown # служебное значение, не означающее никакого качества
---@alias ITEM_QUALITY_JUNK unknown
---@alias ITEM_QUALITY_GOODS unknown
---@alias ITEM_QUALITY_COMMON unknown
---@alias ITEM_QUALITY_UNCOMMON unknown
---@alias ITEM_QUALITY_RARE unknown
---@alias ITEM_QUALITY_EPIC unknown
---@alias ITEM_QUALITY_LEGENDARY unknown
---@alias ITEM_QUALITY_RELIC unknown
---@alias ITEM_QUALITY_DRAGON unknown
---@alias ITEM_QUALITY ITEM_QUALITY_SYSTEM | ITEM_QUALITY_JUNK | ITEM_QUALITY_GOODS | ITEM_QUALITY_COMMON | ITEM_QUALITY_UNCOMMON | ITEM_QUALITY_RARE | ITEM_QUALITY_EPIC | ITEM_QUALITY_LEGENDARY | ITEM_QUALITY_RELIC | ITEM_QUALITY_DRAGON

---@alias ENUM_ShowItemsInfoReason_Unknown ENUM_ShowItemsInfoReason_Unknown # причина неизвестна
---@alias ENUM_ShowItemsInfoReason_XRayLootChest ENUM_ShowItemsInfoReason_XRayLootChest # спец. устройство прислало список предметов в астральном сундуке
---@alias ENUM_ShowItemsInfoReason ENUM_ShowItemsInfoReason_Unknown | ENUM_ShowItemsInfoReason_XRayLootChest

---@alias ENUM_SLASH_COMMAND_INVITE_FAILED_WRONG_FORMAT "ENUM_SLASH_COMMAND_INVITE_FAILED_WRONG_FORMAT" # неверный формат команды /invite
---@alias ENUM_SLASH_COMMAND_KICK_FAILED_WRONG_FORMAT "ENUM_SLASH_COMMAND_KICK_FAILED_WRONG_FORMAT" # неверный формат команды /kick
---@alias ENUM_SLASH_COMMAND_CUSTOM_EMOTE_FAILED_WRONG_FORMAT "ENUM_SLASH_COMMAND_CUSTOM_EMOTE_FAILED_WRONG_FORMAT" # неверный формат команды /emote
---@alias ENUM_SLASH_COMMAND_TRADE_FAILED_WRONG_FORMAT "ENUM_SLASH_COMMAND_TRADE_FAILED_WRONG_FORMAT" # неверный формат команды /trade
---@alias ENUM_SLASH_COMMAND_GUILD_INVITE_FAILED_WRONG_FORMAT "ENUM_SLASH_COMMAND_GUILD_INVITE_FAILED_WRONG_FORMAT" # неверный формат команды /ginvite
---@alias ENUM_SLASH_COMMAND_GUILD_KICK_FAILED_WRONG_FORMAT "ENUM_SLASH_COMMAND_GUILD_KICK_FAILED_WRONG_FORMAT" # неверный формат команды /gkick
---@alias ENUM_SLASH_COMMAND ENUM_SLASH_COMMAND_INVITE_FAILED_WRONG_FORMAT | ENUM_SLASH_COMMAND_KICK_FAILED_WRONG_FORMAT | ENUM_SLASH_COMMAND_CUSTOM_EMOTE_FAILED_WRONG_FORMAT | ENUM_SLASH_COMMAND_TRADE_FAILED_WRONG_FORMAT | ENUM_SLASH_COMMAND_GUILD_INVITE_FAILED_WRONG_FORMAT | ENUM_SLASH_COMMAND_GUILD_KICK_FAILED_WRONG_FORMAT

---@alias ENUM_RequestAddressByNameFailCause_NotExist "ENUM_RequestAddressByNameFailCause_NotExist"
---@alias ENUM_RequestAddressByNameFailCause_NotLoggedIn "ENUM_RequestAddressByNameFailCause_NotLoggedIn"
---@alias ENUM_EnumRequestAddressByNameFailCause ENUM_RequestAddressByNameFailCause_NotExist | ENUM_RequestAddressByNameFailCause_NotLoggedIn

---@alias USDEV_NOT_USABLE_DEVICE integer # это не используемое устройство
---@alias USDEV_USABLE_DEVICE integer # просто используемое устройство
---@alias USDEV_BEAM_CANNON integer
---@alias USDEV_CANNON integer
---@alias USDEV_ENGINE_HORIZONTAL integer
---@alias USDEV_ENGINE_VERTICAL integer
---@alias USDEV_NAVIGATOR integer
---@alias USDEV_REACTOR integer
---@alias USDEV_REMOTE_RUDDER integer
---@alias USDEV_REMOTE_ENGINE_VERTICAL integer
---@alias USDEV_REPAIR integer
---@alias USDEV_RUDDER integer
---@alias USDEV_SCANER integer
---@alias USDEV_VISUAL integer
---@alias USDEV_SHIELD integer
---@alias USDEV USDEV_NOT_USABLE_DEVICE | USDEV_USABLE_DEVICE | USDEV_BEAM_CANNON | USDEV_CANNON | USDEV_ENGINE_HORIZONTAL | USDEV_ENGINE_VERTICAL | USDEV_NAVIGATOR | USDEV_REACTOR | USDEV_REMOTE_RUDDER | USDEV_REMOTE_ENGINE_VERTICAL | USDEV_REPAIR | USDEV_RUDDER | USDEV_SCANER | USDEV_VISUAL | USDEV_SHIELD

---@alias ENUM_MoneyChangeReason_Unspecified integer | "ENUM_MoneyChangeReason_Unspecified"
---@alias ENUM_MoneyChangeReason_DirectTransfer integer | "ENUM_MoneyChangeReason_DirectTransfer"
---@alias ENUM_MoneyChangeReason_TaxPayment integer | "ENUM_MoneyChangeReason_TaxPayment"
---@alias ENUM_MoneyChangeReason_Antifraud integer | "ENUM_MoneyChangeReason_Antifraud"
---@alias ENUM_MoneyChangeReason_LevelUpPayment integer | "ENUM_MoneyChangeReason_LevelUpPayment"
---@alias ENUM_MoneyChangeReason_MWarPayment integer | "ENUM_MoneyChangeReason_MWarPayment"
---@alias ENUM_MoneyChangeReason_Taxes integer | "ENUM_MoneyChangeReason_Taxes"
---@alias ENUM_MoneyChangeReason_Correction integer | "ENUM_MoneyChangeReason_Correction"
---@alias ENUM_MoneyChangeReason ENUM_MoneyChangeReason_Unspecified | ENUM_MoneyChangeReason_DirectTransfer | ENUM_MoneyChangeReason_TaxPayment | ENUM_MoneyChangeReason_Antifraud | ENUM_MoneyChangeReason_LevelUpPayment | ENUM_MoneyChangeReason_MWarPayment | ENUM_MoneyChangeReason_Taxes | ENUM_MoneyChangeReason_Correction

---@alias LEARN_ERROR_LOW_LEVEL unknown
---@alias LEARN_ERROR_NO_CASH unknown
---@alias LEARN_ERROR_NO_PREVIOS_RANKS unknown
---@alias LEARN_ERROR_ALREADY_KNOWN unknown
---@alias LEARN_ERROR_PREVIOS_TRAINING_UNFINISHED unknown
---@alias LEARN_ERROR LEARN_ERROR_LOW_LEVEL | LEARN_ERROR_NO_CASH | LEARN_ERROR_NO_PREVIOS_RANKS | LEARN_ERROR_ALREADY_KNOWN | LEARN_ERROR_PREVIOS_TRAINING_UNFINISHED

---@alias ENUM_TakeItemActionType_Loot "ENUM_TakeItemActionType_Loot" - предмет пришёл из лута
---@alias ENUM_TakeItemActionType_Quest "ENUM_TakeItemActionType_Quest" - предмет получен/забран квестом (выдан в начале, забран в конце, ревард)
---@alias ENUM_TakeItemActionType_QuestAbandon "ENUM_TakeItemActionType_QuestAbandon" - итем забрали по причине отказа от квеста
---@alias ENUM_TakeItemActionType_Spell "ENUM_TakeItemActionType_Spell" - итем появился/исчез по причине каста спела
---@alias ENUM_TakeItemActionType_Vendor "ENUM_TakeItemActionType_Vendor" - итем появился/исчез при разговоре с вендором
---@alias ENUM_TakeItemActionType_Craft "ENUM_TakeItemActionType_Craft" - при каком-то крафтинге (итем взят из крафт бега)
---@alias ENUM_TakeItemActionType_Mail "ENUM_TakeItemActionType_Mail" - из почты
---@alias ENUM_TakeItemActionType_Drop "ENUM_TakeItemActionType_Drop" - игрок выкинул итем
---@alias ENUM_TakeItemActionType_SelfAnnihilation "ENUM_TakeItemActionType_SelfAnnihilation" - итем был уничтожен по времени
---@alias ENUM_TakeItemActionType_Money "ENUM_TakeItemActionType_Money" - простая операция с деньгами
---@alias ENUM_TakeItemActionType_Box "ENUM_TakeItemActionType_Box"
---@alias ENUM_TakeItemActionType_RuneCombine "ENUM_TakeItemActionType_RuneCombine"
---@alias ENUM_TakeItemActionType_SkilledItemGeneration "ENUM_TakeItemActionType_SkilledItemGeneration"
---@alias ENUM_TakeItemActionType_AuctionBet "ENUM_TakeItemActionType_AuctionBet" - игрок делает ставку
---@alias ENUM_TakeItemActionType_AuctionCreate "ENUM_TakeItemActionType_AuctionCreate" - игрок выставляет предмет на аукцион и с него берут залог
---@alias ENUM_TakeItemActionType_AuctionBuyout "ENUM_TakeItemActionType_AuctionBuyout" - игрок выкупает предмет на аукционе
---@alias ENUM_TakeItemActionType_Other "ENUM_TakeItemActionType_Other"
---@alias ENUM_TakeItemActionType_CurrencyExchange "ENUM_TakeItemActionType_CurrencyExchange"
---@alias ENUM_TakeItemActionType_Mentor "ENUM_TakeItemActionType_Mentor"
---@alias ENUM_TakeItemActionType_ItemMall "ENUM_TakeItemActionType_ItemMall"
---@alias ENUM_EnumTakeItemActionType ENUM_TakeItemActionType_Loot | ENUM_TakeItemActionType_Quest | ENUM_TakeItemActionType_QuestAbandon | ENUM_TakeItemActionType_Spell | ENUM_TakeItemActionType_Vendor | ENUM_TakeItemActionType_Craft | ENUM_TakeItemActionType_Mail | ENUM_TakeItemActionType_Drop | ENUM_TakeItemActionType_SelfAnnihilation | ENUM_TakeItemActionType_Money | ENUM_TakeItemActionType_Box | ENUM_TakeItemActionType_RuneCombine | ENUM_TakeItemActionType_SkilledItemGeneration | ENUM_TakeItemActionType_AuctionBet | ENUM_TakeItemActionType_AuctionCreate | ENUM_TakeItemActionType_AuctionBuyout | ENUM_TakeItemActionType_Other | ENUM_TakeItemActionType_CurrencyExchange | ENUM_TakeItemActionType_Mentor | ENUM_TakeItemActionType_ItemMall

---@alias KBF_NONE integer # нет модификаторов
---@alias KBF_SHIFT integer # зажата одна из клавиш "Shift"
---@alias KBF_ALT integer # зажата одна из клавиш "Alt"
---@alias KBF_CTRL integer # зажата одна из клавиш "Ctrl"
---@alias KBF_ANY integer # признак, что модификатор не имеет значения
---@alias KBF KBF_NONE | KBF_SHIFT | KBF_ALT | KBF_CTRL | KBF_ANY

---@alias ENUM_LOADING_PROGRESS_SYNCHRONIZATION_WITH_SERVER "ENUM_LOADING_PROGRESS_SYNCHRONIZATION_WITH_SERVER"
---@alias ENUM_LOADING_PROGRESS_INITIALIZING_LOGIC "ENUM_LOADING_PROGRESS_INITIALIZING_LOGIC"
---@alias ENUM_LOADING_PROGRESS_STARTING_MISSION "ENUM_LOADING_PROGRESS_STARTING_MISSION"
---@alias ENUM_LOADING_PROGRESS_LOADING_RESOURCES "ENUM_LOADING_PROGRESS_LOADING_RESOURCES"
---@alias ENUM_LOADING_PROGRESS_WAITING_AVATAR "ENUM_LOADING_PROGRESS_WAITING_AVATAR"
---@alias ENUM_LOADING_PROGRESS ENUM_LOADING_PROGRESS_SYNCHRONIZATION_WITH_SERVER | ENUM_LOADING_PROGRESS_INITIALIZING_LOGIC | ENUM_LOADING_PROGRESS_STARTING_MISSION | ENUM_LOADING_PROGRESS_LOADING_RESOURCES | ENUM_LOADING_PROGRESS_WAITING_AVATAR


---@alias EFFECT_TYPE_UNKNOWN unknown # не используется
---@alias EFFECT_TYPE_COOLDOWN_STARTED unknown # начался кулдаун
---@alias EFFECT_TYPE_COOLDOWN_FINISHED unknown # кулдаун закончился
---@alias EFFECT_TYPE_SPELL_PREPARED unknown # заклинание приготовлено к использованию
---@alias EFFECT_TYPE_SPELL_ACTIVE_STATE_CHANGED unknown # у заклинания изменено состояние активности
---@alias EFFECT_TYPE EFFECT_TYPE_UNKNOWN | EFFECT_TYPE_COOLDOWN_STARTED | EFFECT_TYPE_COOLDOWN_FINISHED | EFFECT_TYPE_SPELL_PREPARED | EFFECT_TYPE_SPELL_ACTIVE_STATE_CHANGED

---@alias CHAR_SCENE_CHARACTER integer
---@alias CHAR_SCENE_ITEMMALL integer
---@alias CHAR_SCENE_INSPECT integer
---@alias CHAR_SCENE_MOUNT integer
---@alias CHAR_SCENE_CHECKROOM integer
---@alias CHAR_SCENE_FITTING integer
---@alias CHAR_SCENE_ACHIEVEMENT integer
---@alias CHAR_SCENE_GUILD_BOSS integer
---@alias CHAR_SCENE CHAR_SCENE_CHARACTER | CHAR_SCENE_ITEMMALL | CHAR_SCENE_INSPECT | CHAR_SCENE_MOUNT | CHAR_SCENE_CHECKROOM | CHAR_SCENE_FITTING | CHAR_SCENE_ACHIEVEMENT | CHAR_SCENE_GUILD_BOSS

---@alias VIS_ACTION_NPC_TALK unknown # управление визуальным скриптом при разговоре с НПС
---@alias VIS_ACTION VIS_ACTION_NPC_TALK

---@alias ENUM_ColorType_TEXT integer
---@alias ENUM_ColorType_SHADOW integer
---@alias ENUM_ColorType_OUTLINE integer
---@alias EnumColorType ENUM_ColorType_TEXT | ENUM_ColorType_SHADOW | ENUM_ColorType_OUTLINE

---@alias HT_NONE unknown
---@alias HT_UNKNOWN unknown
---@alias HT_OUR unknown
---@alias HT_ENEMYSHIP unknown
---@alias HT_PORTAL unknown
---@alias HT_ALLOD unknown
---@alias HT_ISLAND unknown
---@alias HT HT_NONE | HT_UNKNOWN | HT_OUR | HT_ENEMYSHIP | HT_PORTAL | HT_ALLOD | HT_ISLAND # тип хаба