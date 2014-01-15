//
//  ViewController.m
//  MythicalCreatureManagementSystem
//
//  Created by Stephen Compton on 1/14/14.
//  Copyright (c) 2014 Stephen Compton. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

{
    NSMutableArray *creatures;
    MagicalCreature* creature;
    
    __weak IBOutlet UITextField *magicalCreatureTextField;
    __weak IBOutlet UITableView *creaturesTableView;
    
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    creatures = [NSMutableArray array];
    creature = [[MagicalCreature alloc] init];
    creature.name = @"Unicorn";
    creature.attackPoints = 50;
    creature.hitPoints = 50;
    creature.creatureImage = @"/unicorn.png";
    creature.description = @"The unicorn is a legendary animal that has been described since antiquity as a beast with a large, pointed, spiraling horn projecting from its forehead. The unicorn was depicted in ancient seals of the Indus Valley Civilization and was mentioned by the ancient Greeks in accounts of natural history by various writers, including Ctesias, Strabo, Pliny the Younger, and Aelian. The Bible also describes an animal, the re'em, which some translations have rendered with the word unicorn";
    [creatures addObject:creature];

    creature = [MagicalCreature new];
    creature.name = @"Yeti";
    creature.attackPoints = 50;
    creature.hitPoints = 50;
    creature.creatureImage = @"/yeti.png";
    creature.description = @"The Yeti or Abominable Snowman is an ape-like cryptid taller than an average human that is said to inhabit the Himalayan region of Nepal and Tibet.[3] The names Yeti and Meh-Teh are commonly used by the people indigenous to the region, and are part of their history and mythology. Stories of the Yeti first emerged as a facet of Western popular culture in the 19th century.";
    [creatures addObject:creature];
    
    creature = [MagicalCreature new];
    creature.name = @"Centaur";
    creature.creatureImage = @"/centaur.png";
    creature.attackPoints = 50;
    creature.hitPoints = 50;
    creature.description = @"A centaur or hippocentaur is a mythological creature with the head, arms, and torso of a human and the body and legs of a horse.";
    [creatures addObject:creature];

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return creatures.count;
    
}



- (IBAction)onAddButtonPressed:(id)sender {
    
    MagicalCreature *addedCreature;
    addedCreature = [[MagicalCreature alloc] init];
    addedCreature.name = magicalCreatureTextField.text;
    [creatures addObject:addedCreature];
    magicalCreatureTextField.text = @"";
    [creaturesTableView reloadData];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CreatureViewController *creaturesView = segue.destinationViewController;
    NSIndexPath *indexPath = [creaturesTableView indexPathForCell:sender];
    creaturesView.creature = [creatures objectAtIndex:indexPath.row];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *creatureCell = [tableView dequeueReusableCellWithIdentifier:@"myCreaturePrototypeCell"];
    MagicalCreature *myCreature = creatures[indexPath.row];
    creatureCell.textLabel.text = myCreature.name;
    return creatureCell;
    
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
