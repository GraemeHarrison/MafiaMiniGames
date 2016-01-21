//
//  SheriffMiniGameViewController.m
//  MafiaMiniGames
//
//  Created by Graeme Harrison on 2016-01-20.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "SheriffMiniGameViewController.h"

@interface SheriffMiniGameViewController ()
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *interrogateLabel;
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6;
@property (strong, nonatomic) IBOutlet UIButton *miniGameButton;
//@property (nonatomic, assign) BOOL bool1;
//@property (nonatomic, assign) BOOL bool2;
//@property (nonatomic, assign) BOOL bool3;
//@property (nonatomic, assign) BOOL bool4;
//@property (nonatomic, assign) BOOL bool5;
//@property (nonatomic, assign) BOOL bool6;

@end

@implementation SheriffMiniGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.answerLabel.alpha = 0.0;
    self.interrogateLabel.alpha = 0.0;
    
    self.button1.hidden = YES;
    self.button2.hidden = YES;
    self.button3.hidden = YES;
    self.button4.hidden = YES;
    self.button5.hidden = YES;
    self.button6.hidden = YES;
    self.miniGameButton.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)miniGameButton:(id)sender {
    self.answerLabel.alpha = 1.0;
    self.answerLabel.text = @"Correct!";
    self.interrogateLabel.alpha = 1.0;
    
    self.button1.hidden = NO;
    self.button2.hidden = NO;
    self.button3.hidden = NO;
    self.button4.hidden = NO;
    self.button5.hidden = NO;
    self.button6.hidden = NO;
}
- (IBAction)button1:(id)sender {
    self.button1.hidden = YES;
    self.button2.hidden = YES;
    self.button3.hidden = YES;
    self.button4.hidden = YES;
    self.button5.hidden = YES;
    self.button6.hidden = YES;
    self.miniGameButton.hidden = YES;
    self.interrogateLabel.alpha = 0.0;
    [self.delegate didInterrogateMafia:1];
}
- (IBAction)button2:(id)sender {
    self.button1.hidden = YES;
    self.button2.hidden = YES;
    self.button3.hidden = YES;
    self.button4.hidden = YES;
    self.button5.hidden = YES;
    self.button6.hidden = YES;
    self.miniGameButton.hidden = YES;
    self.interrogateLabel.alpha = 0.0;
    [self.delegate didInterrogateMafia:2];
}
- (IBAction)button3:(id)sender {
    self.button1.hidden = YES;
    self.button2.hidden = YES;
    self.button3.hidden = YES;
    self.button4.hidden = YES;
    self.button5.hidden = YES;
    self.button6.hidden = YES;
    self.miniGameButton.hidden = YES;
    self.interrogateLabel.alpha = 0.0;
    [self.delegate didInterrogateMafia:3];
}
- (IBAction)button4:(id)sender {
    
    self.button1.hidden = YES;
    self.button2.hidden = YES;
    self.button3.hidden = YES;
    self.button4.hidden = YES;
    self.button5.hidden = YES;
    self.button6.hidden = YES;
    self.miniGameButton.hidden = YES;
    self.interrogateLabel.alpha = 0.0;
    [self.delegate didInterrogateMafia:4];
}
- (IBAction)button5:(id)sender {
    self.button1.hidden = YES;
    self.button2.hidden = YES;
    self.button3.hidden = YES;
    self.button4.hidden = YES;
    self.button5.hidden = YES;
    self.button6.hidden = YES;
    self.miniGameButton.hidden = YES;
    self.interrogateLabel.alpha = 0.0;
    [self.delegate didInterrogateMafia:5];
}
- (IBAction)button6:(id)sender {
    self.button1.hidden = YES;
    self.button2.hidden = YES;
    self.button3.hidden = YES;
    self.button4.hidden = YES;
    self.button5.hidden = YES;
    self.button6.hidden = YES;
    self.miniGameButton.hidden = YES;
    self.interrogateLabel.alpha = 0.0;
    [self.delegate didInterrogateMafia:6];
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
