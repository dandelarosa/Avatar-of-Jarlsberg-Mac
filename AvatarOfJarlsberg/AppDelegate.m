//
//  AppDelegate.m
//  AvatarOfJarlsberg
//
//  Created by Dan Dela Rosa on 3/18/13.
//  Copyright (c) 2013 MRD Engineering. All rights reserved.
//

#import "AppDelegate.h"
#import "Skill.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{    
    // This is the skill tree
    
    // Path of Breakfast
    // Boil -> The Most Important Meal
    Skill *boil = [Skill skillWithRequiredSkill:nil];
    Skill *theMostImportantMeal = [Skill skillWithRequiredSkill:boil];
    // Boil -> Conjure Eggs -> Egg Man
    Skill *conjureEggs = [Skill skillWithRequiredSkill:boil];
    Skill *eggMan = [Skill skillWithRequiredSkill:conjureEggs];
    // Conjure Eggs -> Conjure Dough -> Early Riser
    Skill *conjureDough = [Skill skillWithRequiredSkill:conjureEggs];
    Skill *earlyRiser = [Skill skillWithRequiredSkill:conjureDough];
    // Conjure Dough -> Fry -> Coffeesphere
    Skill *fry = [Skill skillWithRequiredSkill:conjureDough];
    Skill *coffeesphere = [Skill skillWithRequiredSkill:fry];
    
    // Path of Lunch
    // Conjure Vegetables -> Radish Horse
    Skill *conjureVegetables = [Skill skillWithRequiredSkill:nil];
    Skill *radishHorse = [Skill skillWithRequiredSkill:conjureVegetables];
    // Conjure Vegetables -> Chop -> Conjure Cheese
    Skill *chop = [Skill skillWithRequiredSkill:conjureVegetables];
    Skill *conjureCheese = [Skill skillWithRequiredSkill:chop];
    // Chop -> Slice -> Working Lunch
    Skill *slice = [Skill skillWithRequiredSkill:chop];
    Skill *workingLunch = [Skill skillWithRequiredSkill:slice];
    // Slice -> Lunch Like a King -> Oilsphere
    Skill *lunchLikeAKing = [Skill skillWithRequiredSkill:slice];
    Skill *oilsphere = [Skill skillWithRequiredSkill:lunchLikeAKing];
    
    // Path of Dinner
    // Bake -> Food Coma
    Skill *bake = [Skill skillWithRequiredSkill:nil];
    Skill *foodComa = [Skill skillWithRequiredSkill:bake];
    // Bake -> Conjure Potato -> Hippotatomous
    Skill *conjurePotato = [Skill skillWithRequiredSkill:bake];
    Skill *hippotatomous = [Skill skillWithRequiredSkill:conjurePotato];
    // Conjure Potato -> Conjure Meat Product -> Never Late for Dinner
    Skill *conjureMeatProduct = [Skill skillWithRequiredSkill:conjurePotato];
    Skill *neverLateForDinner = [Skill skillWithRequiredSkill:conjureMeatProduct];
    // Conjure Meat Product -> Grill -> Gristlesphere
    Skill *grill = [Skill skillWithRequiredSkill:conjureMeatProduct];
    Skill *gristlesphere = [Skill skillWithRequiredSkill:grill];
    
    // Path of Dessert
    // Conjure Fruit -> Best Served Cold
    Skill *conjureFruit = [Skill skillWithRequiredSkill:nil];
    Skill *bestServedCold = [Skill skillWithRequiredSkill:conjureFruit];
    // Conjure Fruit -> Freeze -> Nightcap
    Skill *freeze = [Skill skillWithRequiredSkill:conjureFruit];
    Skill *nightcap = [Skill skillWithRequiredSkill:freeze];
    // Freeze -> Conjure Cream -> Blend
    Skill *conjureCream = [Skill skillWithRequiredSkill:freeze];
    Skill *blend = [Skill skillWithRequiredSkill:conjureCream];
    // Conjure Cream -> Cream Puff -> Chocolatesphere
    Skill *creamPuff = [Skill skillWithRequiredSkill:conjureCream];
    Skill *chocolatesphere = [Skill skillWithRequiredSkill:creamPuff];
}

@end
