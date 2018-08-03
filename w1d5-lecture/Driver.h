//
//  Driver.h
//  w1d5-lecture
//
//  Created by David Mills on 2018-08-03.
//  Copyright © 2018 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Driver : NSObject <CarDelegate>

@property (strong, nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end
