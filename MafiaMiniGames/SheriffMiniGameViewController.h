//
//  SheriffMiniGameViewController.h
//  MafiaMiniGames
//
//  Created by Graeme Harrison on 2016-01-20.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "ViewController.h"

@protocol SheriffMiniGameControllerDelegate <NSObject>

- (void)didInterrogateMafia:(int)civillian;

@end

@interface SheriffMiniGameViewController : ViewController

@property (weak, nonatomic) id <SheriffMiniGameControllerDelegate> delegate;


@end
