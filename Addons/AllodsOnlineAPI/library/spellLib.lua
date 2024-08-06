---@meta

---@class spellLib
spellLib = {}

--[[ ENUMS --]]

---@alias ENUM_SubElement
---| "ENUM_SubElement_PHYSICAL"
---| "ENUM_SubElement_FIRE"
---| "ENUM_SubElement_COLD"
---| "ENUM_SubElement_LIGHTNING"
---| "ENUM_SubElement_HOLY"
---| "ENUM_SubElement_SHADOW"
---| "ENUM_SubElement_ASTRAL"
---| "ENUM_SubElement_POISON"
---| "ENUM_SubElement_DISEASE"
---| "ENUM_SubElement_ACID"

--[[ EVENTS --]]



--[[ FUNCTIONS --]]

---@param UnitId ObjectId
---@return boolean
function spellLib.BuffsCanDispel ( UnitId ) end

---@param SpellId SpellId
---@param ignoreCasterResources boolean | nil
---@return boolean
--- TODO: missed docs argument
function spellLib.CanRunAvatar( SpellId, ignoreCasterResources ) end

---@param SpellId SpellId
---@return boolean
function spellLib.CanRunAvatarEx( SpellId ) end

---@param id SpellId
---@return nil | table<integer, ActionGroupId>
function spellLib.GetActionGroups( id ) end

---@param SpellId SpellId
---@return nil | { angle: number, centerObj: VisObjectId | nil, fillerObj: VisObjectId | nil, leftObj: VisObjectId | nil, rightObj: VisObjectId | nil }
function spellLib.GetAESectorProps( SpellId ) end

---@param SpellId SpellId
---@return nil | { durationMs: integer, remainingMs: integer, debugName: string | nil }
function spellLib.GetCooldown( SpellId ) end

---@param SpellId SpellId
---@return nil | { manaCost: integer, prepareDuration: integer, range: number, minRange: number, radius: number, predictedCooldown: integer, debugName?: string | nil }
function spellLib.GetCurrentValues( SpellId ) end

---@param SpellId SpellId
---@return nil | { name: WString, description: WString, sysName: string, objectId: ObjectId | nil, debugName?: string | nil }
function spellLib.GetDescription( SpellId ) end

---@param spellId SpellId
---@return nil | ObjectId
function spellLib.GetDurationBuff( spellId ) end

---@param id SpellId
---@return table<integer, { sysName: string, name: WString, image: TextureId | nil }>
function spellLib.GetGroups( id ) end

---@param id SpellId
---@return table<integer, WString>
function spellLib.GetGroupsDescriptions( id ) end

---@param SpellId SpellId
---@return TextureId | nil
function spellLib.GetIcon( SpellId ) end

---@param objectId ObjectId
---@return SpellId
--- TODO: what if spell not exist?
function spellLib.GetObjectSpell( objectId ) end

---@param SpellId SpellId
---@return nil | { launchWhenReady: boolean, prepareDuration: integer, baseManaCostPercentage: number, range: number, minRange: number, targetType: number, sysSubElement: ENUM_SubElement, level: integer, rank: integer, isHelpful: boolean, isHarmful: boolean, isChanneled: boolean, isFaurySpell: boolean, uiSpellBookPageType: integer, sysNameAEMark: string | nil }
function spellLib.GetProperties( SpellId ) end

---@param SpellId SpellId
---@return nil | table<ObjectId, number>
function spellLib.GetRequiredBuffs( SpellId ) end

---@param spellId SpellId
---@return nil | table<integer, ObjectId>
function spellLib.GetRequiredResources( spellId ) end

---@param id SpellId
---@return nil | { casterConditions: RequirementsTable, casterResources: RequirementsTable, targetConditions: RequirementsTable }
function spellLib.GetRequirements( id ) end

---@param SpellId SpellId
---@return nil | { enabled: boolean, autocastOn: boolean, prepared: boolean, isActive: boolean }
function spellLib.GetState( SpellId ) end

---@param spellId SpellId
---@return ValuedObject
function spellLib.GetValuedObject( spellId ) end

---@param spellId SpellId
---@return boolean
function spellLib.HasDurationBuff( spellId ) end