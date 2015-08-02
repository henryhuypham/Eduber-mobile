//
//  SVNetworkEngine.m
//  Savvee
//

#import "NetworkEngine.h"

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

+ (void)getUserCourse:(CompletionBlockArray)completion
              onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"http://10.0.239.38/user/courses.json?user_id=1"];
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
    NSString *urlString = [NSString stringWithFormat:@"http://10.0.239.38/courses/register"];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:@"1",@"user_id",courseID,@"course_id",nil];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager GET:urlString parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

#pragma  - get teacher list
+ (void)getTeacherCourse:(CompletionBlockArray)completion
                 onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"http://10.0.239.38/courses.json"];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager POST:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

+ (void)createTeacherCourse:(NSString *)title onSuccess:(CompletionBlockObject)completion
                    onError:(FailureBlock)failure{
    NSString *urlString = [NSString stringWithFormat:@"http://10.0.239.38/courses.json"];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:title,@"course[title]",nil];
    
    AFHTTPRequestOperationManager *manager = [self getManager];
    [manager POST:urlString parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error, operation.responseObject);
    }];
}

@end
