//
//  TeacherClassListViewController.h
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfressorCell.h"
#import "Professor.h"
#import "NetworkEngine.h"
#import "Course.h"
#import "Courses.h"
#import "StudentClassListViewController.h"


@interface ProfessorListViewController : UIViewController<UITableViewDataSource, UITableViewDelegate,ProfressorCellDelegate>{
    Courses *pro;
}

@property (nonatomic,retain)NSMutableArray *professorList;

@property (nonatomic,retain)IBOutlet UITableView *tableView;

-(IBAction)addNewActon:(id)sender;

-(void)showalertView:(NSString *)title Description:(NSString *)description;

@end
