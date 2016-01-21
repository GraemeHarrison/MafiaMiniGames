//
//  GameModel.h
//  MafiaMiniGames
//
//  Created by Graeme Harrison on 2016-01-20.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameModel : NSObject

@property (nonatomic, strong) NSMutableArray *mafiaCivillians;
@property (nonatomic, strong) NSMutableArray *sheriffCivillians;
@property (nonatomic, strong) NSString *player;
@property (nonatomic, assign) BOOL isMafiaAlive;
@property (nonatomic, strong) id mafioso;

-(BOOL)mafiaWins;

-(void)removeCivillian:(int)civillian;

-(void)killCivillian;

-(BOOL)isMafiaAlive;

@end
