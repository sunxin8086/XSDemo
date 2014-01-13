//
//  XSTestObserver.m
//  XSDemo
//
//  Created by Xin Sun on 1/13/14.
//  Copyright (c) 2014 Xin Sun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XCTest/XCTestLog.h>
#import <XCTest/XCTestSuiteRun.h>

@interface XSTestObserver : XCTestLog

@end


static NSInteger sTestCounter = 0;

@implementation XSTestObserver

+ (void)load
{
    [[NSUserDefaults standardUserDefaults] setValue:@"XSTestObserver" forKey:XCTestObserverClassKey];
}

- (void)testSuiteDidStart:(XCTestRun *)testRun {
    [super testSuiteDidStart:testRun];
    
    sTestCounter++;
}

- (void)testSuiteDidStop:(XCTestRun *)testRun {
    [super testSuiteDidStop:testRun];
    
    sTestCounter--;
    
    NSAssert(sTestCounter >= 0, @"sTestCounter should never be a negative number.");
    
    if (sTestCounter == 0) {
        UIApplication* application = [UIApplication sharedApplication];
        [application.delegate applicationWillTerminate:application];
    }
}
@end