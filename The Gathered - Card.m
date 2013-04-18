//
//  Card.m
//  The Gathered
//
//  Created by Student on 2/3/13.
//  Copyright (c) 2013 Student. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize name,number,image,ability,flavor,power,toughness,rarity, type;

-(id)initWithID:(int)c_id name:(NSString *)c_name power:(int)c_power toughness:(int)c_toughness rarity:(NSString *)c_rarity ability:(NSString *)c_ability flavor:(NSString *)c_flavor number:(int)c_number image:(NSString *)c_image type:(NSString *)c_type color:(NSString *)c_color effect:(NSString *)c_effect
{
    self = [super init];
    self.number = c_number;
    self.name = c_name;
    self.rarity = c_rarity;
    self.power = c_power;
    self.toughness = c_toughness;
    self.flavor = c_flavor;
    self.ability = c_ability;
    self.image = c_image;
    self.type = c_type;
    self.color = c_color;
    self.effect = c_effect;
    return self;
}
-(id)init
{
    return [self initWithID:0 name:@"Tbd" power:0 toughness:0 rarity:@"TBD" ability:@"TBD" flavor:@"TBD" number:0 image:@"TBD" type:@"TBD" color:@"TBD" effect:@"TBD"];
}
+(id)card{
    return [[Card alloc]init];
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"name= %@, number= %d, power= %d, toughness= %d, rarity= %@, flavor text= %@, ability= %@, image url = %@, color=%@, effect=%@", self.name, self.number, self.power, self.toughness, self.rarity, self.flavor, self.ability, self.image, self.color, self.effect];
}
@end
