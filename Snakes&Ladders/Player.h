//
//  Player.h
//  Snakes&Ladders
//
//  Created by Jimmy Hoang on 2017-06-04.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic, strong) NSDictionary* gameLogic;
@property (nonatomic) BOOL gameOver;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSNumber* oldSquare;





-(void)roll;
-(NSString*)output;

@end
