//
//  TeacherClassListViewController.h
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentClassCell.h"
#import "StudentClassInfo.h"

@interface StudentClassListViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,retain)NSMutableArray *classList;

@property (nonatomic,retain)IBOutlet UITableView *tableView;
@property (nonatomic,retain)IBOutlet UIButton *addNewButton;

-(IBAction)addNewActon:(id)sender;

@end
