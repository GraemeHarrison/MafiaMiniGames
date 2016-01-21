//
//  GameModel.m
//  MafiaMiniGames
//
//  Created by Graeme Harrison on 2016-01-20.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mafiaCivillians = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
        _sheriffCivillians = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, @6, nil];
        _isMafiaAlive = YES;
        _mafioso = [self createMafioso];
    }
    return self;
}

-(BOOL)mafiaWins {
    if ([self.mafiaCivillians count] <= 0) {
        return YES;
    } else {
        return NO;
    }
}

-(void)removeCivillian:(int)civillian {
    NSNumber *num = @(civillian);
    [self.sheriffCivillians removeObject:num];
}

-(void)killCivillian {
    [self.mafiaCivillians removeLastObject];
}

-(id)createMafioso {
    int num = arc4random_uniform(6);
    return [self.sheriffCivillians objectAtIndex:num];
}

-(BOOL)isMafiaAlive {
    if ([self.sheriffCivillians count] <= 0) {
        return NO;
    } else {
        return YES;
    }
}

//-(BOOL)sheriffWins:(GameModel *)game {
//    
//    if (game.mafioso) {
//        NSLog(@"Mafia has been arrested, Sheriff wins!");
//    }
//}

@end

