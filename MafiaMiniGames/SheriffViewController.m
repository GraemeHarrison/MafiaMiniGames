//
//  SheriffViewController.m
//  MafiaMiniGames
//
//  Created by Graeme Harrison on 2016-01-20.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "SheriffViewController.h"
#import "GameModel.h"
#import "SheriffMiniGameViewController.h"

@interface SheriffViewController () <SheriffMiniGameControllerDelegate>
@property (strong, nonatomic) IBOutlet UILabel *mafiaAliveLabel;
@property (strong, nonatomic) GameModel *model;
@property (strong, nonatomic) IBOutlet UILabel *winLabel;
@property (strong, nonatomic) IBOutlet UIButton *playMiniGameButton;
@property (nonatomic, assign) BOOL bool1;
@property (nonatomic, assign) BOOL bool2;
@property (nonatomic, assign) BOOL bool3;
@property (nonatomic, assign) BOOL bool4;
@property (nonatomic, assign) BOOL bool5;
@property (nonatomic, assign) BOOL bool6;

@end

@implementation SheriffViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.model = [[GameModel alloc] init];
    self.winLabel.hidden = YES;
    self.playMiniGameButton.hidden = NO;
    
    self.mafiaAliveLabel.text = [NSString stringWithFormat:@"Mafia is %@ There are %lu civillians left to interrogate", self.model.isMafiaAlive?@"alive.":@"in jail.", [self.model.sheriffCivillians count]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didInterrogateMafia:(int)civillian {
    switch(civillian) {
            // make delegate return respoective integer to mini game to remove associated button
        case 1:
            self.bool1 = YES;
            break;
        case 2:
            self.bool2 = YES;
            break;
        case 3:
            self.bool3 = YES;
            break;
        case 4:
            self.bool4 = YES;
            break;
        case 5:
            self.bool5 = YES;
            break;
        case 6:
            self.bool6 = YES;
            break;
        default:
            break;
    }
    
    [self.model removeCivillian:civillian];
    self.mafiaAliveLabel.text = [NSString stringWithFormat:@"Mafia is %@ There are %lu civillians left to interrogate", self.model.isMafiaAlive?@"alive.":@"in jail.", [self.model.sheriffCivillians count]];
    
    if ([self.model isMafiaAlive] == NO) {
        self.winLabel.hidden = NO;
        self.playMiniGameButton.hidden = YES;
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SheriffMiniGameViewController *dvc =  segue.destinationViewController;
    dvc.delegate = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
