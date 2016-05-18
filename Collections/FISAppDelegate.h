//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */

- (NSArray*) arrayBySortingArrayAscending: (NSArray*) ascArray;

- (NSArray*) arrayBySortingArrayDescending: (NSArray*) descArray;

- (NSArray*) arrayBySwappingFirstObjectWithLastObjectInArray: (NSArray*) firstLastArray;

- (NSArray*) arrayByReversingArray: (NSArray*) revArray;

- (NSString*) stringInBasicLeetFromString: (NSString*) leetString;

- (NSArray*) splitArrayIntoNegativesAndPositives: (NSArray*) splitArray;

- (NSArray*) namesOfHobbitsInDictionary: (NSDictionary*) hobbitDictionary;

- (NSArray*) stringsBeginningWithAInArray: (NSArray*) inArray;

- (NSInteger) sumOfIntegersInArray: (NSArray*) integerArray;

- (NSArray*) arrayByPluralizingStringsInArray: (NSArray*) pluralArray;

- (NSDictionary*) countsOfWordsInString: (NSString*) wordCountString;

- (NSDictionary*) songsGroupedByArtistFromArray: (NSArray*) artistArray;

@end
