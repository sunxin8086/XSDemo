//
//  XSPersonTest.m
//  XSDemo
//
//  Created by Xin Sun on 1/13/14.
//  Copyright (c) 2014 Xin Sun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "XSPerson.h"

@interface XSPersonTest : XCTestCase

@end

@implementation XSPersonTest

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testFullName
{
    XSPerson *person = [[XSPerson alloc] init];
    person.firstName = @"Xin";
    person.lastName = @"Sun";
    XCTAssertEqualObjects(@"Xin Sun", person.fullName, @"The full name should be equal");
    
}

@end
