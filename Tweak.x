// #import <UIKit/UIKit.h>

%hook PMLockedAppLimiter
- (id)playbackLimiters {
    return NULL;
}
%end

%hook PMSettingsRootViewModel
- (id)unlockAppManager {
    return NULL;
}
%end

%hook PMLockedAppLimiter
- (void)handleChangeUnlockStatusNotification:(id)arg1 {
    arg1 = NULL;
    %orig;
}
%end

%hook PMLockedAppLimiter
- (bool)playbackLimiter:(id)arg1 shouldLimitPlaybackWithContentType:(long long)arg2 {
    arg2 = 100;
    return %orig;
}
%end

%hook PMLockedAppLimiter
- (void)addPlaybackLimiter:(id)arg1 {
    arg1 = NULL;
    %orig;
}
%end

%hook PMKAnalyticsPlaybackMonitor
- (void)setPlaybackStartDate:(id)arg1 {
    arg1 = NULL;
    %orig;
}
%end

%hook PMKAVPlayerItem
- (void)setPlaybackSessionItem:(id)arg1 {
    arg1 = NULL;
    %orig;
}
%end

%hook PMLockedAppLimiter
- (void)setPlaybackLimiters:(id)arg1 {
    arg1 = NULL;
    %orig;
}
%end

