//
//  Player.m
//  Snakes&Ladders
//
//  Created by Jimmy Hoang on 2017-06-04.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = @{@4 : @14,
                       @9 : @31,
                       @17 : @7,
                       @20 : @38,
                       @28 : @84,
                       @40 : @59,
                       @51 : @67,
                       @63 : @81,
                       @89 : @26,
                       @95 : @73,
                       @99 : @78,
                       };
                       
                       
    }
    return self;
}

-(void)roll {
    int roll = arc4random_uniform(6) + 1;
    NSLog(@"You rolled %d", roll);
    self.currentSquare += roll;
}

@end
