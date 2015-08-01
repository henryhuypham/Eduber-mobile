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
}

- (IBAction)viewProfessorsDidTouch:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Student" bundle:nil];
    ProfessorListViewController *viewController = (ProfessorListViewController *)[sb instantiateViewControllerWithIdentifier:@"professorListViewController"];
    [self.navigationController  pushViewController:viewController animated:YES];
}

@end
