//
//  ClassInfo.h
//  Eduber
//
//  Created by Huy Pham on 08/02/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Professor : NSObject

@property(nonatomic)double identify;
@property(nonatomic,retain)NSString* name;
@property(nonatomic)NSString* imageLink;
@property(nonatomic,retain)NSString* school;
@property(nonatomic,retain)NSString* phone;
@property(nonatomic,retain)NSString* email;
@property(nonatomic,retain)NSString* address;

@end
