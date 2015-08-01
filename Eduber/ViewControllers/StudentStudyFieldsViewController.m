//
//  StudentStudyFieldsViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "StudentStudyFieldsViewController.h"
#import "StudyFieldCollectionViewCell.h"
#import "CustomNavigationBar.h"

#define kCollectionViewCell @"StudyFieldCollectionViewCell"

@implementation StudentStudyFieldsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupView];
    [self setTitle:@"Subjects"];
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20.0)];
    view.backgroundColor= [UIColor colorWithRed:234.0/255.0f green:76.0/255.0f blue:137.0/255.0f alpha:1.0];
    [self.view addSubview:view];
}

-(void)setupView{
    //scrollView
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.scrollView.contentInset = UIEdgeInsetsMake(0,0,0,0);
    self.scrollviewWidth.constant = self.view.bounds.size.width - 2 * self.scrollviewSidePadding.constant;
    
    //apply shadow
    [self.englishView applyShadow];
    [self.mathView applyShadow];
    [self.physicView applyShadow];
    [self.chemistryView applyShadow];
    [self.geographicView applyShadow];
    [self.historyView applyShadow];
    
}

@end
