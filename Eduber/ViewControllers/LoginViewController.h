//
//  LoginViewController.h
//  Eduber
//
//  Created by LocNguyen on 8/1/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController{
    int loginModeSelected;
    
}
- (IBAction)studentButtonTouched:(id)sender;
- (IBAction)teacherButtonTouched:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *studentButton;
@property (weak, nonatomic) IBOutlet UIButton *teacherButton;
- (IBAction)loginLinkedlnTouched:(id)sender;
- (IBAction)loginFacebookTouched:(id)sender;
- (IBAction)loginGoogleTouched:(id)sender;

@end
