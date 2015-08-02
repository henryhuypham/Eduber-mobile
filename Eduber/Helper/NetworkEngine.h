//
//  SVNetworkEngine.h
//  Savvee
//

#import <Foundation/Foundation.h>

typedef void (^CompletionBlockObject)(NSDictionary *data);
typedef void (^CompletionBlockArray)(NSArray *data);
typedef void (^FailureBlock)(NSError *error, NSDictionary *data);

@interface NetworkEngine : NSObject

+ (id)getManager;

+ (void)getUserCourse:(CompletionBlockObject)completion
              onError:(FailureBlock)failure;

+ (void)createUserCourse:(NSString *)courseID onSuccess:(CompletionBlockObject)completion
                 onError:(FailureBlock)failure;

#pragma  - get teacher list
+ (void)getTeacherCourse:(CompletionBlockObject)completion
                 onError:(FailureBlock)failure;

+ (void)createTeacherCourse:(NSString *)title onSuccess:(CompletionBlockObject)completion
                    onError:(FailureBlock)failure;
@end
