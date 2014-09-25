//
//  RPGFactory.m
//  Flash RPG
//
//  Created by Andrew Friday on 9/2/14.
//  Copyright (c) 2014 Andrew Friday. All rights reserved.
//

#import "RPGFactory.h"


@implementation RPGFactory

-(NSArray *)tiles
{
    //this title is currently a clusterfuck of stuff
    //all of the data about each tile is hard coded here
    //i need the following for v0.2:
    //questions and answer to be generate in the question factory
    //get rid of the north, south, east and west directions, just have people walk forward
    //each time the user goes on an adventure tiles have different a)questions/answers b)rewards (if they get the answer correct) c)punishments

    
    RPGTile *tile1 = [[RPGTile alloc]init];
    tile1.story = @"Do you want a blunted sword?";
    tile1.answer = @"a";
    RPGWeapon *bluntedSword = [[RPGWeapon alloc]init];
    bluntedSword.name = @"blunted sword";
    bluntedSword.attack = 40;

    RPGFlashCard *Triangle = [[RPGFlashCard alloc]init];
    Triangle.question = @"方式";
    Triangle.answer1 = @"fang1shi4";
    Triangle.answer2 = @"tiao2jian4";
    Triangle.answer3 = @"herro";
    Triangle.answer4 = @"fu4mu3";
    Triangle.correctAnswer = Triangle.answer2;
    
    tile1.flashcard = Triangle;
    tile1.weapon = bluntedSword;

        
    RPGTile *tile2 = [[RPGTile alloc]init];
    tile2.story = @"do you want some steel armor?";
    tile2.question = @"2";
    tile2.answer = @"2";
    RPGArmor *steelArmor = [[RPGArmor alloc]init];
    steelArmor.name = @"steel armor";
    steelArmor.hp = 50;
    tile2.armor = steelArmor;
    
    RPGTile *tile3 = [[RPGTile alloc]init];
    tile3.story = @"story3";
    tile3.question = @"3";
    tile3.answer = @"3";
    tile3.healthEffect = 12;
    
    RPGTile *tile4 = [[RPGTile alloc]init];
    tile4.story = @"story4";
    tile4.question = @"4";
    tile4.answer = @"4";
    
    
    RPGTile *tile5 = [[RPGTile alloc]init];
    tile5.story = @"story5";
    tile5.question = @"5";
    tile5.answer = @"5";
    
    RPGTile *tile6 = [[RPGTile alloc]init];
    tile6.story = @"story6";
    tile1.question = @"6";
    tile1.answer = @"6";
    
    RPGTile *tile7 = [[RPGTile alloc]init];
    tile7.story = @"story7";
    tile1.question = @"7";
    tile1.answer = @"7";
    
    RPGTile *tile8 = [[RPGTile alloc]init];
    tile8.story = @"story8";
    tile1.question = @"8";
    tile1.answer = @"8";
    
    RPGTile *tile9 = [[RPGTile alloc]init];
    tile9.story = @"story9";
    tile1.question = @"9";
    tile1.answer = @"9";
    
    RPGTile *tile10 = [[RPGTile alloc]init];
    tile10.story = @"story10";
    tile1.question = @"10";
    tile1.answer = @"10";
    
    RPGTile *tile11 = [[RPGTile alloc]init];
    tile11.story = @"story11";
    tile1.question = @"11";
    tile1.answer = @"11";
    
    RPGTile *tile12 = [[RPGTile alloc]init];
    tile12.story = @"story12";
    tile1.question = @"12";
    tile1.answer = @"12";

    
    //Create an array for the board
    NSArray *column1Array = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    NSArray *column2Array = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    NSArray *column3Array = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    NSArray *column4Array = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tilesArray = [[NSArray alloc] initWithObjects:column1Array, column2Array, column3Array, column4Array, nil];
    
    return tilesArray;
    
};

-(RPGCharacter *)character
{
    RPGCharacter *character = [[RPGCharacter alloc] init];
    character.health = 100;
    character.attack = 25;
    
    RPGWeapon *fistWeapon = [[RPGWeapon alloc] init];
    fistWeapon.name = @"Fists of Fury";
    fistWeapon.attack = 5;
    
    RPGArmor *ironArmor = [[RPGArmor alloc]init];
    ironArmor.name = @"Cloak of Iron";
    ironArmor.hp = 50;
    
    character.weapon = fistWeapon;
    character.armor = ironArmor;
    
    
    return character;
};

-(RPGBoss *)boss{
    RPGBoss *boss = [[RPGBoss alloc]init];
    boss.health = 75;
    return boss;
}



//-(NSArray *)flashcards
//{
//   RPGFlashCard *Triangle = [[RPGFlashCard alloc]init];
//    Triangle.question = @"Q1";
//    Triangle.answer1 = @"take";
//    Triangle.answer2 = @"方式";
//    Triangle.answer3 = @"asdf";
//    Triangle.answer4 = @"agah";
//    Triangle.correctAnswer = Triangle.answer2;
//    
//    return Triangle;
//}







@end
