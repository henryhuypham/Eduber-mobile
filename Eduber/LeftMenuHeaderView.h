//
//  LeftMenuHeaderView.h
//  Eduber
//
//  Created by admin on 8/1/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "UIImage+BlurredFrame.h"
#import "UserInfo.h"

@interface LeftMenuHeaderView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *backgroundView;
@property (weak, nonatomic) IBOutlet UIImageView *avatarView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;

-(void)setInfo:(UserInfo *)user;

@end
