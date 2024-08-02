---@meta

---@class remort
remort = {}

---@class remortCreation
remortCreation = {}

--[[ ENUMS --]]

---@alias ENUM_RedefineRaceType_NONE unknown -- смена расы не требуется
---@alias ENUM_RedefineRaceType_NORMAL unknown -- обычный режим смены расы
---@alias ENUM_RedefineRaceType_TRAITOR unknown -- режим "предателя" фракции
---@alias ENUM_RedefineRaceType ENUM_RedefineRaceType_NONE | ENUM_RedefineRaceType_NORMAL | ENUM_RedefineRaceType_TRAITOR

--[[ EVENTS --]]

---@alias EVENT_REMORT_ABILITY_SHARING_REQUEST "EVENT_REMORT_ABILITY_SHARING_REQUEST"
---@alias EVENT_REMORT_LIST_GAINED "EVENT_REMORT_LIST_GAINED"
---@alias EVENT_REMORT_SHOW_CREATION_DIALOG "EVENT_REMORT_SHOW_CREATION_DIALOG"
---@alias EVENT_REMORT_VARIATIONS_INFO_CHANGED "EVENT_REMORT_VARIATIONS_INFO_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_REMORT_ABILITY_SHARING_REQUEST)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_REMORT_LIST_GAINED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_REMORT_SHOW_CREATION_DIALOG)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_REMORT_VARIATIONS_INFO_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return boolean
function remort.CanGetRemortsList() end

---@param abilities AbilityId | SpellId
function remort.ChooseSharedAbilities( abilities ) end

---@param show boolean
function remortCreation.ChargenShowHelm( show ) end

---@param avatarName WString
---@param template { faction: integer, race: integer, class: integer, sex: integer }
---@param primary { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer }
---@param trio2 nil | { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer, name: WString, isMale: boolean }
---@param trio3 nil | { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer, name: WString, isMale: boolean }
---@param petIndex nil | integer
---@param petVariation nil | { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer, name: WString }
function remortCreation.CreateAvatar( avatarName, template, primary, trio2, trio3, petIndex, petVariation ) end

---@param templateIndexes { faction: integer, race: integer, class: integer, sex: integer }
---@return nil | { hasActualVariationInfo: boolean, primaryVariationTemplateInfo: table, isTrio: boolean, maleVariationTemplateInfo?: table, femaleVariationTemplateInfo?: table, pets: nil | table<integer, table> }
function remortCreation.GetAvatarTemplate( templateIndexes ) end

---@return table<integer, { growthCount: integer, factions: table<integer, { name: WString, sysName: string, raceChangeType: ENUM_RedefineRaceType, classes: table<integer, { name: WString, sysName: string, uiName: WString, classId: CharacterClassId }> }>, sexes: table<integer, { name: WString }> }>
function remortCreation.GetAvatarTemplatesInfo() end

---@param faction integer
---@param race integer
---@param class integer
---@return { name: WString, description: WString, sysName: string, classId: CharacterClassId }
function remortCreation.GetAvatarTemplatesRaceClassInfo( faction, race, class ) end

---@return nil | { primaryId: ObjectId | nil, trio2Id: ObjectId | nil, trio3Id: ObjectId | nil, petId: ObjectId | nil }
function remortCreation.GetSceneAvatarInfo() end

---@return { isActual: boolean, isInProgress: boolean }
function remortCreation.GetVariationsStatus() end

---@return boolean
function remortCreation.IsZoomEnabled() end

---@return boolean
function remortCreation.IsZoomOnFace() end

---@return boolean
function remortCreation.IsZoomOnFar() end

function remortCreation.RemoveScene() end

function remortCreation.RemoveSceneAvatar() end

function remortCreation.RequestAllVariations() end

---@param avatarName WString
---@param template { faction: integer, race: integer, class: integer, sex: integer }
---@param primary { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer }
---@param trio2 nil | { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer, name: WString, isMale: boolean }
---@param trio3 nil | { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer, name: WString, isMale: boolean }
---@param petIndex nil | integer
---@param petVariation nil | { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer, name: WString }
---@param resetedAvatarId PersistentId
function remortCreation.ResetAvatar( avatarName, template, primary, trio2, trio3, petIndex, petVariation, resetedAvatarId ) end

---@param characterId ObjectId
function remortCreation.ResetSceneCharacterRotation( characterId ) end

---@param characterId ObjectId
---@param angle number
function remortCreation.RotateSceneCharacter( characterId, angle ) end

---@param cameraPath string
---@param targetPath string
---@param delay number
function remortCreation.SetCameraPath( cameraPath, targetPath, delay ) end

---@param equipType CHARGEN_EQUIP_TYPE
function remortCreation.SetChargenEquipType( equipType ) end

---@param wtControl3D Control3DSafe
---@param sceneName string
function remortCreation.SetScene( wtControl3D, sceneName ) end

---@param avatarServerId integer
function remortCreation.SetSceneAvatar( avatarServerId ) end

---@param template { faction: integer, race: integer, class: integer, sex: integer, avatarId: number | nil }
---@param isTrio2Male boolean
---@param isTrio3Male boolean
---@param petIndex integer | nil
---@param growthIndex integer
function remortCreation.SetSceneAvatarByTemplate( template, isTrio2Male, isTrio3Male, petIndex, growthIndex ) end

---@param characterId ObjectId
function remortCreation.SetSceneCharacterMouseRotation( characterId ) end

---@param characterId ObjectId
---@param pos { posX: number, posY: number, posZ: number }
function remortCreation.SetSceneCharacterPos( characterId, pos ) end

---@param characterId ObjectId
---@param scale number
function remortCreation.SetSceneCharacterScaleFactor( characterId, scale ) end

---@param characterId ObjectId
---@param variation { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetOndex: integer }
function remortCreation.SetSceneCharacterVariation( characterId, variation ) end

function remortCreation.ToggleZoom() end

---@return table<integer, { abilityId: AbilityId | nil, spellId: SpellId | nil, isSelected: boolean }>
function remort.GetAbilitiesForSharing() end

---@param classId CharacterClassId
---@return table<integer, { ability: AbilityId | nil, spellId: SpellId | nil, isSelected: boolean }>
function remort.GetClassAbilitiesForSharing( classId ) end

---@return nil | table<string, RequirementsTable>
function remort.GetCreateRemortRequirements() end

---@param unitId ObjectId
---@return WString | nil
function remort.GetMainName( unitId ) end

---@return table<integer, { name: WString, avatarServerId: integer, isActive: boolean, isPrimary: boolean, level: integer, sysClassName: string | nil, sysRaceName: string | nil }>
function remort.GetRemortsList() end

---@return nil | { switchConditions: RequirementsTable, createConditions: RequirementsTable, resetConditions: RequirementsTable }
function remort.GetRequirements() end

---@param oldRaceSysName unknown
---@return nil | table<string, RequirementsTable>
--- TODO: unknown dosc argument
function remort.GetResetRemortRequirements( oldRaceSysName ) end

---@return integer
function remort.GetSharedAbilitiesCount() end

---@param unitId ObjectId
---@return boolean
function remort.IsAlt( unitId ) end

---@param name WString
---@param anonymous boolean
function remort.SwitchRemort( name, anonymous ) end