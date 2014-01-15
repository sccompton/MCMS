//
//  BattleViewController.m
//  MCMS
//
//  Created by Stephen Compton on 1/14/14.
//  Copyright (c) 2014 Stephen Compton. All rights reserved.
//

#import "BattleViewController.h"

@interface BattleViewController ()

{
    __weak IBOutlet UITextField *opponentOne;
    __weak IBOutlet UITextField *opponentTwo;
    
    __weak IBOutlet UITextField *winner;
}

@end

@implementation BattleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)onSelectButtonPressed:(id)sender {
    opponentOne.text = @"Yeti";
    
}


- (IBAction)onSelectButtonTwoPressed:(id)sender {
    opponentTwo.text = @"Unicorn";

}

- (IBAction)onWindowOnePressed:(id)sender {
      opponentOne.text = @"Centaur";
    
}

- (IBAction)onWindowTwoPressed:(id)sender {
    opponentTwo.text = @"Unicorn";
    
}



- (IBAction)onBattleButtonPressed:(id)sender
{
    self.view.backgroundColor = [UIColor redColor];
    
    winner.text = @"Unicorn with lightsaber horn of course!";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
