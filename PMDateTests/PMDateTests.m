//
//  PMDateTests.m
//  PMDateTests
//
//  Created by Peter MEUEL on 07/07/13.
//  Copyright (c) 2013 Peter MEUEL. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSDate+PMDate.h"

@interface PMDateTests : XCTestCase

@property (nonatomic , strong) NSDate *now;

@end

@implementation PMDateTests

- (void)setUp
{
    [super setUp];
    self.now = [NSDate now];
}

- (void)tearDown
{
    self.now = nil;
    [super tearDown];
}

- (void)testNow
{
    XCTAssertNotNil(self.now, @"Now should be defined");
}

- (void)testYesterday
{
    NSDate *yesterday   = self.now[@"yesterday"];
    int elapsed         = (int) [self.now timeIntervalSinceDate:yesterday];
    int expected        = 24 * 3600;
    
    XCTAssertTrue( elapsed == expected , @"%d seconds should separate yesterday from today, not %d" , expected , elapsed);
}

@end
