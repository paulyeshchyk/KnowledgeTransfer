//
//  NSBundle+LanguageBundle.h
//  Horizon
//
//  Created by Attila Tamasi on 5/23/13.
//  Copyright (c) 2013 EPAM Empathy Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

// receive notification when the language changes
extern NSString *const kLanguageDidChangeNotification;

extern NSString *const kLocalizationMissedString;

/**
 * Language Support category.
 */
@interface NSBundle (LanguageBundle)

/**
 * Get to use bundle localize strings.
 * @return A bundle by default if nothing is set.
 */
+ (NSBundle *)languageBundle;

/**
 * Set the default language.
 * @return BOOL Returns YES if the language has changed
 */
+ (BOOL)setLanguageBundleWithPath:(NSString *)path;

/**
 *
 */
+ (NSString *)missedStringValue;

@end

/**
 * Function for string localization
 * @param name as key
 * @return As localized string. If not available, returns the English Translation.
 */
NSString *LGIString(NSString *key);


/**
 * Function for resource localization
 * @param name as key
 * @return As localized resource. If not available, returns the English Translation.
 */
NSData *LGIResource(NSString *key);



/**
 * Function for image localization
 * @param name as key
 * @return As localized image. If not available, returns the English Translation.
 */
UIImage *LGIImage(NSString *key);

/**
 * Function for image path localization
 * @param name as key
 * @return As localized image path. If not available, returns the English Translation.
 */
NSString *LGIImagePath(NSString *path);


/**
 * Function for resource path localization
 * @param name as key
 * @return As localized resource path. If not available, returns the English Translation.
 */
NSString *LGIResourcePath(NSString *key);