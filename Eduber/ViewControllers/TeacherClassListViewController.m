//
//  TeacherClassListViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "TeacherClassListViewController.h"
#import "SWRevealViewController.h"
#define kCellID @"TeacherClassCell"

@implementation TeacherClassListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    [self setupView];
    SWRevealViewController* revealController = self.revealViewController;
    if(revealController){
        UIButton *toggleButton=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 35, 22)];
        [toggleButton setImage:[UIImage imageNamed:@"btn_toggle"] forState:UIControlStateNormal];
        [toggleButton addTarget:revealController action: @selector( revealToggle: ) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *   revealButtonItem=[[UIBarButtonItem alloc] initWithCustomView:toggleButton];
        self.navigationItem.leftBarButtonItem = revealButtonItem;
        //[self.view addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    }
    //setup data
    [self setupData];
}

-(void)setupData{
    self.classList = [[NSMutableArray alloc] init];
    
    for( int i=0;i<10;i++){
        ClassInfo *info = [[ClassInfo alloc] init];
        info.identify = 0;
        info.className = [NSString stringWithFormat:@"English %d",i];
        info.numberStudent = arc4random_uniform(20);
        info.className = [NSString stringWithFormat:@"English %d",i];
        
        //random date
        NSDate *today = [NSDate date];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendarUnit unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit;
        NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:today];
        NSRange days = [calendar rangeOfUnit:NSDayCalendarUnit
                                      inUnit:NSMonthCalendarUnit
                                     forDate:today];
        int r = arc4random() % days.length;
        [dateComponents setDay:r];
        NSDate *startDate = [calendar dateFromComponents:dateComponents];
        NSString *dateString = [NSDateFormatter localizedStringFromDate:startDate
                                                              dateStyle:NSDateFormatterShortStyle
                                                              timeStyle:NSDateFormatterFullStyle];

         info.schedule = [NSString stringWithFormat:@"%@",dateString];
        info.location = [NSString stringWithFormat:@"176 Nguyễn Huệ, Phường ĐaKao, Quận 1"];
        
        //add list
        [self.classList addObject:info];
    }
}


-(void)setupView{

    //title
    [self setTitle:@"Class"];
    
    //scrollView
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableView.contentInset = UIEdgeInsetsMake(0,0,0,0);
    //Status view
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20.0)];
    view.backgroundColor= [UIColor colorWithRed:234.0/255.0f green:76.0/255.0f blue:137.0/255.0f alpha:1.0];
    [self.view addSubview:view];
    
    //table view
    self.tableView.separatorColor = [UIColor clearColor];
    [self.view bringSubviewToFront:self.addNewButton];
    
}

#pragma mark - TableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return self.classList.count;
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
    TeacherClassCell*cell = [tableView dequeueReusableCellWithIdentifier:kCellID];

    if (!cell) {
         cell = [[TeacherClassCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    ClassInfo *info = self.classList[indexPath.row];
    [cell setInfo:info];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            return 115;
        default:
            break;
    }
    return 20;
}

#pragma mark - add new action
-(IBAction)addNewActon:(id)sender{
    NSLog(@"Add New Action");
}

@end
