//
//  RPGFlashCard.h
//  Flash RPG
//
//  Created by Andrew Friday on 9/15/14.
//  Copyright (c) 2014 Andrew Friday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RPGFlashCard : NSObject

@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *correctAnswer;

@property (strong, nonatomic) NSString *answer1;
@property (strong, nonatomic) NSString *answer2;
@property (strong, nonatomic) NSString *answer3;
@property (strong, nonatomic) NSString *answer4;

@end
