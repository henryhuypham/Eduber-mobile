//
//  SVConfirmHeaderView.h
//  Savvee
//

#import <UIKit/UIKit.h>
#import "StudentClassInfo.h"
#import "UIView+Shadow.h"
#import "UIButton+Style.h"
#import "UIImage+Color.h"

@protocol StudentClassCellDelegate <NSObject>
@required
- (void) chatWithTeacher;
@end

@interface StudentClassCell : UITableViewCell

@property(weak,nonatomic)IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *teacherImageView;

@property (weak, nonatomic) IBOutlet UILabel *classnameLB;
@property (weak, nonatomic) IBOutlet UILabel *numberLB;
@property (weak, nonatomic) IBOutlet UILabel *scheduleLB;
@property (weak, nonatomic) IBOutlet UILabel *locationLB;

@property (weak, nonatomic) IBOutlet UIButton *chatBT;

@property(nonatomic,retain)id<StudentClassCellDelegate>delegate;

-(void)setInfo:(StudentClassInfo *)info;

-(IBAction)chatAction:(id)sender;

@end
