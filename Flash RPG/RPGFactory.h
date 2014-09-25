//
//  RPGFactory.h
//  Flash RPG
//
//  Created by Andrew Friday on 9/2/14.
//  Copyright (c) 2014 Andrew Friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPGCharacter.h"
#import "RPGTile.h"
#import "RPGBoss.h"
#import "RPGFlashCard.h"

@interface RPGFactory : NSObject

-(NSArray *)tiles;
-(NSArray *)flashcards;
-(RPGCharacter *)character;


-(RPGBoss *)boss;



@end
