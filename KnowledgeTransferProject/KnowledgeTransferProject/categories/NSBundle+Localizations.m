//
//  NSBundle+Localizations.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 10/2/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import "NSBundle+Localizations.h"

NSString *const kLanguageDidChangeNotification = @"kLanguageDidChangeNotification";
NSString *const kLocalizationEnglishDefaultPath = @"en";
NSString *const kLocalizationMissedString = @"STRING MISSING";

static NSBundle *_langBundle = nil;

@implementation NSBundle (LanguageBundle)

+ (NSBundle *)languageBundle {
    
    if (!_langBundle) {
        return [self englishLanguageBundle];
    }
    
    return _langBundle;
}

+ (NSBundle *)englishLanguageBundle {
    NSString *path = [[NSBundle mainBundle] pathForResource:kLocalizationEnglishDefaultPath ofType:@"lproj"];
    
    return [NSBundle bundleWithPath:path];
}

+ (NSString *)missedStringValue {
    
    return kLocalizationMissedString;
}

// / Returns the english string associated to the passed key.
+ (NSString *)englishStringForKey:(NSString *)key {
    return [[NSBundle englishLanguageBundle] localizedStringForKey:key value:kLocalizationMissedString table:nil];
}

+ (BOOL)setLanguageBundleWithPath:(NSString *)path {
    
    if (!path) {
        _langBundle = nil;
        return YES;
    }
    
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    
    if (!bundle)
        return NO;
    
    _langBundle = bundle;
    
    return YES;
}

#pragma mark - Device

@end

NSString *LGIString(NSString *key) {
    return [[NSBundle languageBundle] localizedStringForKey:key value:[NSBundle englishStringForKey:key] table:nil];
}


NSData *LGIResource(NSString *key) {
    
    NSString *filePath = LGIResourcePath(key);
    return [NSData dataWithContentsOfFile:filePath];
    
}

NSString *LGIResourcePath(NSString *key) {
    
    NSString *name = [key stringByDeletingPathExtension];
    NSString *extension = [key pathExtension];
    return [[NSBundle languageBundle] pathForResource:name ofType:extension];
    
}

NSString *LGIImagePath(NSString *path) {
    
    NSString *name = [path stringByDeletingPathExtension];
    NSString *type = [path pathExtension];
    
    NSString *systemVersion = UIDevice.currentDevice.systemVersion;
    NSString *iOSMajorSystemVersion = (systemVersion.length) ? [NSString stringWithFormat:@"iOS%@", [systemVersion substringToIndex:1]] : @"iOS";
    
    if (UIScreen.mainScreen.bounds.size.height == 568.0f) {
        /* iPhone 5 */
        NSString *iPhone5SystemVersionImageName = [NSString stringWithFormat:@"%@-%@-568h@2x", name, iOSMajorSystemVersion];
        NSString *iPhone5SystemVersionImagePath = [[NSBundle languageBundle] pathForResource:iPhone5SystemVersionImageName ofType:type];
        
        if ([NSFileManager.defaultManager fileExistsAtPath:iPhone5SystemVersionImagePath])
            return iPhone5SystemVersionImagePath;
        
        NSString *iPhone5ImageName = [NSString stringWithFormat:@"%@-568h@2x", name];
        NSString *iPhone5ImagePath = [[NSBundle languageBundle] pathForResource:iPhone5ImageName ofType:type];
        
        if ([NSFileManager.defaultManager fileExistsAtPath:iPhone5ImagePath])
            return iPhone5ImagePath;
    }
    
    if (UIScreen.mainScreen.scale == 2.0) {
        /* Retina */
        NSString *retinaSystemVersionImageName = [NSString stringWithFormat:@"%@-%@@2x", name, iOSMajorSystemVersion];
        NSString *retinaSystemVersionImagePath = [[NSBundle languageBundle] pathForResource:retinaSystemVersionImageName ofType:type];
        
        if ([NSFileManager.defaultManager fileExistsAtPath:retinaSystemVersionImagePath])
            return retinaSystemVersionImagePath;
        
        NSString *retinaImageName = [NSString stringWithFormat:@"%@@2x", name];
        NSString *retinaImagePath = [[NSBundle languageBundle] pathForResource:retinaImageName ofType:type];
        
        if ([NSFileManager.defaultManager fileExistsAtPath:retinaImagePath])
            return retinaImagePath;
    }
    
    NSString *standardSystemVersionImageName = [NSString stringWithFormat:@"%@-%@", name, iOSMajorSystemVersion];
    NSString *standardSystemVersionImagePath = [[NSBundle languageBundle] pathForResource:standardSystemVersionImageName ofType:type];
    
    if ([NSFileManager.defaultManager fileExistsAtPath:standardSystemVersionImagePath])
        return standardSystemVersionImagePath;
    
    NSString *standardImagePath = [[NSBundle languageBundle] pathForResource:name ofType:type];
    
    if ([NSFileManager.defaultManager fileExistsAtPath:standardImagePath])
        return standardImagePath;
    
    return nil;
}

UIImage *LGIImage(NSString *key) {
    
    NSString *path = [NSString stringWithFormat:@"%@/%@",[[[NSBundle languageBundle] resourcePath] lastPathComponent],key];
    return [UIImage imageNamed:path];
}