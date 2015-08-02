//
//  LoginViewController.m
//  Eduber
//
//  Created by LocNguyen on 8/1/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "LoginViewController.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //default is studentMode
    loginModeSelected = 0;
    [self updateLayouToCurrentLoginMode];
    
    //setup view
    [self setupView];
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.hidden = YES;
}

-(void)setupView{
    [self.facebookButton applyFacebookStyle];
    [self.linkedinButton applyLinkedInStyle];
    [self.googleButton applyGoogleStyle];
    
    [self setupLabel];
    [self setupImageView];
}

-(void)setupLabel{
    [self.studentLabel setFont:[UIFont boldSystemFontOfSize:16.0f]];
    [self.studentLabel setTextColor:[UIColor colorWithRed:234.0/255.0 green:76.0/255.0f blue:137.0/255.0f alpha:1.0]];
    self.studentLabel.layer.borderWidth = 0;
    self.studentLabel.layer.cornerRadius = 5;
    self.studentLabel.layer.borderColor = [UIColor whiteColor].CGColor;
        self.studentLabel.layer.backgroundColor = [[UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.8f] CGColor];
    
    [self.profressorLabel setFont:[UIFont boldSystemFontOfSize:16.0f]];
     [self.profressorLabel setTextColor:[UIColor colorWithRed:234.0/255.0 green:76.0/255.0f blue:137.0/255.0f alpha:1.0]];
    self.profressorLabel.layer.borderWidth = 0;
    self.profressorLabel.layer.cornerRadius = 5;
    self.profressorLabel.layer.borderColor = [UIColor whiteColor].CGColor;
        self.profressorLabel.layer.backgroundColor = [[UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.8f] CGColor];
    
    //label
    self.studentLabel.hidden = NO;
    self.profressorLabel.hidden = YES;
}

-(void)setupImageView{
    //ImageView
    self.studentImage = [UIImage imageNamed:@"student_login_icon"];
    [self.studentImageView setImage:self.studentImage];
    self.studentImageView.layer.cornerRadius = self.studentImageView.frame.size.width / 2;
    self.studentImageView.clipsToBounds = YES;
    self.studentImageView.layer.borderWidth = 2;
    self.studentImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //action
    UITapGestureRecognizer *studentTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(studentButtonTouched:)];
    [self.studentImageView setUserInteractionEnabled:YES];
    [self.studentImageView addGestureRecognizer:studentTap];
    
    self.profressorImage = [UIImage imageNamed:@"profressor_login_icon"];
    [self.profressorImageView setImage:self.profressorImage];
    self.profressorImageView.layer.cornerRadius = self.profressorImageView.frame.size.width/2;
    self.profressorImageView.layer.masksToBounds = YES;
    self.profressorImageView.layer.borderWidth = 2;
    self.profressorImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //action
    UITapGestureRecognizer *profressorTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(teacherButtonTouched:)];
    [self.profressorImageView setUserInteractionEnabled:YES];
    [self.profressorImageView addGestureRecognizer:profressorTap];
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
    if(loginModeSelected == 1){
        self.studentBackgroundImageView.alpha = 0.0;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        self.studentBackgroundImageView.alpha = 1.0;
        [UIView commitAnimations];
    }
    
    loginModeSelected = 0;
    [self updateLayouToCurrentLoginMode];
    
    //label
    self.studentLabel.hidden = NO;
    self.profressorLabel.hidden = YES;
}

- (IBAction)teacherButtonTouched:(id)sender {
    if(loginModeSelected == 0){
        self.professorBackgroundImageView.alpha = 0;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        self.professorBackgroundImageView.alpha = 1.0;
        [UIView commitAnimations];
        
        self.studentBackgroundImageView.alpha = 1.0;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        self.studentBackgroundImageView.alpha = 0;
        [UIView commitAnimations];
        [self updateLayouToCurrentLoginMode];
    }
    
    loginModeSelected = 1;
    
    
    //label
    self.studentLabel.hidden = YES;
    self.profressorLabel.hidden = NO;
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
                viewController=(TeacherClassListViewController *)[sb instantiateViewControllerWithIdentifier:@"teacherClassListViewController"];
    }
    
    sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LeftMenuViewController *leftMenuViewController = (LeftMenuViewController *)[sb instantiateViewControllerWithIdentifier:@"leftMenuViewController"];
    UINavigationController *frontNavigationController = [[UINavigationController alloc] initWithNavigationBarClass:[CustomNavigationBar class] toolbarClass:nil];
    leftMenuViewController.loginModeSelected = loginModeSelected;
    [frontNavigationController setViewControllers:@[viewController] animated:NO];
    
    UIViewController *viewController2 =(LoginViewController *)[sb instantiateViewControllerWithIdentifier:@"loginViewController"];
    SWRevealViewController *mainRevealController = [[SWRevealViewController alloc]
                                                    initWithRearViewController:leftMenuViewController frontViewController:frontNavigationController];
    //settup navigation bar touch
    CustomNavigationBar* navigationBar=(CustomNavigationBar*) frontNavigationController.navigationBar;
    
    mainRevealController.rearViewRevealOverdraw=0.0f;
    [navigationBar.toggleButton addTarget:mainRevealController action: @selector( revealToggle: ) forControlEvents:UIControlEventTouchUpInside];
    [navigationBar addGestureRecognizer:mainRevealController.panGestureRecognizer];
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController pushViewController:mainRevealController animated:YES];
    
    
    
    
    
}

@end
