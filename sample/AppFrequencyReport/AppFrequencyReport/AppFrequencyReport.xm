// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>

%hook FBWorkspaceEventQueue

- (void)executeOrAppendEvent:(id)arg
{
    NSLog(@"qiweizf : executeOrAppendEvent arg = %@",arg);

    %orig;
}

%end

%hook SBIconController

- (void)iconTapped:(id)arg1
{
    NSLog(@"qiweizf : icon tapped");
    
    %orig;
}
- (void)_launchFromIconView:(id)arg1
{
    NSLog(@"qiweizf _launchFromIconView : %@",arg1);
    
    %orig;
}

%end


%hook SBFolderController
- (void)prepareToLaunchTappedIcon:(id)arg1 completionHandler:(id)arg2
{
    NSLog(@"qiweizf prepare to launch");
    %orig(arg1,arg2);
}
- (void)setCurrentPageIndexToListDirectlyContainingIcon:(id)arg1 animated:(BOOL)arg2 completion:(id)arg3
{
    NSLog(@"qiweizf set current page index to");
}

- (BOOL)isDisplayingIcon:(id)arg1
{
    BOOL ret =  %orig;
    NSLog(@"qiweizf is displaying icon : %@",@(ret));
    return ret;
}

- (BOOL)_isAppIconForceTouchControllerPeekingOrShowing
{
    BOOL ret =  %orig;
    NSLog(@"qiweizf isAppIconForceTouchControllerPeekingOrShowing : %@",@(ret));
    return ret;
}
%end


//%hook SBApplicationIcon
//
//- (BOOL)isApplicationIcon
//{
//    BOOL ret =  %orig;
//    NSLog(@"qiweizf sbapplicationicon is application icon : %@",@(ret));
//    return ret;
//}
//
//- (BOOL)isAnyTerminationAssertionHeld
//{
//    BOOL ret =  %orig;
//    NSLog(@"qiweizf sbapplicationicon isAnyTerminationAssertionHeld : %@",@(ret));
//    return ret;
//}
//
//%end
//
//%hook SBIcon
//
//- (BOOL)isApplicationIcon
//{
//    BOOL ret =  %orig;
//    NSLog(@"qiweizf sbicon is application icon : %@",@(ret));
//    return ret;
//}
//
//
//- (BOOL)isFolderIcon
//{
//    BOOL ret =  %orig;
//    NSLog(@"qiweizf sbicon isfoldericon : %@",@(ret));
//    return ret;
//}
//
//%end
//
//
//%hook SBFolderIcon
//
//- (BOOL)isFolderIcon
//{
//    BOOL ret =  %orig;
//    NSLog(@"qiweizf sbfoldericon isfoldericon : %@",@(ret));
//    return ret;
//}
//
//%end
