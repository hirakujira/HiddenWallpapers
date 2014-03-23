#include <substrate.h>

static NSArray * (*_logos_meta_orig$_ungrouped$Bokeh$presetWallpaperOptions)(Class, SEL); 
static NSArray * _logos_meta_method$_ungrouped$Bokeh$presetWallpaperOptions (Class, SEL); 
static NSArray * _logos_meta_method$_ungrouped$Bokeh$presetWallpaperOptions(Class self, SEL _cmd) {
    
    return @[@{@"bokehVariant": @"Blue_v01", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehBlue_thumb", @"thumbnailImageName": @"BokehBlue_thumb"},
            @{@"bokehVariant": @"Green_v01", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehGreen_thumb", @"thumbnailImageName": @"BokehGreen_thumb"},
            @{@"bokehVariant": @"Yellow_v03", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehYellow_thumb", @"thumbnailImageName": @"BokehYellow_thumb"},
            @{@"bokehVariant": @"Red_v01", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehRed_thumb", @"thumbnailImageName": @"BokehRed_thumb"},
            @{@"bokehVariant": @"Silver_v01", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehSilver_thumb", @"thumbnailImageName": @"BokehSilver_thumb"},
            @{@"bokehVariant": @"BokehGradient", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehGradient_thumb", @"thumbnailImageName": @"BokehGradient_thumb"},
            @{@"bokehVariant": @"BokehGradientSilver", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehGradientSilver_thumb", @"thumbnailImageName": @"BokehGradientSilver_thumb"},
            @{@"bokehVariant": @"Rainbow", @"kSBUIMagicWallpaperThumbnailNameKey": @"", @"thumbnailImageName": @""},
            @{@"bokehVariant": @"Blue_T_v01", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehBlue_T_thumb", @"thumbnailImageName": @"BokehBlue_T_thumb"},
            @{@"bokehVariant": @"Green_T_v01", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehGreen_T_thumb", @"thumbnailImageName": @"BokehGreen_T_thumb"},
            @{@"bokehVariant": @"Pink_T_v01", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehPink_T_thumb", @"thumbnailImageName": @"BokehPink_T_thumb"},
            @{@"bokehVariant": @"Red_T_v01", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehRed_T_thumb", @"thumbnailImageName": @"BokehRed_T_thumb"},
			@{@"bokehVariant": @"Rainbow", @"kSBUIMagicWallpaperThumbnailNameKey": @"BokehRainbow_thumb", @"thumbnailImageName": @"BokehRainbow_thumb"}]; //Set "bokehVariant" to any undefined string to get "Rainbow" effect
}


%hook NSBundle
+ (NSBundle *)bundleWithPath:(NSString *)path
{
    if ([[%orig bundleIdentifier] isEqualToString:@"com.apple.ProceduralWallpapers"]) {
        Class WKInfiniteImpulseResponseFilter = [%orig principalClass];
        Class _logos_class$_ungrouped$Bokeh = objc_getClass("Bokeh"); 
        Class _logos_metaclass$_ungrouped$Bokeh = object_getClass(_logos_class$_ungrouped$Bokeh);
        MSHookMessageEx(_logos_metaclass$_ungrouped$Bokeh, @selector(presetWallpaperOptions), (IMP)&_logos_meta_method$_ungrouped$Bokeh$presetWallpaperOptions, (IMP*)&_logos_meta_orig$_ungrouped$Bokeh$presetWallpaperOptions);
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
