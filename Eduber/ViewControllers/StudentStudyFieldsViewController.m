//
//  StudentStudyFieldsViewController.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "StudentStudyFieldsViewController.h"
#import "StudyFieldCollectionViewCell.h"
#import "CustomNavigationBar.h"

#define kCollectionViewCell @"StudyFieldCollectionViewCell"

@implementation StudentStudyFieldsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.studyFields = [[NSMutableArray alloc] initWithObjects: @"English", @"Math", @"Physics", @"Chemistry", @"Economics", nil];
    [self setTitle:@"Subjects"];
}

#pragma collectionview delegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.studyFields.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    StudyFieldCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCell forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[StudyFieldCollectionViewCell alloc] init];
    }
    
    cell.studyFieldName.text = [self.studyFields objectAtIndex:indexPath.row];
    
    return cell;
}

@end
