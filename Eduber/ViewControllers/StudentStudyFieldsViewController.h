//
//  StudentStudyFieldsViewController.h
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentStudyFieldsViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIView *englishView;
@property (weak, nonatomic) IBOutlet UIView *mathView;
@property (weak, nonatomic) IBOutlet UIView *physicView;
@property (weak, nonatomic) IBOutlet UIView *chemistryView;
@property (weak, nonatomic) IBOutlet UIView *geographicView;
@property (weak, nonatomic) IBOutlet UIView *historyView;

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *scrollviewWidth;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *scrollviewSidePadding;


@end
