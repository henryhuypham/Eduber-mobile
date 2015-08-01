//
//  SVConfirmHeaderView.m
//  Savvee
//

#import "StudentClassCell.h"

@implementation StudentClassCell

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

-(void)setInfo:(StudentClassInfo *)info{
    self.classnameLB.text = info.className;
    self.numberLB.text = [@(info.numberStudent) stringValue];
    self.scheduleLB.text = info.schedule;
    self.locationLB.text = info.location;
    
    [self.teacherImageView setImageWithURL:[NSURL URLWithString:info.teacherImageLink] placeholderImage:[UIImage imageNamed:@"placeholder"]];
    self.teacherImageView.contentMode = UIViewContentModeScaleAspectFill;
}

@end
