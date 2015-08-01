//
//  LoginViewController.m
//  Eduber
//
//  Created by LocNguyen on 8/1/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "LoginViewController.h"
#import "StudentStudyFieldsViewController.h"
#import "TeacherRegisterClassViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //default is studentMode
    loginModeSelected = 0;
    [self updateLayouToCurrentLoginMode];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)studentButtonTouched:(id)sender {
    loginModeSelected = 0;
    [self updateLayouToCurrentLoginMode];
}

- (IBAction)teacherButtonTouched:(id)sender {
    loginModeSelected = 1;
    [self updateLayouToCurrentLoginMode];
}

-(void)updateLayouToCurrentLoginMode{
    if(loginModeSelected == 0){
        //student login mode
        _teacherButton.backgroundColor = [UIColor clearColor];
        _studentButton.backgroundColor = [UIColor lightGrayColor];
    }else{
        //teacher login mode
        _studentButton.backgroundColor = [UIColor clearColor];
        _teacherButton.backgroundColor = [UIColor lightGrayColor];
    }
}
- (IBAction)loginLinkedlnTouched:(id)sender {
    [self performLogin];
}

- (IBAction)loginFacebookTouched:(id)sender {
    [self performLogin];
}

- (IBAction)loginGoogleTouched:(id)sender {
    [self performLogin];
}

-(void)performLogin{
    NSLog(@"Login...");
    UIStoryboard *sb = nil;
    UIViewController *viewController = nil;
    if(loginModeSelected == 0){
        sb = [UIStoryboard storyboardWithName:@"Student" bundle:nil];
        viewController=(StudentStudyFieldsViewController *)[sb instantiateViewControllerWithIdentifier:@"studentStudyFieldsViewController"];
    }else{
        sb = [UIStoryboard storyboardWithName:@"Teacher" bundle:nil];
        viewController=(TeacherRegisterClassViewController *)[sb instantiateViewControllerWithIdentifier:@"teacherRegisterClassViewController"];
    }
    if(viewController){
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
