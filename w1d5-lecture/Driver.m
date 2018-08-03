//
//  Driver.m
//  w1d5-lecture
//
//  Created by David Mills on 2018-08-03.
//  Copyright © 2018 David Mills. All rights reserved.
//

#import "Driver.h"

@implementation Driver

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    
    return self;
}

- (void)drive {
    NSLog(@"%@ is driving the car", self.name);
}

- (void)carWillStartDriving {
    NSLog(@"%@, you really should get going!", self.name);
}

@end
