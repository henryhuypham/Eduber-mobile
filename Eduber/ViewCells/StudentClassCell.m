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
    
    //button
    [self.chatBT applyAppStyle];
    [self.chatBT setBackgroundImage:[UIImage  imageWithColor:kOrangeContact cornerRadius:0] forState:UIControlStateNormal];
    
    //button
    [self.mapBT applyAppStyle];
    
    //corner
    self.layer.borderColor = [[UIColor whiteColor] CGColor];
    self.layer.borderWidth = 2;
    self.layer.cornerRadius = 3;
    self.clipsToBounds = YES;
    
    [self.teacherImageView setImageWithURL:[NSURL URLWithString:info.teacherImageLink] placeholderImage:[UIImage imageNamed:@"placeholder"]];
    self.teacherImageView.contentMode = UIViewContentModeScaleAspectFill;
}

-(IBAction)chatAction:(id)sender{
    [self.delegate chatWithTeacher];
}

- (IBAction)mapAction:(id)sender{
    [self.delegate viewClassMap:@"https://www.google.com/maps/place/1+L%C3%AA+Du%E1%BA%A9n,+B%E1%BA%BFn+Ngh%C3%A9,+Qu%E1%BA%ADn+1,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.781613,106.699011,17z/data=!3m1!4b1!4m2!3m1!1s0x31752f3630448cc3:0xefd07452d0fa1062"];
}



@end
