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
#import "TeacherRegisterClassViewController.h"
#import "StudentStudyFieldsViewController.h"

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
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellIdentifier=@"leftMenuTableViewCell";
    LeftMenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[LeftMenuTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    switch ([indexPath row]) {
        case 0:
            cell.titleLabel.text = @"Main Page";
            break;
        case 1:
            cell.titleLabel.text = @"Profile";
            break;
        case 2:
            cell.titleLabel.text = @"News";
            break;
        case 3:
            cell.titleLabel.text = @"Test Result";
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
                rootViewController =  (TeacherRegisterClassViewController *)[sb instantiateViewControllerWithIdentifier:@"teacherRegisterClassViewController"];
            }
            break;
        case 1:
            rootViewController = nil;
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
