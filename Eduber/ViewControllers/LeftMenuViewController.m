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

@interface LeftMenuViewController ()

@end

@implementation LeftMenuViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _presentedRow = -1;
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
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
   UIView *headerView = [[[NSBundle mainBundle] loadNibNamed:kHeaderView owner:self options:nil] lastObject];
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
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellIdentifier=@"leftMenuTableViewCell";
    LeftMenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[LeftMenuTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.titleLabel.textColor = [UIColor darkGrayColor];
    
    switch ([indexPath row]) {
        case 0:
            cell.titleLabel.text = @"Home";
            [cell.imgView setImage:[UIImage imageNamed:@"home_icon"]];
            break;
        case 1:
            cell.titleLabel.text = @"Profile";
            [cell.imgView setImage:[UIImage imageNamed:@"user_icon"]];
            break;
        case 2:
            cell.titleLabel.text = @"Class";
            [cell.imgView setImage:[UIImage imageNamed:@"news_icon"]];
            break;
        case 3:
            cell.titleLabel.text = @"Exam";
            [cell.imgView setImage:[UIImage imageNamed:@"exam_icon"]];
            break;
        case 4:
            cell.titleLabel.text = @"Sign Out";
            [cell.imgView setImage:[UIImage imageNamed:@"signout_icon"]];
            break;
        default:
            break;
    }
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
        case 4:
            sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            rootViewController =  (StudentClassListViewController *)[sb instantiateViewControllerWithIdentifier:@"loginViewController"];
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
