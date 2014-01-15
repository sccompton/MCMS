//
//  CreatureViewController.m
//  MythicalCreatureManagementSystem
//
//  Created by Stephen Compton on 1/14/14.
//  Copyright (c) 2014 Stephen Compton. All rights reserved.
//

#import "CreatureViewController.h"
#import "BattleViewController.h"

@interface CreatureViewController ()<UITextFieldDelegate>

{
    __weak IBOutlet UILabel *name;
    __weak IBOutlet UITextField *nameTextField;
    __weak IBOutlet UIButton *saveButton;
    __weak IBOutlet UIButton *editButton;
    __weak IBOutlet UILabel *creatureHitPoints;
    __weak IBOutlet UILabel *creatureAttackPoints;
    __weak IBOutlet UITextView *creatureDescription;
    __weak IBOutlet UIImageView *creatureImage;
    __weak IBOutlet UILabel *creatureAccessories;
    __weak IBOutlet UIButton *battleButton;
}


@end

@implementation CreatureViewController

@synthesize creature;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)onEditButtonPressed:(id)sender {
    
    name.alpha = 0;
    nameTextField.alpha = 1;
    nameTextField.text = creature.name;
    creatureDescription.editable = YES;
    creatureDescription.text = creature.description;
    saveButton.alpha = 1;
    editButton.alpha = 0;
    
    
}

- (IBAction)onSaveButtonPressed:(id)sender {
    
    name.alpha = 1;
    creature.name = nameTextField.text;
    [self viewDidLoad];
    editButton.alpha = 1;
    nameTextField.text = @"";
    saveButton.alpha = 0;
    nameTextField.alpha = 0;
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [nameTextField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    name.text = creature.name;
    creatureDescription.text = creature.description;
    creatureDescription.editable = NO;
    creatureAttackPoints.text = [NSString stringWithFormat:@"%d",creature.attackPoints];
    creatureHitPoints.text = [NSString stringWithFormat:@"%d", creature.hitPoints];
    creatureImage.image = [UIImage imageNamed:creature.creatureImage];
    creatureAccessories.text = creature.accessories;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
