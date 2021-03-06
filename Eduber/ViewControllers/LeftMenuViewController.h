//
//  LeftMenuViewController.h
//  Eduber
//
//  Created by LocNguyen on 08/01/15.
//  Copyright (c) 2015 RobustTechHouse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentClassListViewController.h"
#import "LeftMenuHeaderView.h"

@interface LeftMenuViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    NSInteger _presentedRow;
    NSArray *data;
}

@property (weak, nonatomic) IBOutlet UITableView *menuTableView;
@property (assign,atomic) int loginModeSelected;
- (IBAction)signoutTouched:(id)sender;

@end
