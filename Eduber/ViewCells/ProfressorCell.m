//
//  SVConfirmHeaderView.m
//  Savvee
//

#import "ProfressorCell.h"

@implementation ProfressorCell

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
    
    //circle imageview
    UIImage *image = [UIImage imageNamed:@"obama"];
    [self.avatarView setImage:image];
    self.avatarView.layer.cornerRadius = self.avatarView.frame.size.width / 2;
    self.avatarView.clipsToBounds = YES;
    self.avatarView.layer.borderWidth = 2;
    self.avatarView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //button
    [self.joinButton applyAppStyle];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)setInfo:(Professor *)info{
    self.nameLB.text = info.name;
    self.phoneLB.text = info.phone;
    self.schoolLB.text = info.school;
    self.addressLB.text = info.address;
//    [self.avatarView ]
}

@end
