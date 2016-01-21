//
//  MafiaMiniGameViewController.h
//  MafiaMiniGames
//
//  Created by Graeme Harrison on 2016-01-20.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "ViewController.h"

@protocol MafiaMiniGameControllerDelegate <NSObject>

- (void)didKillCivillian;

@end

@interface MafiaMiniGameViewController : ViewController

@property (weak, nonatomic) id <MafiaMiniGameControllerDelegate> delegate;

@end
