//
//  MafiaViewController.m
//  MafiaMiniGames
//
//  Created by Graeme Harrison on 2016-01-20.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "MafiaViewController.h"
#import "GameModel.h"
#import "MafiaMiniGameViewController.h"

@interface MafiaViewController () <MafiaMiniGameControllerDelegate>
@property (strong, nonatomic) IBOutlet UILabel *victimsLabel;
@property (strong, nonatomic) GameModel *model;
@property (strong, nonatomic) IBOutlet UILabel *winLabel;
@property (strong, nonatomic) IBOutlet UIButton *playMiniGameButton;

@end

@implementation MafiaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.model = [[GameModel alloc] init];
    self.victimsLabel.text = [NSString stringWithFormat:@"There are %lu victims left", [self.model.mafiaCivillians count]];
    self.winLabel.hidden = YES;
    self.playMiniGameButton.hidden = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didKillCivillian {
    [self.model killCivillian];
    self.victimsLabel.text = [NSString stringWithFormat:@"There are %lu victims left", [self.model.mafiaCivillians count]];
    
    if ([self.model mafiaWins]) {
        self.winLabel.hidden = NO;
        self.playMiniGameButton.hidden = YES;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MafiaMiniGameViewController *dvc =  segue.destinationViewController;
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
