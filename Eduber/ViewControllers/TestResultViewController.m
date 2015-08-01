//
//  TestResultViewController.m
//  Eduber
//
//  Created by LocNguyen on 8/1/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "TestResultViewController.h"
#import "TestResultTableViewCell.h"

@interface TestResultViewController ()

@end

@implementation TestResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UIView alloc] initWithFrame:CGRectZero];
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellIdentifier = @"testResultTableViewCell";
    TestResultTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[TestResultTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    switch ([indexPath row]) {
        case 0:
            cell.titleLabel.text = @"Chemistry 11A";
            break;
        case 1:
            cell.titleLabel.text = @"English 11B";
            break;
        case 2:
            cell.titleLabel.text = @"History 11E";
            break;
        case 3:
            cell.titleLabel.text = @"Math 11C";
            break;
        case 4:
            cell.titleLabel.text = @"Biology 11E";
            break;
        default:
            break;
    }
    if([indexPath row] % 2 == 0){
        cell.statusLabel.text = @"Result: Passed";
    }else{
        cell.statusLabel.text = @"Result: Failed";
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
