//
//  main.m
//  Snakes&Ladders
//
//  Created by Jimmy Hoang on 2017-06-04.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler* input = [[InputHandler alloc] init];
        Player* player = [[Player alloc] init];
        
        NSString* user = [[NSString alloc] init];
        BOOL gameOn = YES;
        
        while (gameOn) {
            NSLog(@"Type 'roll' or 'r' to roll the dice");
            user = [input input];
            
            if ([user localizedCaseInsensitiveContainsString:@"roll"] || [user localizedCaseInsensitiveContainsString:@"r"]) {
                [player roll];
                NSLog(@"You are on %ld square",player.currentSquare);
                
            } else {
                NSLog(@"Invalid command.");
            }
            
            
        }

        
    }
    return 0;
}
