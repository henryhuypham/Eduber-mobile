//
//  ClassCreatingViewController.h
//  Eduber
//
//  Created by Huy Pham on 08/02/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassCreatingViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *className;
@property (strong, nonatomic) IBOutlet UITextField *capacity;
@property (strong, nonatomic) IBOutlet UITextField *location;
@property (strong, nonatomic) IBOutlet UITextField *schedule;
@property (strong, nonatomic) IBOutlet UITextField *duration;
@property (strong, nonatomic) IBOutlet UITextField *startDate;
@property (strong, nonatomic) IBOutlet UITextField *notes;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *scrollviewHeight;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

- (IBAction)createClass:(id)sender;

@end
