//
//  GameController.m
//  Threelow
//
//  Created by WendaLi on 2020-04-04.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dices = [[NSMutableArray alloc] init];
        for (int i = 1; i <=5; i++) {
            Dice *dice = [[Dice alloc] init];
            [_dices addObject:dice];
        }
        _dicesPoints = [[NSMutableArray alloc] initWithObjects:@0, @0, @0, @0, @0, nil];
        _held = [[NSMutableArray alloc] initWithObjects:@0, @0, @0, @0, @0, nil];
    }
    return self;
}

- (void) print
{
    int totalPoints = 0;
    for (id obj in self.dicesPoints) {
        if ([obj intValue] != 3 ){
            totalPoints += [obj intValue];
        }
    }
    for (int i = 0; i<5; i++) {
        if ([self.held[i] isEqualTo:[NSNumber numberWithInt:1]]) {
            NSLog(@"[%@]", [self diceShap:self.dicesPoints[i]]);
        }else{
            NSLog(@"%@", [self diceShap:self.dicesPoints[i]]);
        }
    }
    NSLog(@"TotalPoints:%d", totalPoints);
}

- (void) dice
{
    for (int i = 0; i<5; i++) {
        if ([self.held[i] isEqualTo:[NSNumber numberWithInt:0]]) {
            [self diceHelper:i];
        }
    }
}

- (void) diceHelper: (int) number
{
    Dice *dice = self.dices[number];
    NSNumber *dicePoints = [NSNumber numberWithInt:dice.throw];
    [self.dicesPoints replaceObjectAtIndex: number withObject:dicePoints];
}

- (NSString*) diceShap: (NSNumber*) points
{
    if (points == [NSNumber numberWithInt: 1]) {
        return @"⚀";
    }else if (points == [NSNumber numberWithInt: 2]) {
        return @"⚁";
    }else if (points == [NSNumber numberWithInt: 3]) {
        return @"⚂";
    }else if (points == [NSNumber numberWithInt: 4]) {
        return @"⚃";
    }else if (points == [NSNumber numberWithInt: 5]) {
        return @"⚄";
    }else if (points == [NSNumber numberWithInt: 6]) {
        return @"⚅";
    }else {
        return @"";
    }
}

- (void) holdDiec: (NSString*) diceIndex
{
     if ([self.held[[diceIndex intValue]-1] isEqualTo:[NSNumber numberWithInt:0]]) {
         [self.held replaceObjectAtIndex:[diceIndex intValue]-1 withObject:[NSNumber numberWithInt:1]];
     }else {
         [self.held replaceObjectAtIndex:[diceIndex intValue]-1 withObject:[NSNumber numberWithInt:0]];
     }
}

- (void) resetDice
{
    for (int i = 0; i<5; i++) {
        [self.held replaceObjectAtIndex:i withObject:[NSNumber numberWithInt:0]];
    }
}

@end
