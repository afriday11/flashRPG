//
//  RPGCharacter.h
//  Flash RPG
//
//  Created by Andrew Friday on 9/4/14.
//  Copyright (c) 2014 Andrew Friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPGArmor.h"
#import "RPGWeapon.h"

@interface RPGCharacter : NSObject

@property (strong, nonatomic) RPGArmor *armor;
@property (strong, nonatomic) RPGWeapon *weapon;

@property (nonatomic) NSInteger health;
@property (nonatomic) NSInteger attack;


@end
