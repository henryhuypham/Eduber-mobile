//
//  TestInfoViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "TestInfoViewController.h"
#import <SVProgressHUD.h>

@interface TestInfoViewController ()

@end

@implementation TestInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupView];
}

-(void)setupView{
    //title
    [self setTitle:@"Test Info"];
    
    //Status view
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20.0)];
    view.backgroundColor= [UIColor colorWithRed:234.0/255.0f green:76.0/255.0f blue:137.0/255.0f alpha:1.0];
    [self.view addSubview:view];
}

- (IBAction)takeTheTest:(id)sender {
    [SVProgressHUD setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:0.65f]];
    [SVProgressHUD show];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
        self.instructionView.hidden = YES;
        self.takeTestButton.hidden = YES;
        self.takeTestButton.enabled = NO;
    });
}

@end
