//
//  TeacherClassListViewController.h
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeacherClassCell.h"
#import "NetworkEngine.h"
#import "Course.h"
#import "ClassCreatingViewController.h"

@interface TeacherClassListViewController : UIViewController<UITableViewDataSource, UITableViewDelegate,ClassCreatingViewDelegate>

@property (nonatomic,retain)NSMutableArray *classList;

@property (nonatomic,retain)IBOutlet UITableView *tableView;
@property (nonatomic,retain)IBOutlet UIButton *addNewButton;

-(IBAction)addNewActon:(id)sender;

@end
