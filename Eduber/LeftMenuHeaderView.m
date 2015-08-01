//
//  LeftMenuHeaderView.m
//  Eduber
//
//  Created by admin on 8/1/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "LeftMenuHeaderView.h"

@implementation LeftMenuHeaderView

-(void)awakeFromNib{
    [self setupAvatar];
    [self setupLabel];
}

-(void)setupAvatar{
    UIImage *image = [UIImage imageNamed:@"obama"];
    [self.avatarView setImage:image];
    self.avatarView.layer.cornerRadius = 10;
    self.avatarView.layer.masksToBounds = YES;
    self.avatarView.layer.borderWidth = 2;
    self.avatarView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //background imageview
    UIImage *backgroundImage = [UIImage imageNamed:@"obama"];
        CGRect frame = CGRectMake(0,0, backgroundImage.size.width,backgroundImage.size.height);
    backgroundImage = [backgroundImage applyLightEffectAtFrame:frame];
    [self.backgroundView setImage:backgroundImage];
    self.backgroundView.layer.masksToBounds = YES;
}

-(void)setupLabel{
    //label
    [self.nameLabel setTextColor:[UIColor whiteColor]];
    [self.nameLabel setFont:[UIFont  boldSystemFontOfSize:16.0f]];
    
    [self.emailLabel setTextColor:[UIColor whiteColor]];

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
