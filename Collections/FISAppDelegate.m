//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

/**
 
 * Define your methods here.
 
 */

- (NSArray*) arrayBySortingArrayAscending:(NSArray *)ascArray{
    
    NSSortDescriptor *sortByNameAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    
    NSArray *ascendingNames = [ascArray sortedArrayUsingDescriptors:@[sortByNameAsc]];
    
    return ascendingNames;
    
}

- (NSArray*) arrayBySortingArrayDescending:(NSArray *)descArray{
    
    NSSortDescriptor *sortByNameDesc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    
    NSArray *descendingNames = [descArray sortedArrayUsingDescriptors:@[sortByNameDesc]];
    
    return descendingNames;
}

- (NSArray*) arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)firstLastArray{
    
    NSMutableArray *swapArray = [firstLastArray mutableCopy];
    
    NSUInteger endIndex = swapArray.count - 1;
    
    [swapArray exchangeObjectAtIndex:0 withObjectAtIndex:endIndex];
    
    return swapArray;
}

- (NSArray*) arrayByReversingArray:(NSArray *)revArray{
    
    NSMutableArray *reversedArray = [[NSMutableArray alloc]init];
    
    for (NSInteger i = revArray.count -1; i >= 0; i--) {
        
        [reversedArray addObject:revArray[i]];
        
        NSLog(@"*****\n\n\n%lu", i);
    }
    
    return reversedArray;
}

- (NSString*) stringInBasicLeetFromString:(NSString *) originalString{
    
//    NSString *leetString = originalString;
//    
//    leetString = [leetString stringByReplacingOccurrencesOfString:@"a" withString:@"4"];
//    
//    leetString = [leetString stringByReplacingOccurrencesOfString:@"s" withString:@"5"];
//    
//    leetString = [leetString stringByReplacingOccurrencesOfString:@"i" withString:@"1"];
//    
//    leetString = [leetString stringByReplacingOccurrencesOfString:@"l" withString:@"1"];
//    
//    leetString = [leetString stringByReplacingOccurrencesOfString:@"e" withString:@"3"];
//    
//    leetString = [leetString stringByReplacingOccurrencesOfString:@"t" withString:@"7"];
//    
//    NSLog(@"\n\n\n\n%@", leetString);
//    
//    return leetString;
    
    NSDictionary *conversions = @{ @"a" : @"4" ,
                                   @"s" : @"5" ,
                                   @"i" : @"1" ,
                                   @"l" : @"1" ,
                                   @"e" : @"3" ,
                                   @"t" : @"7" };
    
    NSString *leetString = originalString;
    
    for (NSString *key in conversions) {
        
        leetString = [leetString stringByReplacingOccurrencesOfString:key withString:conversions[key]];
    }
    
    //NSLog(@"********\n\n\n\n%@", leetString);
    
    return leetString;
}

- (NSArray*) splitArrayIntoNegativesAndPositives:(NSArray *)splitArray{
    
    NSMutableArray *posNumbers = [[NSMutableArray alloc]init];
    
    NSMutableArray *negNumbers = [[NSMutableArray alloc]init];
    
    for (NSNumber *allNumbers in splitArray) {
        
        if ([allNumbers floatValue] < 0 ) {
            
            [negNumbers addObject:allNumbers];
        
        } else if ([allNumbers floatValue] >= 0) {
        
            [posNumbers addObject:allNumbers];
        }
    }

    return @[negNumbers, posNumbers];
}

- (NSArray*) namesOfHobbitsInDictionary:(NSDictionary *)hobbitDictionary{
    
//    NSMutableArray *names = [[NSMutableArray alloc] init];
//    
//    for (NSString *key in hobbitDictionary) {
//        
//        if ([hobbitDictionary[key] isEqualToString:@"hobbit"]) {
//        
//            [names addObject:key];
//        }
//    }
//    
//    return names;
    
    NSArray *names = [hobbitDictionary allKeysForObject:@"hobbit"];
    
    return names;
}

- (NSArray*) stringsBeginningWithAInArray:(NSArray *)inArray{
    
    NSPredicate *startsWithAPredicate = [NSPredicate predicateWithFormat:@"self BEGINSWITH[cd] 'a'"];
    
    NSArray *startsWithA = [inArray filteredArrayUsingPredicate:startsWithAPredicate];
    
    return startsWithA;
}

- (NSInteger) sumOfIntegersInArray:(NSArray *)integerArray{
    
    NSInteger sum = 0;
        
    for(NSNumber *num in integerArray) {
        
        sum += [num intValue];
    }
        
    return sum;
}

- (NSArray*) arrayByPluralizingStringsInArray:(NSArray *)pluralArray{
    
    NSMutableArray *pluralForm = [[NSMutableArray alloc] init];
    
    for (NSString *singular in pluralArray) {
        
        NSString *plural = @"";
        
        if ([singular containsString:@"oo"]) {
        
            plural = [singular stringByReplacingOccurrencesOfString:@"oo" withString:@"ee"];
        
        } else if ([singular containsString:@"ox"]) {
        
            if ([singular hasPrefix:@"b"]) {
                
                plural = [singular stringByAppendingString:@"es"];
            
            } else {
            
                plural = [singular stringByAppendingString:@"en"];
            
            }
        
        } else if ([singular hasSuffix:@"us"]) {
        
            plural = [singular stringByReplacingOccurrencesOfString:@"us" withString:@"i"];
        
        } else if ([singular hasSuffix:@"um"]) {
        
            plural = [singular stringByReplacingOccurrencesOfString:@"um" withString:@"a"];
        
        } else {
           
            plural = [singular stringByAppendingString:@"s"];
        
        }
        
        [pluralForm addObject:plural];
    }
    
    return pluralForm;
}

- (NSDictionary*) countsOfWordsInString:(NSString *)wordCountString{
    
    NSArray *allPunctuations = @[@".", @",", @";", @"-"];
    
    NSString *remPunctuations = wordCountString;
    
    for (NSString *punctuations in allPunctuations) {
        
        remPunctuations = [remPunctuations stringByReplacingOccurrencesOfString:punctuations withString:@""];
    }
    
    NSString *noPunctuationslowercase = [remPunctuations lowercaseString];
    
    NSArray *wordArray = [noPunctuationslowercase componentsSeparatedByString:@" "];
    
    NSMutableDictionary *wordCount = [[NSMutableDictionary alloc] init];
    
    for (NSString *word in wordArray) {
        
        if ([wordCount[word] integerValue] > 0) {
        
            NSInteger newCount = [wordCount[word] integerValue] + 1;
            
            wordCount[word] = @(newCount);
        
        } else {
        
            wordCount[word] = @1;
        }
    }
    
    //NSLog(@"*****\n\n\n\n%@", wordCount);
    
    return wordCount;
}

- (NSDictionary*) songsGroupedByArtistFromArray:(NSArray *)artistArray{
    
    NSMutableDictionary *songsByArtist = [[NSMutableDictionary alloc] init];  //create empty dictionary
    
    for (NSString *artistTitleInArray in artistArray){  //setting count limit
        
        //NSLog(@"*****\n\n\%@", artistTitleInArray);
        
        NSArray *components = [artistTitleInArray componentsSeparatedByString:@" - "];  //separating dashes and spaces out
        
        //NSLog(@"********\n\n\n%@", components);
        
        NSString *artist = [components objectAtIndex:0];  //string for objects at 0 point
        
        NSString *title = [components objectAtIndex:1];   //string for objects after 0 point
        
        //NSLog(@"********\n\n\n%@", songsByArtist);
        
        if ([[songsByArtist allKeys] containsObject:artist]) {   //looking for artist (keys) in dictionary
            
            [songsByArtist[artist] addObject:title];             //adding title (value) to songsByArtist[artist] (key)
            
        } else {
            
            songsByArtist[artist] = [@[title] mutableCopy];
        }
    }
    
    NSSortDescriptor *sortByAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    
    for (NSString *artist in songsByArtist) {
        
        [songsByArtist[artist] sortUsingDescriptors:@[sortByAsc]];
    }
    
   

    return songsByArtist;
}

@end










