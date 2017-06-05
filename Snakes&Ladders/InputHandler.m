//
//  InputHandler.m
//  Snakes&Ladders
//
//  Created by Jimmy Hoang on 2017-06-04.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString*)input {
    char userAnswer[255];
    
    fgets(userAnswer, 255, stdin);
    
    // Convert C String to NSString
    NSString *convertAnswer = [NSString stringWithCString:userAnswer encoding: NSUTF8StringEncoding];
    
    // To delete leading spaces and new line
    NSCharacterSet *spaces = [NSCharacterSet whitespaceCharacterSet];
    
    // Remove leading spaces and new line from NSString
    convertAnswer = [convertAnswer stringByTrimmingCharactersInSet:spaces];
    
    return convertAnswer;
}

@end
