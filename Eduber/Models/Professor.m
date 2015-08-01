//
//  ClassInfo.m
//  Eduber
//
//  Created by Huy Pham on 08/02/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "Professor.h"

@implementation Professor

- (id)init
{
    self = [super init];
    if (self) {
        _identify = 0;
        _name = @"";
        _imageLink = @"";
        _school = @"";
        _phone = @"";
        _email = @"";
        _address = @"";
    }
    return self;
}

@end
