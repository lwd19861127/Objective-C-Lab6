//
//  Dice.h
//  Threelow
//
//  Created by WendaLi on 2020-04-03.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject


@property (nonatomic, assign) int points;

- (int) throw;

@end

NS_ASSUME_NONNULL_END
