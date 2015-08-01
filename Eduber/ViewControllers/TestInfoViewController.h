//
//  TestInfoViewController.h
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfessorListViewController.h"

@interface TestInfoViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView   *instructionView;
@property (strong, nonatomic) IBOutlet UIButton *takeTestButton;

- (IBAction)takeTheTest:(id)sender;

@end
