---@meta

---@class progressiveDownloadLib
progressiveDownloadLib = {}

--[[ ENUMS --]]

---@alias PROGRESSIVE_DOWNLOAD_ACTIVITY_NO unknown - прогрессивная загрузка не производится
---@alias PROGRESSIVE_DOWNLOAD_ACTIVITY_LOW unknown - загружаются данные низкой степени важности
---@alias PROGRESSIVE_DOWNLOAD_ACTIVITY_MEDIUM unknown - загружаются данные средней степени важности
---@alias PROGRESSIVE_DOWNLOAD_ACTIVITY_HIGH unknown - загружаются данные высокой степени важности
---@alias PROGRESSIVE_DOWNLOAD_ACTIVITY PROGRESSIVE_DOWNLOAD_ACTIVITY_NO | PROGRESSIVE_DOWNLOAD_ACTIVITY_LOW | PROGRESSIVE_DOWNLOAD_ACTIVITY_MEDIUM | PROGRESSIVE_DOWNLOAD_ACTIVITY_HIGH

--[[ EVENTS --]]

---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_API_MISMATCH "EVENT_PROGRESSIVEDOWNLOADING_ERROR_API_MISMATCH"
---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_CONNECTION_LOST "EVENT_PROGRESSIVEDOWNLOADING_ERROR_CONNECTION_LOST"
---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_ACCESS_DENIED "EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_ACCESS_DENIED"
---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_GENERAL "EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_GENERAL"
---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_NOT_READY "EVENT_PROGRESSIVEDOWNLOADING_ERROR_NOT_READY"
---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_PROTO "EVENT_PROGRESSIVEDOWNLOADING_ERROR_PROTO"
---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_SIMPLE "EVENT_PROGRESSIVEDOWNLOADING_ERROR_SIMPLE"
---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_DISK_FULL "EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_DISK_FULL"
---@alias EVENT_PROGRESSIVEDOWNLOADING_HALTEDPACKS_CHANGED "EVENT_PROGRESSIVEDOWNLOADING_HALTEDPACKS_CHANGED"
---@alias EVENT_PROGRESSIVEDOWNLOADING_LATESTMSGS_CHANGED "EVENT_PROGRESSIVEDOWNLOADING_LATESTMSGS_CHANGED"
---@alias EVENT_PROGRESSIVEDOWNLOADING_LATESTPACKS_CHANGED "EVENT_PROGRESSIVEDOWNLOADING_LATESTPACKS_CHANGED"
---@alias EVENT_PROGRESSIVEDOWNLOADING_MAP_PERCENT_CHANGED "EVENT_PROGRESSIVEDOWNLOADING_MAP_PERCENT_CHANGED"
---@alias EVENT_PROGRESSIVEDOWNLOADING_RECHECKPACKS_CHANGED "EVENT_PROGRESSIVEDOWNLOADING_RECHECKPACKS_CHANGED"
---@alias EVENT_PROGRESSIVEDOWNLOADING_STATUS_CHANGED "EVENT_PROGRESSIVEDOWNLOADING_STATUS_CHANGED"
---@alias EVENT_PROGRESSIVEDOWNLOADING_TOPPACKS_CHANGED "EVENT_PROGRESSIVEDOWNLOADING_TOPPACKS_CHANGED"
---@alias EVENT_PROGRESSIVEDOWNLOADING_ERROR_WARNING_RECONNECTIONS "EVENT_PROGRESSIVEDOWNLOADING_ERROR_WARNING_RECONNECTIONS"
---@alias EVENT_PROGRESSIVEDOWNLOADING_WHITEINFO_CHANGED "EVENT_PROGRESSIVEDOWNLOADING_WHITEINFO_CHANGED"

---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_API_MISMATCH)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_CONNECTION_LOST)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_ACCESS_DENIED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_GENERAL)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_NOT_READY)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_PROTO)
---@overload fun(eventFunction: fun(data: { packName: string, isFatal: boolean }), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_SIMPLE)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_FILE_DISK_FULL)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_HALTEDPACKS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_LATESTMSGS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_LATESTPACKS_CHANGED)
---@overload fun(eventFunction: fun(data: { percent: integer, hasActivity: boolean }), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_MAP_PERCENT_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_RECHECKPACKS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_STATUS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_TOPPACKS_CHANGED)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_ERROR_WARNING_RECONNECTIONS)
---@overload fun(eventFunction: fun(), sysEventName: EVENT_PROGRESSIVEDOWNLOADING_WHITEINFO_CHANGED)
function common.RegisterEventHandler( eventFunction, sysEventName, params, requireMainThread ) end

--[[ FUNCTIONS --]]

---@return integer
function progressiveDownloadLib.GetDownloadRateLimit() end

---@return integer[]
function progressiveDownloadLib.GetHaltedPacks() end

---@return integer[]
function progressiveDownloadLib.GetLatestDownloadedPacks() end

---@return { type: integer, timeStamp: integer, packName?: string, isFatal?: boolean }
function progressiveDownloadLib.GetLatestErrors() end

---@return integer
function progressiveDownloadLib.GetMapDownloadedPercent() end

---@param id integer
---@param mode integer
---@return nil | { id: integer, name: string, archiveSize: number, isBlack: boolean, isHiRes: boolean, isLoaded: boolean, isReady: boolean, isRecheck: boolean, isHalted: boolean, progress: number, downloadTotal: number, downloadDone: number, downloadLeft: number, calculatedPriority: integer, submitedPriority: integer, actualPriority: integer, actualEnabled: boolean, isPriorityinitialized: boolean }
function progressiveDownloadLib.GetPackInfoById( id, mode ) end

---@param priority number
---@return number
function progressiveDownloadLib.GetPriorityGroup( priority ) end

---@return 0 | number
function progressiveDownloadLib.GetPriorityGroupsCount() end

---@return integer[]
function progressiveDownloadLib.GetRecheckPacks() end

---@return nil | { activityLevel: PROGRESSIVE_DOWNLOAD_ACTIVITY, isHiResRequired: boolean, isActivityRequired: boolean, topPacksCount: number, netDownSpeed: number, netUpSpeed: number, netConnectionsCount: number, isGameCenterConnected: boolean, gameCenterReconnectionsCount: number, baseDataStatus: table, hiResDataStatus: table, fullDataStatus: table, fastCheckQueueInfo: nil | { count: number, size: number }, forcedHiResPacksinfo: table }
function progressiveDownloadLib.GetStatus() end

---@param start unknown
---@param size unknown
---@return integer[]
--- TODO: missed docs arguments type
function progressiveDownloadLib.SetTopPacksWindow( start, size ) end

---@return integer
function progressiveDownloadLib.GetUploadRateLimit() end

---@return nil | { acceptedId: number, latestKnownId: number, latestKnownIdCompatibleGameVersion: WString }
function progressiveDownloadLib.GetWhiteDescr() end

---@param limit integer
function progressiveDownloadLib.SetDownloadRateLimit( limit ) end

---@param start integer
---@param size integer
function progressiveDownloadLib.SetTopPacksWindow( start, size ) end

---@param limit integer
function progressiveDownloadLib.SetUploadRateLimit( limit ) end