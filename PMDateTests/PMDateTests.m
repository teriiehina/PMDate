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

- (void)testTomorrow
{
    NSDate *yesterday   = self.now[@"tomorrow"];
    int elapsed         = (int) [self.now timeIntervalSinceDate:yesterday];
    int expected        = -24 * 3600;
    
    XCTAssertTrue( elapsed == expected , @"%d seconds should separate yesterday from today, not %d" , expected , elapsed);
}

- (void)testTwoSecondsAgo
{
    NSDate *someTimeAgo = self.now[@"2 seconds ago"];
    int elapsed         = (int) [self.now timeIntervalSinceDate:someTimeAgo];
    int expected        = 2;
    
    XCTAssertTrue( elapsed == expected , @"%d seconds should have elapsed, not %d" , expected , elapsed);
}

- (void)testTwoSecondsAhead
{
    NSDate *someTimeAgo = self.now[@"2 seconds ahead"];
    int elapsed         = (int) [self.now timeIntervalSinceDate:someTimeAgo];
    int expected        = -2;
    
    XCTAssertTrue( elapsed == expected , @"%d seconds should have elapsed, not %d" , expected , elapsed);
}

- (void)testTwoSecondsAheadWithTypo
{
    NSDate *someTimeAgo = self.now[@"2 second ahead"];
    int elapsed         = (int) [self.now timeIntervalSinceDate:someTimeAgo];
    int expected        = -2;
    
    XCTAssertTrue( elapsed == expected , @"%d seconds should have elapsed, not %d" , expected , elapsed);
}


- (void)testTwoHoursAgo
{
    NSDate *someTimeAgo = self.now[@"2 hours ago"];
    int elapsed         = (int) [self.now timeIntervalSinceDate:someTimeAgo];
    int expected        = 2 * 3600;
    
    XCTAssertTrue( elapsed == expected , @"%d seconds should have elapsed, not %d" , expected , elapsed);
}

- (void)testTwoHoursAhead
{
    NSDate *someTimeAgo = self.now[@"2 hours ahead"];
    int elapsed         = (int) [self.now timeIntervalSinceDate:someTimeAgo];
    int expected        = -2 * 3600;
    
    XCTAssertTrue( elapsed == expected , @"%d seconds should have elapsed, not %d" , expected , elapsed);
}

- (void)testImmutability
{
    XCTAssertThrows(self.now[@"anytime"] = @"anything", @"We should not be able to change the time");
}

@end
