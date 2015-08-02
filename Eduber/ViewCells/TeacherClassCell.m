//
//  SVConfirmHeaderView.m
//  Savvee
//

#import "TeacherClassCell.h"

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

-(void)setInfo:(ClassInfo *)info{
    self.classnameLB.text = info.className;
    self.numberLB.text = info.numberStudent;
    self.scheduleLB.text = info.schedule;
    self.locationLB.text = info.location;
}

@end
