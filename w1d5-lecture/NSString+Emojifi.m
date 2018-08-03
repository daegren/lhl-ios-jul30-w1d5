//
//  NSString+Emojifi.m
//  w1d5-lecture
//
//  Created by David Mills on 2018-08-03.
//  Copyright © 2018 David Mills. All rights reserved.
//

#import "NSString+Emojifi.h"

@implementation NSString (Emojifi)

- (NSString *)emojifi {
    return [self stringByAppendingString:@"💩"];
}

@end
