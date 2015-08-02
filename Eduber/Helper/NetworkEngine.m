//
//  SVNetworkEngine.m
//  Savvee
//

#import "NetworkEngine.h"

#define kHost @"http://10.0.239.38:3000"

#define CHECK_VERSION if ((operation.response.statusCode == 400)&&operation.responseObject[@"error_code"]&&([operation.responseObject[@"error_code"] integerValue]==1)) [SVCommonDialog showUpgradeDialog];

@implementation NetworkEngine

static AFHTTPRequestOperationManager *manager;

#pragma mark - Singleton
+ (id)getManager
{
    if (!manager) {
        manager = [AFHTTPRequestOperationManager manager];
    }
    return manager;
}

#pragma mark - get user list

+ (void)getUserCourse:(CompletionBlockObject)completion
              onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"%@/users/courses.json?user_id=1",kHost];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:nil];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager GET:urlString parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

+ (void)createUserCourse:(NSString *)courseID onSuccess:(CompletionBlockObject)completion
                 onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"%@/courses/register",kHost];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:@"1",@"user_id",courseID,@"course_id",nil];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager POST:urlString parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

#pragma
+ (void)getTeacherCourse:(CompletionBlockObject)completion
                 onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"%@/users/courses.json?user_id=2",kHost];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

+ (void)getJoinedCourse:(CompletionBlockObject)completion
                 onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"%@/users/courses.json?user_id=1",kHost];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

+ (void)createTeacherCourse:(NSString *)title onSuccess:(CompletionBlockObject)completion
                    onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"%@/courses.json",kHost];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:title,@"course[title]",nil];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager POST:urlString parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

+ (void)getNewTeacherCourse:(CompletionBlockObject)completion
              onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"%@/courses.json",kHost];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:nil];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager GET:urlString parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

@end
