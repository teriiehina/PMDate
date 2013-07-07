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
    return [NSDate date];
}

- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key
{
    @throw [NSException exceptionWithName:@"TryToChangeTime" reason:@"You are not Dr. Emmett Brown" userInfo:nil];
}

@end
