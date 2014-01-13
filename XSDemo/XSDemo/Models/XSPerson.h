//
//  XSPerson.h
//  XSDemo
//
//  Created by Xin Sun on 1/13/14.
//  Copyright (c) 2014 Xin Sun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSPerson : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, readonly) NSString *fullName;

@end
