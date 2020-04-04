//
//  GameController.h
//  Threelow
//
//  Created by WendaLi on 2020-04-04.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *dices;
@property (nonatomic, strong) NSMutableArray *dicesPoints;
@property (nonatomic, strong) NSMutableArray *held;

- (void) dice;
- (void) holdDiec: (NSString*) diceIndex;
- (void) resetDice;
- (void) print;

@end

NS_ASSUME_NONNULL_END
