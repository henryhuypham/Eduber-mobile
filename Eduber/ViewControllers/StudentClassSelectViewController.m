//
//  StudentClassSelectViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "StudentClassSelectViewController.h"
#import "TestInfoViewController.h"

@implementation StudentClassSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    [self setupView];
}


-(void)viewWillAppear:(BOOL)animated{
    [self setTitle:@"Subjects"];
}

-(void)setupView{
    //scrollView
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.scrollView.contentInset = UIEdgeInsetsMake(0,0,0,0);
    self.scrollviewWidth.constant = self.view.bounds.size.width - 2 * self.scrollviewSidePadding.constant;
    
    //Status view
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20.0)];
    view.backgroundColor= [UIColor colorWithRed:234.0/255.0f green:76.0/255.0f blue:137.0/255.0f alpha:1.0];
    [self.view addSubview:view];
    //apply shadow
    [self.toeflView applyShadow];
    [self.toeicView applyShadow];
    [self.ieltsView applyShadow];
    [self.chemistryView applyShadow];
    [self.geographicView applyShadow];
    [self.historyView applyShadow];
    
    //fade in
    [self fadeInToeicView];
    [self fadeInToefl];
    [self fadeInIelts];
    [self fadeInChemistry];
    [self fadeInHistory];
    [self fadeInGeography];
}

-(void)fadeInToeicView{
    [self.toeicView setAlpha:0.0f];
    
    //fade in
    [UIView animateWithDuration:0.5f animations:^{
        
        [self.toeicView setAlpha:1.0f];
        
    } completion:^(BOOL finished) {
        
    }];
}

-(void)fadeInToefl{
    [self.toeflView setAlpha:0.0f];
    
    //fade in
    [UIView animateWithDuration:0.5f animations:^{
        
        [self.toeflView setAlpha:1.0f];
        
    } completion:^(BOOL finished) {
        
    }];
}

-(void)fadeInIelts{
    [self.ieltsView setAlpha:0.0f];
    
    //fade in
    [UIView animateWithDuration:0.5f animations:^{
        
        [self.ieltsView setAlpha:1.0f];
        
    } completion:^(BOOL finished) {
        
    }];
}

-(void)fadeInChemistry{
    [self.chemistryView setAlpha:0.0f];
    
    //fade in
    [UIView animateWithDuration:0.5f animations:^{
        
        [self.chemistryView setAlpha:1.0f];
        
    } completion:^(BOOL finished) {
        
    }];
}

-(void)fadeInGeography{
    [self.geographicView setAlpha:0.0f];
    
    //fade in
    [UIView animateWithDuration:0.5f animations:^{
        
        [self.geographicView setAlpha:1.0f];
        
    } completion:^(BOOL finished) {
        
    }];
}

-(void)fadeInHistory{
    [self.historyView setAlpha:0.0f];
    
    //fade in
    [UIView animateWithDuration:0.5f animations:^{
        
        [self.historyView setAlpha:1.0f];
        
    } completion:^(BOOL finished) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)toeicAction:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Student" bundle:nil];
    TestInfoViewController *viewController = (TestInfoViewController *)[sb instantiateViewControllerWithIdentifier:@"testInfoViewController"];
    [self.navigationController  pushViewController:viewController animated:YES];
}

@end
