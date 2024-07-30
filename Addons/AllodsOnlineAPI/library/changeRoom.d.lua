---@meta

---@class changeRoom
changeRoom = {}

--[[ ENUMS --]]

---@alias SEX_UNKNOWN number
---@alias SEX_MALE number
---@alias SEX_FEMALE number
---@alias SEX SEX_UNKNOWN | SEX_MALE | SEX_FEMALE

---@alias CHARGEN_EQUIP_TYPE_NONE number # показывать без экипировки
---@alias CHARGEN_EQUIP_TYPE_HIGH_LEVEL number # показывать в специальной высокоуровневой экипировке
---@alias CHARGEN_EQUIP_TYPE CHARGEN_EQUIP_TYPE_NONE | CHARGEN_EQUIP_TYPE_HIGH_LEVEL

--[[ EVENTS --]]

---@alias EVENT_CHANGE_ROOM_CHARACTER_SCENE_CAMERA_READY "EVENT_CHANGE_ROOM_CHARACTER_SCENE_CAMERA_READY"
---@alias EVENT_CHANGE_ROOM_STARTED "EVENT_CHANGE_ROOM_STARTED"
---@alias EVENT_CHANGE_ROOM_ZOOM_TRIGGER_CHANGED "EVENT_CHANGE_ROOM_ZOOM_TRIGGER_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_CHANGE_ROOM_CHARACTER_SCENE_CAMERA_READY)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CHANGE_ROOM_STARTED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_CHANGE_ROOM_ZOOM_TRIGGER_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@param show boolean
function changeRoom.ChargenShowHelm( show ) end

---@param isMale boolean
---@return nil | { hasActualVariationInfo: boolean, primaryVariationTemplateInfo: AvatarVariationTemplateInfo, isTrio: boolean, maleVariationTemplateInfo?: AvatarVariationTemplateInfo, femaleVariationTempalteInfo?: AvatarVariationTemplateInfo, pets: nil | table<integer, table> }
function changeRoom.GetAvatarTemplate( isMale ) end
---@alias AvatarVariationTemplateInfo { skins: table<integer, table<integer, boolean>>, skinColors:  table<integer, table<integer, boolean>>, hairs:  table<integer, table<integer, boolean>>, hairColors: table<integer, table<integer, boolean>>, faces: table<integer, table<integer, boolean>>, facials: table<integer, table<integer, boolean>>, additionals: table<integer, table<integer, boolean>>, morphPresets: table<integer, table<integer, boolean>> }

---@return nil | { ticketCurrencyId: nil | CurrencyId, sexChangeCost: integer, petChangeCost: integer, petNameChangeCost: integer, petFacialChangeCost: integer, whiteList: CostsVariationsTable, greyList: CostsVariationsTable }
function changeRoom.GetCosts() end
---@alias CostsVariationsTable { skin: integer, skinColors: integer, petColor: integer, hairColor: integer, hair: integer, facial: integer, face: integer, body: integer, additional: integer }

---@return nil | { primary: PlayerIndexesVariationsTable, trio2: nil | PlayerIndexesVariationsTable, trio3: nil | PlayerIndexesVariationsTable, pet: nil | PlayerIndexesVariationsTable, petIndex: integer | nil }
function changeRoom.GetPlayerIndexes() end
---@alias PlayerIndexesVariationsTable { name: WString, sexId: SEX, variations: { skin: integer, skinColor: integer, hair: integer, hairColor: integer, face: integer, facial: integer, additional: integer, body: integer } }

---@return nil | { primaryId: ObjectId | nil, trio2Id: ObjectId | nil, trio3Id: ObjectId | nil, petId: ObjectId | nil }
function changeRoom.GetSceneAvatarInfo() end

---@return boolean
function changeRoom.IsZoomEnabled() end

---@return boolean
function changeRoom.IsZoomOnFace() end

---@return boolean
function changeRoom.IsZoomOnFar() end

function changeRoom.RemoveScene() end

---@param characterId ObjectId
function changeRoom.ResetSceneCharacterRotation( characterId ) end

---@param characterId ObjectId
---@param angle number
function changeRoom.RotateSceneCharacter( characterId, angle ) end

---@param cameraPath string
---@param targetPath string
---@param delay number
function changeRoom.SetCameraPath( cameraPath, targetPath, delay ) end

---@param equipType CHARGEN_EQUIP_TYPE
function changeRoom.SetChargenEquipType( equipType ) end

---@param wtControl3D Control3DSafe
---@param sceneName string
function changeRoom.SetScene( wtControl3D, sceneName ) end

---@param isPrimaryMale boolean
---@param isTrio2Male boolean
---@param isTrio3Male boolean
---@param petIndex integer | nil
---@param growthIndex integer | nil
function changeRoom.SetSceneAvatarByTemplate( isPrimaryMale, isTrio2Male, isTrio3Male, petIndex, growthIndex ) end

---@param characterId ObjectId
function changeRoom.SetSceneCharacterMouseRotation( characterId ) end

---@param characterId ObjectId
---@param pos { posX: number, posY: number, posZ: number }
function changeRoom.SetSceneCharacterPos( characterId, pos ) end

---@param characterId ObjectId
---@param scale number
function changeRoom.SetSceneCharacterScaleFactor( characterId, scale ) end

---@param characterId ObjectId
---@param variation { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetsIndex: integer }
function changeRoom.SetSceneCharacterVariation( characterId, variation ) end

function changeRoom.ToggleZoom() end

---@param isMale boolean
---@param primary { skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetsIndex: integer }
---@param trio2 nil | { name: WString, isMale: boolean, skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetsIndex: integer }
---@param trio3 nil | { name: WString, isMale: boolean, skinTexture: integer, skinColor: integer, hairType: integer, hairColor: integer, face: integer, facialType: integer, additional: integer, morphPresetsIndex: integer }
---@param pet nil | table
---@param petIndex integer | nil
---@param price integer
--- TODO: arguments not equal to types description // absolute chaos
function changeRoom.Use( isMale, primary, trio2, trio3, pet ) end