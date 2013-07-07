//
//  NSDate+PMDate.m
//  PMDate
//
//  Created by Peter MEUEL on 07/07/13.
//  Copyright (c) 2013 Peter MEUEL. All rights reserved.
//

#import "NSDate+PMDate.h"

@implementation NSDate (PMDate)

+ (instancetype)now
{
    return [self date];
}

- (instancetype)objectForKeyedSubscript:(id <NSCopying>)key
{
    NSString *modifier      = (NSString *)key;
    NSTimeInterval interval = 0;
    
    if ([modifier isEqualToString:@"yesterday"])
    {
        interval = 0 - 24 * 3600;
    }
    else if ([modifier isEqualToString:@"tomorrow"])
    {
        interval = 24 * 3600;
    }
    else
    {
        interval = [self intervalForElaborateModifier:modifier];
    }
    
    return [self dateByAddingTimeInterval:interval];
}

- (NSTimeInterval)intervalForElaborateModifier:(NSString *)modifier
{
    // there is certainly a more efficient way to do this
    // but we are not focusing on performance right now.
    NSDictionary *secondsByUnit = @{
                                    @"second"   : @(1),
                                    @"seconds"  : @(1),
                                    @"minute"   : @(60),
                                    @"minutes"  : @(60),
                                    @"hour"     : @(3600),
                                    @"hours"    : @(3600),
                                    @"day"      : @(3600 * 24),
                                    @"days"     : @(3600 * 24),
                                    @"week"     : @(3600 * 24 * 7),
                                    @"weeks"    : @(3600 * 24 * 7)
                                    };
    
    NSArray *comps = [modifier componentsSeparatedByString:@" "];
    NSAssert(comps.count == 3, @"your date modifier should look like '2 hours ago'");
    
    NSString *valueString     = comps[0];
    NSString *unitString      = comps[1];
    NSString *directionString = comps[2];
    
    NSNumber *unitNumber      = (NSNumber *)secondsByUnit[unitString];
    
    int value     = valueString.intValue;
    int unit      = unitNumber.intValue;
    int direction = [directionString isEqualToString:@"ago"] ? -1 : 1;
    
    return value * unit * direction;
}

- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key
{
    @throw [NSException exceptionWithName:@"TryToChangeTime" reason:@"You are not Dr. Emmett Brown" userInfo:nil];
}

@end
