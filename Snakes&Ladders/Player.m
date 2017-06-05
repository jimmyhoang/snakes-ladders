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
        _gameOver = NO;
        _oldSquare = 0;
    }
    return self;
}

-(void)roll {
    int roll = arc4random_uniform(6) + 1;
    
    NSLog(@"You rolled %d!", roll);
    self.currentSquare = self.currentSquare + roll;
    self.oldSquare = [NSNumber numberWithInteger:self.currentSquare];
    
    NSNumber* current = [NSNumber numberWithInteger:self.currentSquare];
    
    if ([self.gameLogic objectForKey:current]) {
        self.currentSquare = [[self.gameLogic objectForKey:current] integerValue];
    }

}


-(NSString*) output {
    
    NSString* output = [[NSString alloc] init];
    
    if ([self.oldSquare integerValue] < self.currentSquare) {
        output = [NSString stringWithFormat:@"Stairway to heaven!\nYou jumped from %@ to %ld!", self.oldSquare, self.currentSquare];
    } else if ([self.oldSquare integerValue] > self.currentSquare) {
        output = [NSString stringWithFormat:@"Slippery snake!\nYou dropped from %@ to %ld!", self.oldSquare, self.currentSquare];
    } else {
        output = [NSString stringWithFormat:@"You landed on %ld", self.currentSquare];
    }
    


    return output;
}

@end
