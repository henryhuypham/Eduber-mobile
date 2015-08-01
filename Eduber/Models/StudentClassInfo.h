//
//  ClassInfo.h
//  Eduber
//
//  Created by Huy Pham on 08/02/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudentClassInfo : NSObject

@property(nonatomic)double identify;
@property(nonatomic,retain)NSString* className;
@property(nonatomic,retain)NSString* teacherImageLink;
@property(nonatomic)double numberStudent;
@property(nonatomic,retain)NSString* schedule;
@property(nonatomic,retain)NSString* location;

@end
