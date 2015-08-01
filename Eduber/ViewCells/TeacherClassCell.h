//
//  SVConfirmHeaderView.h
//  Savvee
//

#import <UIKit/UIKit.h>
#import "ClassInfo.h"

@interface TeacherClassCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *classnameLB;
@property (weak, nonatomic) IBOutlet UILabel *numberLB;
@property (weak, nonatomic) IBOutlet UILabel *scheduleLB;
@property (weak, nonatomic) IBOutlet UILabel *locationLB;

-(void)setInfo:(ClassInfo *)info;

@end
