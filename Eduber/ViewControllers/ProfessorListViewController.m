//
//  TeacherClassListViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "ProfessorListViewController.h"
#define kCellID @"ProfessorCell"

@implementation ProfessorListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    [self setupView];
    
    //setup data
    [self setupData];
}

-(void)setupData{
    [SVProgressHUD setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:0.65f]];
    [SVProgressHUD show];
    [NetworkEngine getNewTeacherCourse:^(NSDictionary *data) {
        Course *couse = [[Course alloc] initWithDictionary:data];
        self.professorList = couse.courses;
        [SVProgressHUD dismiss];
        [self.tableView.pullToRefreshView stopAnimating];
        
        [self.tableView reloadData];
    } onError:^(NSError *error, NSDictionary *data) {
        [SVProgressHUD dismiss];
    }];
    
}


-(void)setupView{

    //title
    [self setTitle:@"Professor"];
    
    //scrollView
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableView.contentInset = UIEdgeInsetsMake(0,0,0,0);
    //Status view
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20.0)];
    view.backgroundColor= [UIColor colorWithRed:234.0/255.0f green:76.0/255.0f blue:137.0/255.0f alpha:1.0];
    [self.view addSubview:view];
    
    //table view
    self.tableView.separatorColor = [UIColor clearColor];
    
    //Add refresh control
    [self.tableView addPullToRefreshWithActionHandler:^{
        [self setupData];
    }];

}

#pragma mark - TableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return self.professorList.count;
        default:
            break;
    }
    return 0;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    //Alternate background color for cells
    if (indexPath.row % 2 == 1) {
        cell.backgroundColor = kLightBlueColor;
    }
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    return indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    //Open screen according to selected item
    switch (indexPath.section) {
        case 0:
            NSLog(@"Click class");
//            selectOrder = self.orderHistoryArr[indexPath.row];
//            [self performSegueWithIdentifier:@"FromOrderHistoryListToOrderHistory" sender:self];
            break;
        default:
            break;
    }
}

#pragma mark - TableView DataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProfressorCell*cell = [tableView dequeueReusableCellWithIdentifier:kCellID];

    if (!cell) {
         cell = [[ProfressorCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSString *likeNumberString = [NSString stringWithFormat:@"%d", arc4random_uniform(500)];
    [cell.likeNumberLabel setText:likeNumberString];
    Courses *info = self.professorList[indexPath.row];
    [cell setInfo:info];
    cell.delegate = self;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            return 120;
        default:
            break;
    }
    return 20;
}

#pragma mark - ProfessorCell Delegate
- (void) joinClass:(Courses *)cou{
    NSString *body = [NSString stringWithFormat:@"Are you sure to join this class : %@?",cou.title];
    pro = cou;
    [self showalertView:@"Confirm" Description:body];
}

#pragma mark - join action
-(IBAction)joinAction:(id)sender{
    NSLog(@"Join Action");

}

-(void)showalertView:(NSString *)title Description:(NSString *)description{
    SIAlertView *alertView = [[SIAlertView alloc] initWithTitle:title andMessage:description];
    
    [alertView addButtonWithTitle:@"OK"
                             type:SIAlertViewButtonTypeDestructive
                          handler:^(SIAlertView *alert) {
                              NSLog(@"Button1 Clicked");
                              [self join];
                          }];
    [alertView addButtonWithTitle:@"Cancel"
                             type:SIAlertViewButtonTypeCancel
                          handler:^(SIAlertView *alert) {
                              NSLog(@"Button2 Clicked");
                          }];
    
    alertView.willShowHandler = ^(SIAlertView *alertView) {
        NSLog(@"%@, willShowHandler", alertView);
    };
    alertView.didShowHandler = ^(SIAlertView *alertView) {
        NSLog(@"%@, didShowHandler", alertView);
    };
    alertView.willDismissHandler = ^(SIAlertView *alertView) {
        NSLog(@"%@, willDismissHandler", alertView);
    };
    alertView.didDismissHandler = ^(SIAlertView *alertView) {
        NSLog(@"%@, didDismissHandler", alertView);
    };
    
    alertView.transitionStyle = SIAlertViewTransitionStyleBounce;
    
    [alertView show];
}

-(void)showalertViewWithNoButton:(NSString *)title Description:(NSString *)description{
    SIAlertView *alertView = [[SIAlertView alloc] initWithTitle:title andMessage:description];
    alertView.transitionStyle = SIAlertViewTransitionStyleBounce;
    [alertView show];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [alertView dismissAnimated:YES];
    });
}

-(void)join{
    [SVProgressHUD setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:0.65f]];
    [SVProgressHUD show];
    [NetworkEngine createUserCourse:[@(pro.coursesIdentifier) stringValue] onSuccess:^(NSDictionary *data) {
        [SVProgressHUD dismiss];
        
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Student" bundle:nil];
        StudentClassListViewController *viewController = (StudentClassListViewController *)[sb instantiateViewControllerWithIdentifier:@"studentClassListViewController"];
        [self.navigationController  pushViewController:viewController animated:YES];
        [self showalertViewWithNoButton:@"" Description:@"Joined"];
        
    } onError:^(NSError *error, NSDictionary *data) {
         [SVProgressHUD dismiss];
    }];
}


@end
