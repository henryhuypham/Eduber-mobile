//
//  StudentStudyFieldsViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "StudentStudyFieldsViewController.h"
#import "StudyFieldCollectionViewCell.h"

#define kCollectionViewCell @"StudyFieldCollectionViewCell"

@implementation StudentStudyFieldsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.scrollviewWidth.constant = self.view.bounds.size.width - 2 * self.scrollviewSidePadding.constant;
}


@end
