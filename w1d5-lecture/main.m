//
//  main.m
//  w1d5-lecture
//
//  Created by David Mills on 2018-08-03.
//  Copyright © 2018 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Player.h"
#import "NSString+Emojifi.h"
#import "Car.h"
#import "Driver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *array1 = @[@"a", @"b", @"c"];
        NSArray *array2 = [[NSMutableArray alloc] initWithObjects:@"d", @"e", @"f", nil];
        
        NSArray *master = @[array1, array2];
        SEL addObject = @selector(addObject:);
        
        for (NSArray *arr in master) {
            if ([arr respondsToSelector:addObject]) {
                [arr performSelector:addObject withObject:[@"z" emojifi]];
            }
        }
        
        NSLog(@"Array1: %@", array1);
        NSLog(@"Array2: %@", array2);
        
        // ----- Part 2: Categories ----- //
        NSString *dummyString = @"Hello, Class!";
        NSString *newDummyString = [dummyString emojifi];
        
        NSLog(@"%@", dummyString);
        NSLog(@"%@", newDummyString);
        
        // ----- Part 3: Class-Continuation Category ----- //
        
        Player *player = [[Player alloc] init];
        NSLog(@"%@", player.health);
        SEL setName = @selector(setName:);
        if ([player respondsToSelector:setName]) {
            [player performSelector:setName withObject:@"Cam"];
        }
        
        
        SEL name = @selector(name);
        
        if ([player respondsToSelector:name]) {
            NSLog(@"%@", [player performSelector:name withObject:nil]);
        }
        
        // ----- Part 4: Protocols & Delegates ----- //
        
        Driver *alan = [[Driver alloc] initWithName:@"Alan"];
        Car *mySuperSportsCar = [[Car alloc] init];
        mySuperSportsCar.delegate = alan;
        
        [mySuperSportsCar driveCar];
        
        
        
        CGSize size = CGSizeMake(10, 10);
        NSValue *sizeValue = [NSValue valueWithSize:size];
        NSArray *sizeArray = @[sizeValue];
        
        CGSize anotherSize = [sizeValue sizeValue];
    }
    return 0;
}
