//
//  RPGViewController.h
//  Flash RPG
//
//  Created by Andrew Friday on 9/2/14.
//  Copyright (c) 2014 Andrew Friday. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPGCharacter.h"
#import "RPGBoss.h"
#import "RPGFlashCard.h"

@interface RPGViewController : UIViewController
//instance variables
@property (nonatomic) int currentPosition;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) RPGCharacter *character;
@property (strong, nonatomic) RPGBoss *boss;



//IBOutlets
@property (strong, nonatomic) IBOutlet UILabel *HPStat;
@property (strong, nonatomic) IBOutlet UILabel *AttackStat;
@property (strong, nonatomic) IBOutlet UILabel *WeaponNameStat;
@property (strong, nonatomic) IBOutlet UILabel *ArmorNameStat;

@property (strong, nonatomic) IBOutlet UILabel *StoryText;

@property (strong, nonatomic) IBOutlet UILabel *QuestionText;

@property (strong, nonatomic) IBOutlet UIButton *Answer1Button;
@property (strong, nonatomic) IBOutlet UIButton *Answer2Button;
@property (strong, nonatomic) IBOutlet UIButton *Answer3Button;
@property (strong, nonatomic) IBOutlet UIButton *Answer4Button;

//@property (strong, nonatomic) IBOutlet UIButton *NorthButton;
//@property (strong, nonatomic) IBOutlet UIButton *EastButton;
//@property (strong, nonatomic) IBOutlet UIButton *SouthButton;
//@property (strong, nonatomic) IBOutlet UIButton *WestButton;


//IBActions
- (IBAction)Answer1Button:(id)sender;
- (IBAction)Answer2Button:(id)sender;
- (IBAction)Answer3Button:(id)sender;
- (IBAction)Answer4Button:(id)sender;

//- (IBAction)MoveNorthButton:(id)sender;
//- (IBAction)MoveEastButton:(id)sender;
//- (IBAction)MoveSouthButton:(id)sender;
//- (IBAction)MoveWestButton:(id)sender;

- (IBAction)fleeButtonPressed:(id)sender;
@end
