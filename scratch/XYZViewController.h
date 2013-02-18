//
//  XYZViewController.h
//  scratch
//
//  Created by Vivek  on 2/11/13.
//  Copyright (c) 2013 xyz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface XYZViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UISegmentedControl *gender;
- (IBAction)addButtonPressed:(id)sender;

@end
