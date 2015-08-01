//
//  ClassInfo.m
//  Eduber
//
//  Created by Huy Pham on 08/02/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo

- (id)init
{
    self = [super init];
    if (self) {
        _identify = 0;
        _name = @"";
        _email = @"";
        _imageLink = @"";
    }
    return self;
}

@end
