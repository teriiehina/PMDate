//
//  NSDate+PMDate.h
//  PMDate
//
//  Created by Peter MEUEL on 07/07/13.
//  Copyright (c) 2013 Peter MEUEL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (PMDate)

+ (instancetype)now;

- (NSDate *)yesterday;
- (NSDate *)tomorrow;

- (instancetype)objectForKeyedSubscript:(id <NSCopying>)key;
- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key;

@end
