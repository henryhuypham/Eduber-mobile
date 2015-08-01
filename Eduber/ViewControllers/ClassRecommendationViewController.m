//
//  ClassRecommendationViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/02/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "ClassRecommendationViewController.h"
#import "ProfessorListViewController.h"

@interface ClassRecommendationViewController ()

@end

@implementation ClassRecommendationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    //Status view
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20.0)];
    view.backgroundColor= [UIColor colorWithRed:234.0/255.0f green:76.0/255.0f blue:137.0/255.0f alpha:1.0];
    [self.view addSubview:view];
}

- (IBAction)viewProfessorsDidTouch:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Student" bundle:nil];
    ProfessorListViewController *viewController = (ProfessorListViewController *)[sb instantiateViewControllerWithIdentifier:@"professorListViewController"];
    [self.navigationController  pushViewController:viewController animated:YES];
}

@end
