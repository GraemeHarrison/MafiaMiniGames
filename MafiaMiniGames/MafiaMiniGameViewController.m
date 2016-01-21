//
//  MafiaMiniGameViewController.m
//  MafiaMiniGames
//
//  Created by Graeme Harrison on 2016-01-20.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "MafiaMiniGameViewController.h"
#import "GameModel.h"

@interface MafiaMiniGameViewController ()

@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *killLabel;
@property (strong, nonatomic) IBOutlet UIButton *killButton;
@property (strong, nonatomic) IBOutlet UIButton *miniGameButton;

@end

@implementation MafiaMiniGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.answerLabel.alpha = 0.0;
    self.killLabel.alpha = 0.0;
    self.killButton.hidden = YES;
    self.miniGameButton.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)miniGameButton:(UIButton *)sender {
    self.answerLabel.alpha = 1.0;
    self.answerLabel.text = @"Correct!";
    self.killLabel.alpha = 1.0;
    self.killButton.hidden = NO;
}

- (IBAction)killButton:(id)sender {
    [self.delegate didKillCivillian];
    self.killButton.hidden = YES;
    self.miniGameButton.hidden = YES;
    self.killLabel.alpha = 0.0;
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
