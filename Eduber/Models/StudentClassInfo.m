//
//  ClassInfo.m
//  Eduber
//
//  Created by Huy Pham on 08/02/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "StudentClassInfo.h"

@implementation StudentClassInfo

- (id)init
{
    self = [super init];
    if (self) {
        _identify = 0;
        _className = @"";
        _numberStudent = 0;
        _schedule = @"";
        _location = @"";
        _teacherImageLink = @"";
    }
    return self;
}

@end
