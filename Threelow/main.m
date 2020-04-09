//
//  main.m
//  Threelow
//
//  Created by WendaLi on 2020-04-03.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gameController = [[GameController alloc] init];
        for (int i = 0; i < 5;) {
            NSLog(@"You have %d times left", 5-i);
            NSString *userInput = [InputHandler getUserInput:255 prompt:@"What do you want?"];
            if ([userInput  isEqual: @"quit"]) {
                break;
            }else if ([userInput  isEqual: @"roll"]) {
                [gameController dice];
                i++;
            }else if ([userInput  isEqual: @"reset"]) {
                [gameController resetDice];
            }else {
                [gameController holdDiec:userInput];
            }
            [gameController print];
        }
    }
    return 0;
}
