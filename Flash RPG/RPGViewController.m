//
//  RPGViewController.m
//  Flash RPG
//
//  Created by Andrew Friday on 9/2/14.
//  Copyright (c) 2014 Andrew Friday. All rights reserved.
//

#import "RPGViewController.h"
#import "RPGFactory.h"
#import "RPGTile.h"

@interface RPGViewController ()

@end

@implementation RPGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    RPGFactory *factory = [[RPGFactory alloc]init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];

    self.currentPosition = CGPointMake(0, 0);
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
//    [self updateFlashcards:nil answer:nil reward:NO];
    
    [self updateTile];
    [self updateButtons];

    
    
}

-(BOOL)tilesExistsAtPoint:(CGPoint)point
{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count])
    {
        return NO;
    }
    else
    {
        return YES;
    };
};

-(void) updateButtons
{
    self.EastButton.hidden = [self tilesExistsAtPoint:CGPointMake(self.currentPosition.x + 1, self.currentPosition.y)];
    self.WestButton.hidden = [self tilesExistsAtPoint:CGPointMake(self.currentPosition.x - 1, self.currentPosition.y)];
    self.NorthButton.hidden = [self tilesExistsAtPoint:CGPointMake(self.currentPosition.x, self.currentPosition.y + 1)];
    self.SouthButton.hidden = [self tilesExistsAtPoint:CGPointMake(self.currentPosition.x, self.currentPosition.y - 1)];
};

- (void) updateTile
{
    RPGTile *tileModel = [[self.tiles objectAtIndex:self.currentPosition.x]objectAtIndex:self.currentPosition.y];
    self.StoryText.text = tileModel.story;
    self.HPStat.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.AttackStat.text = [NSString stringWithFormat:@"%i", self.character.attack];
    self.WeaponNameStat.text = self.character.weapon.name;
    self.ArmorNameStat.text = self.character.armor.name;
    self.QuestionText.text = tileModel.flashcard.question;
    
    [self.Answer1Button setTitle:tileModel.flashcard.answer1 forState:UIControlStateNormal];
    [self.Answer2Button setTitle:tileModel.flashcard.answer2 forState:UIControlStateNormal];
    [self.Answer3Button setTitle:tileModel.flashcard.answer3 forState:UIControlStateNormal];
    [self.Answer4Button setTitle:tileModel.flashcard.answer4 forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//Button pushing is all done here!
- (IBAction)Answer1Button:(id)sender {
    RPGTile *tile = [[self.tiles objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
//    if (self.QuestionText == self.)
    
    if (self.character.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Death Message" message:@"you are fucking dead, try again?" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    else if (self.boss.health)
    
    [self updateTile];
}

- (IBAction)Answer2Button:(id)sender {
    RPGTile *tile = [[self.tiles objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
//    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
}

- (IBAction)Answer3Button:(id)sender {
}

- (IBAction)Answer4Button:(id)sender {
}

- (IBAction)MoveNorthButton:(id)sender
{
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)MoveEastButton:(id)sender
{
    self.currentPosition = CGPointMake(self.currentPosition.x + 1, self.currentPosition.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)MoveSouthButton:(id)sender
{
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y - 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)MoveWestButton:(id)sender
{
    self.currentPosition = CGPointMake(self.currentPosition.x - 1, self.currentPosition.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)fleeButtonPressed:(id)sender {
}

-(void)updateCharacterStatsForArmor: (RPGArmor *)armor withWeapons:(RPGWeapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.hp + armor.hp;
        self.character.armor = armor;
    }
    
    else if (weapon != nil) {
        self.character.attack = self.character.attack - self.character.weapon.attack + weapon.attack;
        self.character.weapon = weapon;
    }
    
    else if (healthEffect != 0) {
        self.character.health = self.character.health + healthEffect;
    }
    
    else{
        self.character.health = self.character.health + self.character.armor.hp;
        self.character.attack = self.character.attack + self.character.weapon.attack;
    }
    
}

//-(void)updateFlashcards: (RPGFlashCard *)question answer:(RPGFlashCard *)answer reward:(BOOL)rewardEffect
//{
//    if (
//};

@end













