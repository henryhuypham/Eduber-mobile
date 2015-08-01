//
//  StudentStudyFieldsViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "StudentStudyFieldsViewController.h"
#import "StudyFieldCellCollectionViewCell.h"

@implementation StudentStudyFieldsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.studyFields = [[NSMutableArray alloc] initWithObjects: @"English", @"Math", @"Physics", @"Chemistry", @"Economics", nil];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.studyFields.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    StudyFieldCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"StudentStudyFieldCell" forIndexPath:indexPath];
    
    cell.studyFieldName.text = [self.studyFields objectAtIndex:indexPath.row];
    
    return cell;
}

@end
