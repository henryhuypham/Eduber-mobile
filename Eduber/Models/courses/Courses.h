//
//  Courses.h
//
//  Created by   on 8/2/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Courses : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *location;
@property (nonatomic, assign) double quantity;
@property (nonatomic, strong) NSString *mapUrl;
@property (nonatomic, assign) double coursesIdentifier;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *courseTimeToS;
@property (nonatomic, strong) NSString *avatarUrl;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
