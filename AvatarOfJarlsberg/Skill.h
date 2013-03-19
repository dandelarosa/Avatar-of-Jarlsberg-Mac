//
//  Skill.h
//  AvatarOfJarlsberg
//
//  Created by Dan Dela Rosa on 3/19/13.
//  Copyright (c) 2013 MRD Engineering. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Skill : NSObject

@property (nonatomic, strong) Skill *requiredSkill;
@property (nonatomic, copy, readonly) NSSet *nextSkills;

- (id)initWithRequiredSkill:(Skill *)requiredSkill;
+ (id)skillWithRequiredSkill:(Skill *)requiredSkill;

- (void)addNextSkill:(Skill *)nextSkill;

@end
