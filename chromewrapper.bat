set "CHROMEWRAPPER_FLAGS=--component-updater=--disable-pings --disable-breakpad --disable-crash-reporter --extension-content-verification=enforce_strict --extensions-install-verification=enforce_strict --incognito --js-flags=--jitless --no-pings"

set "CHROMEWRAPPER_FEATURES_ENABLE=--enable-features=BlockCrossPartitionBlobUrlFetching,CapReferrerToOriginOnCrossOrigin,ClearCrossSiteCrossBrowsingContextGroupWindowName,ContentSettingsPartitioning,EnableCsrssLockdown,NetworkServiceCodeIntegrity,PartitionConnectionsByNetworkIsolationKey,PartitionVisitedLinkDatabase,PrefetchPrivacyChanges,RendererAppContainer,ScopeMemoryCachePerContext,SplitCodeCacheByNetworkIsolationKey,SplitCacheByNetworkIsolationKey,SplitCacheByIncludeCredentials,SplitCacheByNavigationInitiator,StrictOriginIsolation,WinSboxRestrictCoreSharingOnRenderer"

set "CHROMEWRAPPER_FEATURES_DISABLE=--disable-features=AutofillServerCommunication,InterestFeedV2,LensStandalone,MediaDrmPreprovisioning,OptimizationHints,Reporting,CrashReporting,DocumentReporting"

start "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe" --start-maximized %CHROMEWRAPPER_FLAGS% %CHROMEWRAPPER_FEATURES_ENABLE% %CHROMEWRAPPER_FEATURES_DISABLE% %*
