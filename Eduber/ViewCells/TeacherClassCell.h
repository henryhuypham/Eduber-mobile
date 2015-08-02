//
//  SVConfirmHeaderView.h
//  Savvee
//

#import <UIKit/UIKit.h>
#import "UIView+Shadow.h"
#import "Courses.h"

@interface TeacherClassCell : UITableViewCell

@property(weak,nonatomic)IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *classnameLB;
@property (weak, nonatomic) IBOutlet UILabel *numberLB;
@property (weak, nonatomic) IBOutlet UILabel *scheduleLB;
@property (weak, nonatomic) IBOutlet UILabel *locationLB;

-(void)setInfo:(Courses *)info;

@end
