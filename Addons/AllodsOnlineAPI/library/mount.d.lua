---@meta

---@class mount
mount = {}

--[[ ENUMS --]]



--[[ EVENTS --]]

---@alias EVENT_ACTIVE_MOUNT_CHANGED "EVENT_ACTIVE_MOUNT_CHANGED"
---@alias EVENT_ACTIVE_MOUNT_SKIN_CHANGED "EVENT_ACTIVE_MOUNT_SKIN_CHANGED"
---@alias EVENT_ACTIVE_MOUNT_TIME_LEFT_CHANGED "EVENT_ACTIVE_MOUNT_TIME_LEFT_CHANGED"
---@alias EVENT_STABLE_FOOD_CHANGED "EVENT_STABLE_FOOD_CHANGED"
---@alias EVENT_STABLE_MOUNT_ADDED "EVENT_STABLE_MOUNT_ADDED"
---@alias EVENT_STABLE_MOUNT_CHANGED "EVENT_STABLE_MOUNT_CHANGED"
---@alias EVENT_STABLE_MOUNT_HUNGRY "EVENT_STABLE_MOUNT_HUNGRY"
---@alias EVENT_STABLE_MOUNT_LEVEL_CHANGED "EVENT_STABLE_MOUNT_LEVEL_CHANGED"
---@alias EVENT_STABLE_MOUNT_REMOVED "EVENT_STABLE_MOUNT_REMOVED"
---@alias EVENT_STABLE_MOUNTS_CHANGED "EVENT_STABLE_MOUNTS_CHANGED"
---@alias EVENT_STABLE_MOUNT_SKINS_CHANGED "EVENT_STABLE_MOUNT_SKINS_CHANGED"
---@alias EVENT_STABLE_MOUNT_TALENTS_CHANGED "EVENT_STABLE_MOUNT_TALENTS_CHANGED"
---@alias EVENT_STABLE_SLOTS_COUNT_CHANGED "EVENT_STABLE_SLOTS_COUNT_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_ACTIVE_MOUNT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ACTIVE_MOUNT_SKIN_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_ACTIVE_MOUNT_TIME_LEFT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_STABLE_FOOD_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_STABLE_MOUNT_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_STABLE_MOUNT_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_STABLE_MOUNT_HUNGRY)
---@overload fun(eventFunction: fun(data: { id: ObjectId, level: integer }), sysEventName: EVENT_STABLE_MOUNT_LEVEL_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_STABLE_MOUNT_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_STABLE_MOUNTS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_STABLE_MOUNT_SKINS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_STABLE_MOUNT_TALENTS_CHANGED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_STABLE_SLOTS_COUNT_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

function mount.Dismount() end

---@param mountId ObjectId
---@param amount integer | nil
function mount.Feed( mountId, amount ) end

---@return ObjectId | nil
function mount.GetActive() end

---@return nil | table<integer, ObjectId>
function mount.GetActiveContextActions() end

---@return integer
function mount.GetActiveSatiation() end

---@return ObjectId
function mount.GetActiveSkin() end

---@return integer | nil
function mount.GetActiveTimeLeftMs() end

---@param mountId ObjectId
---@return nil | table<integer, { name: WString | nil, description: WString | nil, hasCustomRank: boolean, talents: table<integer, MountTalentId> }>
function mount.GetAvailableTalents( mountId ) end

---@return ObjectId | nil
function mount.GetExoMount() end

---@param mountId ObjectId
---@return nil | { id: ObjectId, grade: integer, name: WString, description: ValuedText | nil, sysName: string | nil, debugName: string | nil, canGainExperience: boolean, experience: integer, level: integer, levelExperience: integer, nextLevelExperience: integer, satiationMs: integer, canBeFeeded: boolean, canBeMorphed: boolean, isProbe: boolean, isExoMount: boolean, experienceToday: integer, timeActivatedLeftMs: integer | nil, timeTotalLeftMs: integer | nil, currentLevelStats: { speed: number, health: integer, regen: number, castTimeMs: integer }, nextLevelStats: { speed: number, health: integer, regen: number, castTimeMs: integer }, hasLender: boolean, lenderId: ObjectId | nil, hasBorrower: boolean, borrowerId: ObjectId | nil, image?: TextureId }
--- TODO: what if current level is max: is nextLevelStats exist?
function mount.GetInfo( mountId ) end

---@return ObjectId | nil
function mount.GetMetamorph() end

---@return { switchCost: integer, switchCostcurrencyId: CurrencyId | nil }
function mount.GetMetamorphBaseInfo() end

---@return WString | nil
function mount.GetMetamorphName() end

---@return table<integer, ObjectId>
function mount.GetMounts() end

---@param mountId ObjectId
---@return table<integer, ObjectId>
--- TODO: docs missed argument
function mount.GetMountSkins( mountId ) end

---@param mountId ObjectId
---@return nil | table<integer, ObjectId>
function mount.GetSelectedTalents( mountId ) end

---@param skinId ObjectId
---@return nil | { id: ObjectId, mountId: ObjectId, name: WString, description: WString, sourceDescription: WString, enabled: boolean, debugName: string | nil, image?: TextureId }
function mount.GetSkinInfo( skinId ) end

---@return nil | { singleFeedSatiationTime: integer, maxSatiationTime: integer, maxLevel: integer, maxGrade: integer, slotsCount: integer, foodCount: integer, maxExperienceToday: integer }
function mount.GetStableInfo() end

---@return CurrencyId | nil
function mount.GetTalentCurrency() end

---@param mountTalentId MountTalentId
---@return nil | { price: integer, unlock: UnlockId, unlockItems: table<integer, ItemId>, talentGroups: table<integer, MountTalentGroupId>, conflictGroups: table<integer, MountTalentGroupId> }
function mount.GetTalentInfo( mountTalentId ) end

---@param unitId ObjectId
---@return nil | { health: integer, healthlinit: integer }
function mount.GetUnitMountHealth( unitId ) end

---@param mountId ObjectId
---@return ValuedObject
function mount.GetValuedObject( mountId ) end

---@param skinId ObjectId
---@return boolean
function mount.HasSwitchCost( skinId ) end

---@param mountId ObjectId
---@return boolean
function mount.IsMountExist( mountId ) end

---@return boolean
function mount.IsStableExist() end

---@param skinId ObjectId
function mount.Ride( skinId ) end

---@param mountId ObjectId
---@param talents table<integer, MountTalentId | nil>
function mount.SelectTalents( mountId, talents ) end

---@param skinId ObjectId
function mount.SetMetamorphSkin( skinId ) end

---@param skinId ObjectId
function mount.SetSkin( skinId ) end