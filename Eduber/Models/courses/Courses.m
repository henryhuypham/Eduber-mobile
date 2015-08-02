//
//  Courses.m
//
//  Created by   on 8/2/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Courses.h"


NSString *const kCoursesLocation = @"location";
NSString *const kCoursesQuantity = @"quantity";
NSString *const kCoursesMapUrl = @"map_url";
NSString *const kCoursesId = @"id";
NSString *const kCoursesTitle = @"title";
NSString *const kCoursesCourseTimeToS = @"course_time";
NSString *const kCoursesAvatarUrl = @"avatar_url";


@interface Courses ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Courses

@synthesize location = _location;
@synthesize quantity = _quantity;
@synthesize mapUrl = _mapUrl;
@synthesize coursesIdentifier = _coursesIdentifier;
@synthesize title = _title;
@synthesize courseTimeToS = _courseTimeToS;
@synthesize avatarUrl = _avatarUrl;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.location = [self objectOrNilForKey:kCoursesLocation fromDictionary:dict];
            self.quantity = [[self objectOrNilForKey:kCoursesQuantity fromDictionary:dict] doubleValue];
            self.mapUrl = [self objectOrNilForKey:kCoursesMapUrl fromDictionary:dict];
            self.coursesIdentifier = [[self objectOrNilForKey:kCoursesId fromDictionary:dict] doubleValue];
            self.title = [self objectOrNilForKey:kCoursesTitle fromDictionary:dict];
            self.courseTimeToS = [self objectOrNilForKey:kCoursesCourseTimeToS fromDictionary:dict];
            self.avatarUrl = [self objectOrNilForKey:kCoursesAvatarUrl fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.location forKey:kCoursesLocation];
    [mutableDict setValue:[NSNumber numberWithDouble:self.quantity] forKey:kCoursesQuantity];
    [mutableDict setValue:self.mapUrl forKey:kCoursesMapUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.coursesIdentifier] forKey:kCoursesId];
    [mutableDict setValue:self.title forKey:kCoursesTitle];
    [mutableDict setValue:self.courseTimeToS forKey:kCoursesCourseTimeToS];
    [mutableDict setValue:self.avatarUrl forKey:kCoursesAvatarUrl];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.location = [aDecoder decodeObjectForKey:kCoursesLocation];
    self.quantity = [aDecoder decodeDoubleForKey:kCoursesQuantity];
    self.mapUrl = [aDecoder decodeObjectForKey:kCoursesMapUrl];
    self.coursesIdentifier = [aDecoder decodeDoubleForKey:kCoursesId];
    self.title = [aDecoder decodeObjectForKey:kCoursesTitle];
    self.courseTimeToS = [aDecoder decodeObjectForKey:kCoursesCourseTimeToS];
    self.avatarUrl = [aDecoder decodeObjectForKey:kCoursesAvatarUrl];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_location forKey:kCoursesLocation];
    [aCoder encodeDouble:_quantity forKey:kCoursesQuantity];
    [aCoder encodeObject:_mapUrl forKey:kCoursesMapUrl];
    [aCoder encodeDouble:_coursesIdentifier forKey:kCoursesId];
    [aCoder encodeObject:_title forKey:kCoursesTitle];
    [aCoder encodeObject:_courseTimeToS forKey:kCoursesCourseTimeToS];
    [aCoder encodeObject:_avatarUrl forKey:kCoursesAvatarUrl];
}

- (id)copyWithZone:(NSZone *)zone
{
    Courses *copy = [[Courses alloc] init];
    
    if (copy) {

        copy.location = [self.location copyWithZone:zone];
        copy.quantity = self.quantity;
        copy.mapUrl = [self.mapUrl copyWithZone:zone];
        copy.coursesIdentifier = self.coursesIdentifier;
        copy.title = [self.title copyWithZone:zone];
        copy.courseTimeToS = [self.courseTimeToS copyWithZone:zone];
        copy.avatarUrl = [self.avatarUrl copyWithZone:zone];
    }
    
    return copy;
}


@end
