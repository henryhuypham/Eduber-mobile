//
//  ClassCreatingViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/02/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "ClassCreatingViewController.h"
#import "ClassInfo.h"

@implementation ClassCreatingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Status view
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20.0)];
    view.backgroundColor= [UIColor colorWithRed:234.0/255.0f green:76.0/255.0f blue:137.0/255.0f alpha:1.0];
    [self.view addSubview:view];
    
    //scrollView
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.scrollView.contentInset = UIEdgeInsetsMake(0,0,0,0);
    self.scrollviewHeight.constant = self.view.bounds.size.width;
    
    //text field
    [self setTextField];
}

-(void)setTextField{
   self.className.placeholder = @"Class Name";
    self.capacity.placeholder = @"ex : 30";
   self.location.placeholder = @"ex : 1 Lê Duẩn, Phường 1 ,Quận 1";
    self.schedule.placeholder = @"8h30 thứ 2-4-6";
   self.duration.placeholder = @"2h30";
    self.startDate.placeholder = @"26-05-2015";
    self.notes.placeholder = @"Đi học đông đủ";
}

- (IBAction)createClass:(id)sender {
    ClassInfo *info = [[ClassInfo alloc] init];
    info.className  = self.className.text;
    info.numberStudent = self.capacity.text;
    info.schedule = self.schedule.text;
    info.location = self.location.text;
}

@end
