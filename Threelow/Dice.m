//
//  Dice.m
//  Threelow
//
//  Created by WendaLi on 2020-04-03.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (int) throw
{
    self.points = arc4random_uniform(6) + 1;
    return self.points;
}

@end
