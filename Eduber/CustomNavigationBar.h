//
//  CustomNavigationBAr.h
//  Eduber
//
//  Created by LocNguyen on 08/01/15.
//  Copyright (c) 2015 RobustTechHouse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomNavigationBar : UINavigationBar{
    UIImageView* appLogo;
    UIView* borderView;
}
@property (strong, nonatomic) UIButton *toggleButton;

@end
