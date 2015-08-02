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
}

- (IBAction)createClass:(id)sender {
    ClassInfo *info = [[ClassInfo alloc] init];
    info.className  = self.className.text;
    info.numberStudent = self.capacity.text;
    info.schedule = self.schedule.text;
    info.location = self.location.text;
}

@end
