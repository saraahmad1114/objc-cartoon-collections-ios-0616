//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */
-(NSString*)stringByRollCallingDwarfsInArray:(NSArray*)dwarfs;
-(NSArray*)arrayOfPlaneteerShoutsFromArray: (NSArray*)powers;
-(NSString*)summonCaptainPlanetWithPowers: (NSString*)powers;
-(NSString*)firstPremiumCheeseInStock:(NSArray*)chessesInStock premiumCheeseNames:(NSArray*)premiumCheeseNames;
-(NSArray*) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray*)moneyBags;

@end
