#line 1 "/Users/everettjf/projects/AppFrequencyReport/AppFrequencyReport/AppFrequencyReport.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBIconController; @class SBFolderController; @class FBWorkspaceEventQueue; 
static void (*_logos_orig$_ungrouped$FBWorkspaceEventQueue$executeOrAppendEvent$)(_LOGOS_SELF_TYPE_NORMAL FBWorkspaceEventQueue* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$FBWorkspaceEventQueue$executeOrAppendEvent$(_LOGOS_SELF_TYPE_NORMAL FBWorkspaceEventQueue* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBIconController$iconTapped$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBIconController$iconTapped$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBIconController$_launchFromIconView$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBIconController$_launchFromIconView$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBFolderController$prepareToLaunchTappedIcon$completionHandler$)(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$SBFolderController$prepareToLaunchTappedIcon$completionHandler$(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$SBFolderController$setCurrentPageIndexToListDirectlyContainingIcon$animated$completion$)(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST, SEL, id, BOOL, id); static void _logos_method$_ungrouped$SBFolderController$setCurrentPageIndexToListDirectlyContainingIcon$animated$completion$(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST, SEL, id, BOOL, id); static BOOL (*_logos_orig$_ungrouped$SBFolderController$isDisplayingIcon$)(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST, SEL, id); static BOOL _logos_method$_ungrouped$SBFolderController$isDisplayingIcon$(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST, SEL, id); static BOOL (*_logos_orig$_ungrouped$SBFolderController$_isAppIconForceTouchControllerPeekingOrShowing)(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBFolderController$_isAppIconForceTouchControllerPeekingOrShowing(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST, SEL); 

#line 9 "/Users/everettjf/projects/AppFrequencyReport/AppFrequencyReport/AppFrequencyReport.xm"



static void _logos_method$_ungrouped$FBWorkspaceEventQueue$executeOrAppendEvent$(_LOGOS_SELF_TYPE_NORMAL FBWorkspaceEventQueue* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg) {
    NSLog(@"qiweizf : executeOrAppendEvent arg = %@",arg);

    _logos_orig$_ungrouped$FBWorkspaceEventQueue$executeOrAppendEvent$(self, _cmd, arg);
}






static void _logos_method$_ungrouped$SBIconController$iconTapped$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    NSLog(@"qiweizf : icon tapped");
    
    _logos_orig$_ungrouped$SBIconController$iconTapped$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$SBIconController$_launchFromIconView$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    NSLog(@"qiweizf _launchFromIconView : %@",arg1);
    
    _logos_orig$_ungrouped$SBIconController$_launchFromIconView$(self, _cmd, arg1);
}






static void _logos_method$_ungrouped$SBFolderController$prepareToLaunchTappedIcon$completionHandler$(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    NSLog(@"qiweizf prepare to launch");
    _logos_orig$_ungrouped$SBFolderController$prepareToLaunchTappedIcon$completionHandler$(self, _cmd, arg1,arg2);
}

static void _logos_method$_ungrouped$SBFolderController$setCurrentPageIndexToListDirectlyContainingIcon$animated$completion$(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, BOOL arg2, id arg3) {
    NSLog(@"qiweizf set current page index to");
}


static BOOL _logos_method$_ungrouped$SBFolderController$isDisplayingIcon$(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    BOOL ret =  _logos_orig$_ungrouped$SBFolderController$isDisplayingIcon$(self, _cmd, arg1);
    NSLog(@"qiweizf is displaying icon : %@",@(ret));
    return ret;
}


static BOOL _logos_method$_ungrouped$SBFolderController$_isAppIconForceTouchControllerPeekingOrShowing(_LOGOS_SELF_TYPE_NORMAL SBFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BOOL ret =  _logos_orig$_ungrouped$SBFolderController$_isAppIconForceTouchControllerPeekingOrShowing(self, _cmd);
    NSLog(@"qiweizf isAppIconForceTouchControllerPeekingOrShowing : %@",@(ret));
    return ret;
}



















































static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$FBWorkspaceEventQueue = objc_getClass("FBWorkspaceEventQueue"); MSHookMessageEx(_logos_class$_ungrouped$FBWorkspaceEventQueue, @selector(executeOrAppendEvent:), (IMP)&_logos_method$_ungrouped$FBWorkspaceEventQueue$executeOrAppendEvent$, (IMP*)&_logos_orig$_ungrouped$FBWorkspaceEventQueue$executeOrAppendEvent$);Class _logos_class$_ungrouped$SBIconController = objc_getClass("SBIconController"); MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(iconTapped:), (IMP)&_logos_method$_ungrouped$SBIconController$iconTapped$, (IMP*)&_logos_orig$_ungrouped$SBIconController$iconTapped$);MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(_launchFromIconView:), (IMP)&_logos_method$_ungrouped$SBIconController$_launchFromIconView$, (IMP*)&_logos_orig$_ungrouped$SBIconController$_launchFromIconView$);Class _logos_class$_ungrouped$SBFolderController = objc_getClass("SBFolderController"); MSHookMessageEx(_logos_class$_ungrouped$SBFolderController, @selector(prepareToLaunchTappedIcon:completionHandler:), (IMP)&_logos_method$_ungrouped$SBFolderController$prepareToLaunchTappedIcon$completionHandler$, (IMP*)&_logos_orig$_ungrouped$SBFolderController$prepareToLaunchTappedIcon$completionHandler$);MSHookMessageEx(_logos_class$_ungrouped$SBFolderController, @selector(setCurrentPageIndexToListDirectlyContainingIcon:animated:completion:), (IMP)&_logos_method$_ungrouped$SBFolderController$setCurrentPageIndexToListDirectlyContainingIcon$animated$completion$, (IMP*)&_logos_orig$_ungrouped$SBFolderController$setCurrentPageIndexToListDirectlyContainingIcon$animated$completion$);MSHookMessageEx(_logos_class$_ungrouped$SBFolderController, @selector(isDisplayingIcon:), (IMP)&_logos_method$_ungrouped$SBFolderController$isDisplayingIcon$, (IMP*)&_logos_orig$_ungrouped$SBFolderController$isDisplayingIcon$);MSHookMessageEx(_logos_class$_ungrouped$SBFolderController, @selector(_isAppIconForceTouchControllerPeekingOrShowing), (IMP)&_logos_method$_ungrouped$SBFolderController$_isAppIconForceTouchControllerPeekingOrShowing, (IMP*)&_logos_orig$_ungrouped$SBFolderController$_isAppIconForceTouchControllerPeekingOrShowing);} }
#line 113 "/Users/everettjf/projects/AppFrequencyReport/AppFrequencyReport/AppFrequencyReport.xm"
