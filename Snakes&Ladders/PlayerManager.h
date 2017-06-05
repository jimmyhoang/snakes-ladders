//
//  PlayerManager.h
//  Snakes&Ladders
//
//  Created by Jimmy Hoang on 2017-06-04.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic, strong) NSMutableArray* players;
@property (nonatomic, assign) NSInteger currentIndex;

-(void)createPlayers:(int)numberOfPlayers;
-(void)roll;
-(NSString*)output;
-(Player*)currentPlayer;
-(NSString*)score;

@end
