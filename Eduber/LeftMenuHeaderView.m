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
    [self setupLabel];
}

-(void)setupLabel{
    //label
    [self.nameLabel setTextColor:[UIColor whiteColor]];
    [self.nameLabel setFont:[UIFont  boldSystemFontOfSize:16.0f]];
    
    [self.emailLabel setTextColor:[UIColor whiteColor]];

}

-(void)setInfo:(UserInfo *)user{
    self.nameLabel.text = user.name;
    self.emailLabel.text = user.email;
    
    //avatar
    [self.avatarView setImageWithURL:[NSURL URLWithString:user.imageLink] placeholderImage:[UIImage imageNamed:@"placeholder"]];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[user.imageLink stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
    [self.avatarView setImageWithURLRequest:request placeholderImage:[UIImage imageNamed:@"placeholder"] success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image) {
        //background image
        UIImage *backgroundImage = image;
        CGRect frame = CGRectMake(0,0, backgroundImage.size.width,backgroundImage.size.height);
        backgroundImage = [backgroundImage applyLightEffectAtFrame:frame];
        [self.backgroundView setImage:backgroundImage];
        self.backgroundView.layer.masksToBounds = YES;
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error) {
        
    }];
}


@end
