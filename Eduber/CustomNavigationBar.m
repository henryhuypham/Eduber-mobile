//
//  CustomNavigationBAr.m
//  Eduber
//
//  Created by LocNguyen on 08/01/15.
//  Copyright (c) 2015 RobustTechHouse. All rights reserved.
//

#import "CustomNavigationBar.h"
const CGFloat VFSNavigationBarHeightIncrease = 12.f;
@implementation CustomNavigationBar


- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize {
    [self setTitleVerticalPositionAdjustment:-(VFSNavigationBarHeightIncrease) forBarMetrics:UIBarMetricsDefault];
    appLogo = [[UIImageView alloc]init];
    appLogo.backgroundColor = [UIColor clearColor];
    UIImage *image = [UIImage imageNamed:@"loginlogo.png"];
    appLogo.image=image;
    appLogo.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:appLogo];
    
    borderView=[[UIView alloc]init];
    borderView.backgroundColor=[UIColor colorWithRed:((float) 235.0f / 255.0f)   green:((float) 235.0f / 255.0f)   blue:((float) 235.0f / 255.0f)   alpha:1.0f];
    [self addSubview:borderView];
    
    self.toggleButton=[[UIButton alloc] init];
    [self.toggleButton setImage:[UIImage imageNamed:@"btn_toggle.png"] forState:UIControlStateNormal];
    [self addSubview:self.toggleButton];
    
 }


- (CGSize)sizeThatFits:(CGSize)size {
    CGSize amendedSize = [super sizeThatFits:size];
    amendedSize.height += VFSNavigationBarHeightIncrease;
    return amendedSize;
}

- (void)drawRect:(CGRect)rect {
    
}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.toggleButton.frame=CGRectMake(0, 0, 30, 19);
    self.toggleButton.center=CGPointMake(28, self.frame.size.height/2);

    appLogo.frame=CGRectMake(0, 0, 160, self.frame.size.height-20);
    appLogo.center=CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    borderView.frame=CGRectMake(0, self.frame.size.height-2.5f, self.frame.size.width, 2.5f);
    NSArray *classNamesToReposition = @[@"UINavigationItemView", @"UINavigationButton"];
    
    for (UIView *view in [self subviews]) {
        
        if ([classNamesToReposition containsObject:NSStringFromClass([view class])]) {
            
            CGRect frame = [view frame];
            frame.origin.y -= VFSNavigationBarHeightIncrease;
            
            [view setFrame:frame];
        }
    }
}


@end
