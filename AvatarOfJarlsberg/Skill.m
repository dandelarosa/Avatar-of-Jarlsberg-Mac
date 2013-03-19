//
//  Skill.m
//  AvatarOfJarlsberg
//
//  Created by Dan Dela Rosa on 3/19/13.
//  Copyright (c) 2013 MRD Engineering. All rights reserved.
//

#import "Skill.h"

@interface Skill ()

@property (nonatomic, strong) NSMutableSet *storedNextSkills;

@end

@implementation Skill

- (id)initWithRequiredSkill:(Skill *)requiredSkill
{
    self = [super init];
    if (self) {
        if (requiredSkill) {
            _requiredSkill = requiredSkill;
            [requiredSkill addNextSkill:self];
        }
    }
    return self;
}

+ (id)skillWithRequiredSkill:(Skill *)requiredSkill
{
    Skill *skill = [[Skill alloc] initWithRequiredSkill:requiredSkill];
    return skill;
}

- (void)addNextSkill:(Skill *)nextSkill
{
    [self.storedNextSkills addObject:nextSkill];
}

@end
