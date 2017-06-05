//
//  PlayerManager.m
//  Snakes&Ladders
//
//  Created by Jimmy Hoang on 2017-06-04.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc] init];
        _currentIndex = 0;
    }
    return self;
}

-(void)createPlayers:(int)numberOfPlayers {
    
    for (int i = 0; i < numberOfPlayers; i++) {
        Player* player = [[Player alloc] init];
        player.name = [NSString stringWithFormat:@"Player %d",i+1];
        [self.players addObject:player];
    }
    
}

-(Player *)currentPlayer {

    return [self.players objectAtIndex:(self.currentIndex % [self.players count])];
}


-(void)roll {
    NSLog(@"%@:",[self currentPlayer].name);
    [[self currentPlayer] roll];
    NSLog(@"%@",[self output]);
    self.currentIndex++;
}

-(NSString*)output {
    return [self.currentPlayer output];
    
 }

-(NSString*)score {
    NSMutableString* scores = [[NSMutableString alloc] init];
    [scores appendString:@"Scores: "];
    
    for (Player* player in self.players) {
        [scores appendString:[player score]];
        [scores appendString:@", "];
    }
    
    NSString* output = [NSString stringWithString:scores];

    
    return output;
}


@end
