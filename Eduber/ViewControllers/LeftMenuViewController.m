//
//  LeftMenuViewController.m
//  Eduber
//
//  Created by LocNguyen on 08/01/15.
//  Copyright (c) 2015 RobustTechHouse. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "LeftMenuTableViewCell.h"
#import "SWRevealViewController.h"
#import "StudentStudyFieldsViewController.h"

#define kHeaderView @"LeftMenuHeaderView"

@implementation LeftMenuViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _presentedRow = -1;
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    //default value
    data = @[ @[ @"Home", @"Profile", @"Class",@"Exam",@"Signout"], @[ @"home_icon", @"user_icon", @"news_icon",@"exam_icon",@"signout_icon"] ];
    if(_loginModeSelected == 1){
       data = @[ @[ @"Home", @"Profile", @"Class",@"Signout"], @[ @"home_icon", @"user_icon", @"news_icon",@"signout_icon"] ];
    }

}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

#pragma mark - UITableView Delegate
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
   LeftMenuHeaderView *headerView = [[[NSBundle mainBundle] loadNibNamed:kHeaderView owner:self options:nil] lastObject];
    
    UserInfo *user = [[UserInfo alloc] init];
    if(_loginModeSelected == 1){
      user.name = @"Einstein";
        user.email = @"einstein@gmail.com";
        user.imageLink = @"https://www.danluan.org/files/timgs/einstein1_7.jpg";
    }else{
        user.name = @"Ngọc Trinh";
        user.email = @"ngoctrinh@gmail.com";
        user.imageLink = @"http://bdeducationnews24.com/wp-content/uploads/2015/06/Medical-College.jpg";
    }
    
    [headerView setInfo:user];
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 170;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSArray *arr = data[0];
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellIdentifier=@"leftMenuTableViewCell";
    LeftMenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[LeftMenuTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.titleLabel.textColor = [UIColor darkGrayColor];
    
    //set data
    cell.titleLabel.text = data[0][indexPath.row];
    cell.imgView.image = [UIImage imageNamed:data[1][indexPath.row]];

    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SWRevealViewController *revealController = self.revealViewController;
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Student" bundle:nil];
    if(_loginModeSelected == 1){
        sb = [UIStoryboard storyboardWithName:@"Teacher" bundle:nil];
    }
    if ( [indexPath row] == _presentedRow )
    {
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        return;
    }
    UIViewController *rootViewController = nil;
    switch ([indexPath row]) {
        case 0:
            if(_loginModeSelected == 0){
                rootViewController =  (StudentStudyFieldsViewController *)[sb instantiateViewControllerWithIdentifier:@"studentStudyFieldsViewController"];
            }else{
//                rootViewController =  (TeacherRegisterClassViewController *)[sb instantiateViewControllerWithIdentifier:@"teacherRegisterClassViewController"];
            }
            break;
        case 1:
            rootViewController = nil;
            break;
        case 2:
            rootViewController =  (StudentClassListViewController *)[sb instantiateViewControllerWithIdentifier:@"studentClassListViewController"];
            break;
        case 3:
            if(_loginModeSelected == 0){
                sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                rootViewController =  (StudentClassListViewController *)[sb instantiateViewControllerWithIdentifier:@"loginViewController"];
            }else{
                if(revealController){
                    [revealController.navigationController popViewControllerAnimated:YES];
                };
            }
            break;
        case 4:
            //signout
            if(revealController){
                [revealController.navigationController popViewControllerAnimated:YES];
            };
            break;
        case 6:
            rootViewController = nil;
            break;
            
        default:
            break;
    }
    if(rootViewController){
        UINavigationController* frontViewController = (UINavigationController *)revealController.frontViewController;
        [frontViewController setViewControllers:@[rootViewController] animated:NO];
        [revealController pushFrontViewController:frontViewController animated:YES];
        _presentedRow = [indexPath row];
    }
    
}

-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UIView alloc] initWithFrame:CGRectZero];
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01f;
}
- (IBAction)signoutTouched:(id)sender {
    NSLog(@"signOut...");
    SWRevealViewController *revealController = self.revealViewController;
    if(revealController){
        [revealController.navigationController popViewControllerAnimated:YES];
    }
}
@end
