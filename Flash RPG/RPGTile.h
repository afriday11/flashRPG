//
//  RPGTile.h
//  Flash RPG
//
//  Created by Andrew Friday on 9/2/14.
//  Copyright (c) 2014 Andrew Friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPGTile.h"
#import "RPGArmor.h"
#import "RPGWeapon.h"
#import "RPGFlashCard.h"

@interface RPGTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *answer;
@property (strong, nonatomic) RPGWeapon *weapon;
@property (strong, nonatomic) RPGArmor *armor;
@property (nonatomic) int healthEffect;

@property (strong, nonatomic) RPGFlashCard *flashcard;



@end
