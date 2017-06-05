//
//  main.m
//  Snakes&Ladders
//
//  Created by Jimmy Hoang on 2017-06-04.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler* input = [[InputHandler alloc] init];
        PlayerManager* playerManager = [[PlayerManager alloc] init];
        
        NSString* user = [[NSString alloc] init];
        NSString* numberOfPlayers = [[NSString alloc] init];
        NSString* choice = [[NSString alloc] init];
        
        NSLog(@"WELCOME TO SNAKES & LADDERS!!");
        
        while (playerManager.players) {
            
            while ([numberOfPlayers intValue] == 0) {
                
                NSLog(@"Please enter the number of players or type quit");
                numberOfPlayers = [input input];
            
                if ([numberOfPlayers intValue]) {
                    [playerManager createPlayers:[numberOfPlayers intValue]];
                } else {
                    break;
                }

            }
            
            if ([numberOfPlayers localizedCaseInsensitiveContainsString:@"quit"]) {
                NSLog(@"Would you like to quit or restart?");
                choice = [input input];
                
                if([choice localizedCaseInsensitiveContainsString:@"quit"]) {
                    NSLog(@"Thanks for playing, see you later!");
                    break;
                } else if ([choice localizedCaseInsensitiveContainsString:@"restart"]) {
                    
                    numberOfPlayers = @"0";
                    while ([numberOfPlayers intValue] == 0) {
                        
                        NSLog(@"Please enter the number of players:");
                        numberOfPlayers = [input input];
                        
                        if ([numberOfPlayers intValue]) {
                            [playerManager createPlayers:[numberOfPlayers intValue]];
                        }
                        
                        
                    }

                    
                }
                
            }
            
            NSLog(@"Type 'roll' or 'r' to roll the dice");
            user = [input input];

            if ([user localizedCaseInsensitiveContainsString:@"roll"] || [user localizedCaseInsensitiveContainsString:@"r"]) {
                [playerManager roll];
                NSLog(@"%@",[playerManager score]);
                
                if([playerManager currentPlayer].currentSquare >= 100) {
                    NSLog(@"Game over! %@ has won",[playerManager currentPlayer].name);
                    [playerManager.players removeAllObjects];
                    numberOfPlayers = @"0";
                    continue;
                }
                
            } else {
                NSLog(@"Invalid command.");
            }

            
            
        }

        
    }
    return 0;
}
