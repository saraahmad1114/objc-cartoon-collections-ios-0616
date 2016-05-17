//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

-(NSString*)stringByRollCallingDwarfsInArray:(NSArray*)dwarfs{
    NSString* rollCall= @"";
    
    for(NSUInteger i = 0; i < [dwarfs count]; i++){
        NSUInteger dwarfsPlace = i + 1;
        
        if (i==[dwarfs count]-1) {
            rollCall =  [rollCall stringByAppendingFormat:@"%lu. %@", dwarfsPlace, dwarfs[i]];
        }
        else {
            rollCall =  [rollCall stringByAppendingFormat:@"%lu. %@ | ", dwarfsPlace, dwarfs[i]];
        }
    }
    return rollCall;
}
-(NSArray*)arrayOfPlaneteerShoutsFromArray: (NSArray*)powers{
    NSMutableArray* allPowers = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [powers count]; i++){
        NSString *string = [NSString stringWithFormat: @"%@!", [powers[i] uppercaseString]];
        [allPowers addObject:string];
//        [allPowers addObject:@"!"];
        //[power!, power!]
    }
    return allPowers;
}
-(NSString*)summonCaptainPlanetWithPowers: (NSArray*)powers{
    NSMutableString* combinedPowers = [[NSMutableString alloc]initWithFormat:@"Let our powers combine:\n"];
    NSArray* shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [shouts count]; i++){
        [combinedPowers appendFormat:@"%@\n", shouts[i]];
    }
    [combinedPowers appendFormat:@"Go Planet!"]; 
    return combinedPowers;
}
-(NSString*)firstPremiumCheeseInStock:(NSArray*)chessesInStock premiumCheeseNames:(NSArray*)premiumCheeseNames{
    NSMutableArray* newCheeses= [[NSMutableArray alloc]init];
    NSMutableString* finalCheese= [[NSMutableString alloc] init];
    for(NSUInteger i = 0; i< [premiumCheeseNames count]; i++){
        for (NSUInteger m = 0; m< [chessesInStock count]; m++){
            if (chessesInStock[m] == premiumCheeseNames[i]){
            [newCheeses addObject:chessesInStock[m]];
                }
           
        }
        }
    if ([newCheeses count]== 0){
        return @"No premium cheeses in stock.";
    }
    finalCheese = newCheeses[0];
    return finalCheese;
}
-(NSArray*) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray*)moneyBags{
    NSMutableArray* billBags  = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++){
        NSString* moneySign = @"$";
        [moneySign stringByAppendingString:moneyBags[i]];
        [billBags addObject:moneyBags[i]];
    }
    return billBags;
}

@end
