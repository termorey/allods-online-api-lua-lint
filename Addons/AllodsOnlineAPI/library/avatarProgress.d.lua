---@meta

--[[ ENUMS --]]

---@alias ENUM_DevelopmentSource_Kill integer | "ENUM_DevelopmentSource_Kill" # за убийство моба
---@alias ENUM_DevelopmentSource_Quest integer | "ENUM_DevelopmentSource_Quest" # за выполнение задания
---@alias ENUM_DevelopmentSource_Cheat integer | "ENUM_DevelopmentSource_Cheat" # чит
---@alias ENUM_DevelopmentSource_Fatigue integer | "ENUM_DevelopmentSource_Fatigue" # за накопленный отдых
---@alias ENUM_DevelopmentSource_Impact integer | "ENUM_DevelopmentSource_Impact"
---@alias ENUM_DevelopmentSource_ImpactDirect integer | "ENUM_DevelopmentSource_ImpactDirect"
---@alias ENUM_DevelopmentSource ENUM_DevelopmentSource_Kill | ENUM_DevelopmentSource_Quest | ENUM_DevelopmentSource_Cheat | ENUM_DevelopmentSource_Fatigue | ENUM_DevelopmentSource_Impact | ENUM_DevelopmentSource_ImpactDirect

---@alias ENUM_DevelopmentTrack_Experience integer | "ENUM_DevelopmentTrack_Experience" # опыт
---@alias ENUM_DevelopmentTrack_Reputation integer | "ENUM_DevelopmentTrack_Reputation" # репутация с определённой фракцией
---@alias ENUM_DevelopmentTrack ENUM_DevelopmentTrack_Experience | ENUM_DevelopmentTrack_Reputation

--[[ EVENTS --]]

---@alias EVENT_AVATAR_PROGRESS_GAINED "EVENT_AVATAR_PROGRESS_GAINED"
---@alias EVENT_AVATAR_STATS_CAN_IMPROVE_CHANGED "EVENT_AVATAR_STATS_CAN_IMPROVE_CHANGED"
---@alias EVENT_BONUS_POOL_CHANGED "EVENT_BONUS_POOL_CHANGED"
---@alias EVENT_BONUS_POOLS_CHANGED "EVENT_BONUS_POOLS_CHANGED"
---@alias EVENT_GLOBAL_RATES_CHANGED "EVENT_GLOBAL_RATES_CHANGED"

---@overload fun(eventFunction: fun(data: { type: ENUM_DevelopmentTrack, source: ENUM_DevelopmentSource, sysSource: ENUM_DevelopmentSource, total: number, bonus: number, leveL: number, value: number, isPvPExperience: boolean, factionId?: FactionId }), sysEventName: EVENT_AVATAR_PROGRESS_GAINED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_AVATAR_STATS_CAN_IMPROVE_CHANGED)
---@overload fun(eventFunction: fun(data: { type: ENUM_DevelopmentTrack, sysType: ENUM_DevelopmentTrack }), sysEventName: EVENT_BONUS_POOL_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_BONUS_POOLS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_GLOBAL_RATES_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

