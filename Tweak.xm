#import <objc/runtime.h>
#import <CoreFoundation/CoreFoundation.h>
#include <substrate.h>

static NSArray * (*_logos_meta_orig$_ungrouped$SBFProceduralWallpaper$presetWallpaperOptions)(Class, SEL); 
static NSArray * _logos_meta_method$_ungrouped$SBFProceduralWallpaper$presetWallpaperOptions (Class, SEL); 
static NSArray * _logos_meta_method$_ungrouped$SBFProceduralWallpaper$presetWallpaperOptions(Class self, SEL _cmd) {
    NSMutableArray *allWallpapers = [NSMutableArray array];
    [allWallpapers addObject:@{@"bokehVariant": @"Blue_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehBlue_thumb",
                             @"thumbnailImageName": @"BokehBlue_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"Green_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehGreen_thumb",
                             @"thumbnailImageName": @"BokehGreen_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"Yellow_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehYellow_thumb",
                             @"thumbnailImageName": @"BokehYellow_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"Red_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehRed_thumb",
                             @"thumbnailImageName": @"BokehRed_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"Silver_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehSilver_thumb",
                             @"thumbnailImageName": @"BokehSilver_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"BokehGradient",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehGradient_thumb",
                             @"thumbnailImageName": @"BokehGradient_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"BokehGradientSilver",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehGradientSilver_thumb",
                             @"thumbnailImageName": @"BokehGradientSilver_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"Blue_T_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehBlue_T_thumb",
                             @"thumbnailImageName": @"BokehBlue_T_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"Green_T_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehGreen_T_thumb",
                             @"thumbnailImageName": @"BokehGreen_T_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"Pink_T_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehPink_T_thumb",
                             @"thumbnailImageName": @"BokehPink_T_thumb"}];
    [allWallpapers addObject:@{@"bokehVariant": @"Red_T_v01",
                             @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehRed_T_thumb",
                             @"thumbnailImageName": @"BokehRed_T_thumb"}];

    return allWallpapers;
}

%hook NSBundle
+ (NSBundle *)bundleWithPath:(NSString *)path
{
    if ([[%orig bundleIdentifier] isEqualToString:@"com.apple.ProceduralWallpapers"]) {
        Class WKInfiniteImpulseResponseFilter = [%orig principalClass];
        Class _logos_class$_ungrouped$SBFProceduralWallpaper = objc_getClass("Bokeh"); 
        Class _logos_metaclass$_ungrouped$SBFProceduralWallpaper = object_getClass(_logos_class$_ungrouped$SBFProceduralWallpaper);
        MSHookMessageEx(_logos_metaclass$_ungrouped$SBFProceduralWallpaper, @selector(presetWallpaperOptions), (IMP)&_logos_meta_method$_ungrouped$SBFProceduralWallpaper$presetWallpaperOptions, (IMP*)&_logos_meta_orig$_ungrouped$SBFProceduralWallpaper$presetWallpaperOptions);
    }
    return %orig;
}
%end

//==============================================================================
%ctor
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    %init;
    [pool release];
}