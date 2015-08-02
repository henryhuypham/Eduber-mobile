//
//  Course.m
//
//  Created by   on 8/2/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Course.h"
#import "Courses.h"


NSString *const kCourseCourses = @"courses";


@interface Course ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Course

@synthesize courses = _courses;


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
    NSObject *receivedCourses = [dict objectForKey:kCourseCourses];
    NSMutableArray *parsedCourses = [NSMutableArray array];
    if ([receivedCourses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedCourses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedCourses addObject:[Courses modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedCourses isKindOfClass:[NSDictionary class]]) {
       [parsedCourses addObject:[Courses modelObjectWithDictionary:(NSDictionary *)receivedCourses]];
    }

    self.courses = [NSArray arrayWithArray:parsedCourses];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForCourses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.courses) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCourses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCourses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCourses] forKey:kCourseCourses];

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

    self.courses = [aDecoder decodeObjectForKey:kCourseCourses];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_courses forKey:kCourseCourses];
}

- (id)copyWithZone:(NSZone *)zone
{
    Course *copy = [[Course alloc] init];
    
    if (copy) {

        copy.courses = [self.courses copyWithZone:zone];
    }
    
    return copy;
}


@end
