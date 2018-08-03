//
//  Car.h
//  w1d5-lecture
//
//  Created by David Mills on 2018-08-03.
//  Copyright © 2018 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CarDelegate <NSObject>

- (void)drive;

@optional

- (void)carWillStartDriving;

@end

@interface Car : NSObject

@property (weak, nonatomic) id<CarDelegate> delegate;

- (void)driveCar;

@end
