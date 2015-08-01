//
//  LoginViewController.h
//  Eduber
//
//  Created by LocNguyen on 8/1/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#import "UIButton+Style.h"
#import "UIImage+BlurredFrame.h"
#import "StudentStudyFieldsViewController.h"
#import "TeacherClassListViewController.h"
#import "LeftMenuViewController.h"
#import "SWRevealViewController.h"
#import "CustomNavigationBar.h"

@interface LoginViewController : UIViewController{
    int loginModeSelected;
    
}

@property (weak, nonatomic) IBOutlet UIButton *studentButton;
@property (weak, nonatomic) IBOutlet UIButton *teacherButton;
@property (weak, nonatomic) IBOutlet UIButton *facebookButton;
@property (weak, nonatomic) IBOutlet UIButton *linkedinButton;
@property (weak, nonatomic) IBOutlet UIButton *googleButton;

@property (weak, nonatomic) UIImage *studentImage;
@property (weak, nonatomic) UIImage *profressorImage;
@property (weak, nonatomic) IBOutlet UIImageView *studentImageView;
@property (weak, nonatomic) IBOutlet UIImageView *profressorImageView;

@property (weak, nonatomic) IBOutlet UIImageView *studentBackgroundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *professorBackgroundImageView;

@property (weak, nonatomic) IBOutlet UILabel *studentLabel;
@property (weak, nonatomic) IBOutlet UILabel *profressorLabel;

- (IBAction)studentButtonTouched:(id)sender;
- (IBAction)teacherButtonTouched:(id)sender;
- (IBAction)loginLinkedlnTouched:(id)sender;
- (IBAction)loginFacebookTouched:(id)sender;
- (IBAction)loginGoogleTouched:(id)sender;

@end
