//
//  UIView+Shadow.m
//  Eduber
//
//  Created by admin on 8/1/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "UIView+Shadow.h"

@implementation UIView (Shadow)

-(void)applyShadow{
    // border radius
    [self.layer setCornerRadius:0];
    
    // border
    [self.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.layer setBorderWidth:0.5f];
    
    // drop shadow
    [self.layer setShadowColor:[UIColor blackColor].CGColor];
    [self.layer setShadowOpacity:0.3];
    [self.layer setShadowRadius:2.0];
    [self.layer setShadowOffset:CGSizeMake(0, 0)];
}

@end
