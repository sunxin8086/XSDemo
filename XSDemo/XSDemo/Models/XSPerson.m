//
//  XSPerson.m
//  XSDemo
//
//  Created by Xin Sun on 1/13/14.
//  Copyright (c) 2014 Xin Sun. All rights reserved.
//

#import "XSPerson.h"

@implementation XSPerson

@synthesize firstName, lastName, fullName;

-(NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", firstName, lastName];
}

@end
