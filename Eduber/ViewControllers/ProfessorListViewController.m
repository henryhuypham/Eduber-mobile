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
    self.professorList = [[NSMutableArray alloc] init];
    
    Professor *pro1 = [[Professor alloc] init];
    pro1.name = @"Alberto Abadie";
    pro1.imageLink = @"http://apps.hks.harvard.edu/faculty/images/bio/76.jpg";
    pro1.school = @"Harvard Kennedy School";
    pro1.phone = @"Phone: 617-496-4547";
    pro1.email = @"Email: alberto_abadie@harvard.edu";
    pro1.address = @"Office Address: Rubenstein-316";
    
    Professor *pro2 = [[Professor alloc] init];
    pro2.name = @"Alberto Abadie";
    pro2.imageLink = @"http://universe.byu.edu/wp-content/uploads/2014/03/RobertDarnton_06.jpg";
    pro2.school = @"Harvard Kennedy School";
    pro2.phone = @"Phone: 617-496-4547";
    pro2.email = @"Email: alberto_abadie@harvard.edu";
    pro2.address = @"Office Address: Rubenstein-316";
    
    Professor *pro3 = [[Professor alloc] init];
    pro3.name = @"Pham Vu Thanh Thong";
    pro3.imageLink = @"http://cache.boston.com/bonzai-fba/Third_Party_Photo/2009/06/29/ryanmccann10__1246309912_8938.jpg";
    pro3.school = @"Harvard Kennedy School";
    pro3.phone = @"Phone: 617-496-4547";
    pro3.email = @"Email: alberto_abadie@harvard.edu";
    pro3.address = @"Office Address: Rubenstein-316";
    
    Professor *pro4 = [[Professor alloc] init];
    pro4.name = @"Alberto Abadie";
    pro4.imageLink = @"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTLwJ8wPBVm0-j4YG7Q8F29pVdFHZXCYmm9Xo5RDSHG2EZCXMGT";
    pro4.school = @"Harvard Kennedy School";
    pro4.phone = @"Phone: 617-496-4547";
    pro4.email = @"Email: alberto_abadie@harvard.edu";
    pro4.address = @"Office Address: Rubenstein-316";
    
    Professor *pro5 = [[Professor alloc] init];
    pro5.name = @"Alberto Abadie";
    pro5.imageLink = @"http://www.hks.harvard.edu/var/ezp_site/storage/images/news-events/news/testimonies/testimony-chandra-jun09/455777-1-eng-US/amitabh-chandra-before-the-us-civil-rights-commission_ksgarticlefeature.jpg";
    pro5.school = @"Harvard Kennedy School";
    pro5.phone = @"Phone: 617-496-4547";
    pro5.email = @"Email: alberto_abadie@harvard.edu";
    pro5.address = @"Office Address: Rubenstein-316";
    
    Professor *pro6 = [[Professor alloc] init];
    pro6.name = @"Alberto Abadie";
    pro6.imageLink = @"http://www.unl.edu/classics/images/faculty/john.jpg";
    pro6.school = @"Harvard Kennedy School";
    pro6.phone = @"Phone: 617-496-4547";
    pro6.email = @"Email: alberto_abadie@harvard.edu";
    pro6.address = @"Office Address: Rubenstein-316";
    
    Professor *pro7 = [[Professor alloc] init];
    pro7.name = @"Alberto Abadie";
    pro7.imageLink = @"http://citizensvoice.com/polopoly_fs/1.1475460!/fileImage/httpImage/image.jpg_gen/derivatives/landscape_490/image.jpg";
    pro7.school = @"Harvard Kennedy School";
    pro7.phone = @"Phone: 617-496-4547";
    pro7.email = @"Email: alberto_abadie@harvard.edu";
    pro7.address = @"Office Address: Rubenstein-316";
    
    [self.professorList addObject:pro1];
    [self.professorList addObject:pro2];
    [self.professorList addObject:pro3];
    [self.professorList addObject:pro4];
    [self.professorList addObject:pro5];
    [self.professorList addObject:pro6];
    [self.professorList addObject:pro7];
    
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
    
    Professor *info = self.professorList[indexPath.row];
    [cell setInfo:info];
    
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

#pragma mark - add new action
-(IBAction)addNewActon:(id)sender{
    NSLog(@"Add New Action");
}

@end
