//
//  Car.m
//  w1d5-lecture
//
//  Created by David Mills on 2018-08-03.
//  Copyright © 2018 David Mills. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)driveCar {
    if ([self.delegate respondsToSelector:@selector(carWillStartDriving)]) {
        [self.delegate carWillStartDriving];
    }
    
    [self.delegate drive];
}

@end
