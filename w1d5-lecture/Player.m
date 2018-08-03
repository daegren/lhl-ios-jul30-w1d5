//
//  Player.m
//  w1d5-lecture
//
//  Created by David Mills on 2018-08-03.
//  Copyright © 2018 David Mills. All rights reserved.
//

#import "Player.h"

@interface Player ()

@property (nonatomic, strong) NSString *name;

@end

@implementation Player

- (instancetype)init {
    if (self = [super init]) {
        _health = @20;
        _name = @"Dave";
    }
    
    return self;
}

@end
