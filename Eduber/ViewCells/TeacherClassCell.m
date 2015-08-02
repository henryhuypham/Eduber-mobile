//
//  SVConfirmHeaderView.m
//  Savvee
//

#import "TeacherClassCell.h"
#import "Courses.h"

@implementation TeacherClassCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)awakeFromNib {
    // Initialization code
    [self.containerView applyShadow];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)setInfo:(Courses *)info{
    self.classnameLB.text = info.title;
    self.numberLB.text = [@(info.quantity) stringValue];
    self.scheduleLB.text = info.courseTimeToS;
    self.locationLB.text = info.location;
}

@end
