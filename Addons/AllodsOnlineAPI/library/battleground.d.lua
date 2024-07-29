---@meta

---@class battleground
battleground = {}

--[[ ENUMS --]]

---@alias RecapturablePlayerSpawnPlaceState_Free integer | "RecapturablePlayerSpawnPlaceState_Free" - точка свободна
---@alias RecapturablePlayerSpawnPlaceState_UnderAssault integer | "RecapturablePlayerSpawnPlaceState_UnderAssault" - точка в процессе захвата
---@alias RecapturablePlayerSpawnPlaceState_AssaultFrozen integer | "RecapturablePlayerSpawnPlaceState_AssaultFrozen" - захват точки приостановлен
---@alias RecapturablePlayerSpawnPlaceState_Captured integer | "RecapturablePlayerSpawnPlaceState_Captured" - точка захвачена
---@alias ENUM_RecapturablePlayerSpawnPlaceState RecapturablePlayerSpawnPlaceState_Free | RecapturablePlayerSpawnPlaceState_UnderAssault | RecapturablePlayerSpawnPlaceState_AssaultFrozen | RecapturablePlayerSpawnPlaceState_Captured


--[[ EVENTS --]]

---@alias EVENT_BATTLEGROUND_CHECKPOINT_ADDED "EVENT_BATTLEGROUND_CHECKPOINT_ADDED"
---@alias EVENT_BATTLEGROUND_CHECKPOINT_REMOVED "EVENT_BATTLEGROUND_CHECKPOINT_REMOVED"
---@alias EVENT_BATTLEGROUND_CHECKPOINTS_CHANGED "EVENT_BATTLEGROUND_CHECKPOINTS_CHANGED"
---@alias EVENT_BATTLEGROUND_CHECKPOINT_STATE_CHANGED "EVENT_BATTLEGROUND_CHECKPOINT_STATE_CHANGED"

---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_BATTLEGROUND_CHECKPOINT_ADDED)
---@overload fun(eventFunction: fun(data: { id: ObjectId }), sysEventName: EVENT_BATTLEGROUND_CHECKPOINT_REMOVED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_BATTLEGROUND_CHECKPOINTS_CHANGED)
---@overload fun(eventFunction: fun(data: { checkpointId: ObjectId }), sysEventName: EVENT_BATTLEGROUND_CHECKPOINT_STATE_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return BattlegroundMarkId | nil
function battleground.GetAvatarMark() end

---@param checkpointId ObjectId # id контрольной точки
---@return nil | CheckpointInfo
function battleground.GetCheckpointInfo( checkpointId ) end
---@alias CheckpointInfo { name: WString, textureId: TextureId, state: ENUM_RecapturablePlayerSpawnPlaceState, ownerMarkId: BattlegroundMarkId | nil, prevState: ENUM_RecapturablePlayerSpawnPlaceState, prevOwnerMarkId: BattlegroundMarkId | nil, capturedTime: integer | nil, capturedDuration: integer | nil, gain: integer | nil, defendersCount: integer | nil, attackersCount: integer | nil, oldMechanics: boolean, radius: number, isEnable: boolean }

---@return table<integer, ObjectId>
function battleground.GetCheckpoints() end

---@param checkpointId ObjectId
---@return BattlegroundMarkId | nil
function battleground.GetCheckpointTeam( checkpointId ) end

---@return SpellId | nil
function battleground.GetHeroesArenaQuitSpell() end

---@return SpellId | nil
function battleground.GetHeroesArenaStartStageSpell() end

---@param checkpointId ObjectId
---@return ObjectId | nil
function battleground.GetLinkedCheckpoint( checkpointId ) end

---@param playerId ObjectId
---@return BattlegroundMarkId | nil
function battleground.GetPlayerMark( playerId )end

---@param checkpointId ObjectId
---@return boolean
function battleground.IsCheckpoint( checkpointId ) end