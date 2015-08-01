//
//  SVConfirmHeaderView.h
//  Savvee
//

#import <UIKit/UIKit.h>
#import "StudentClassInfo.h"
#import "UIView+Shadow.h"

@interface StudentClassCell : UITableViewCell

@property(weak,nonatomic)IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *teacherImageView;

@property (weak, nonatomic) IBOutlet UILabel *classnameLB;
@property (weak, nonatomic) IBOutlet UILabel *numberLB;
@property (weak, nonatomic) IBOutlet UILabel *scheduleLB;
@property (weak, nonatomic) IBOutlet UILabel *locationLB;

-(void)setInfo:(StudentClassInfo *)info;

@end
