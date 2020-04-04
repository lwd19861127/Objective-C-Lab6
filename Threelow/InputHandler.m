//
//  InputHandler.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString*) getUserInput:(int) maxLength prompt:(NSString*) prompt
{
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        // turn cstring -> NSString
        return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

@end
