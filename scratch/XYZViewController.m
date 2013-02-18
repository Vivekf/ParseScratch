//
//  XYZViewController.m
//  scratch
//
//  Created by Vivek  on 2/11/13.
//  Copyright (c) 2013 xyz. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Making a first change");
    /*
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    [testObject setObject:@"Vivek" forKey:@"name"];
    [testObject save];
	*/
     // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonPressed:(id)sender {
    NSLog(@"%@",self.name.text);
    NSLog(@"%@",self.age.text);
    NSLog(@"%@",[self.gender titleForSegmentAtIndex:self.gender.selectedSegmentIndex]);
    
    PFObject *userRecord = [PFObject objectWithClassName:@"UserRecord"];
    [userRecord setObject:@[self.age.text,self.name.text] forKey:@"age"];
    [userRecord setObject:self.name.text forKey:@"name"];
    [userRecord setObject:[self.gender titleForSegmentAtIndex:self.gender.selectedSegmentIndex] forKey:@"gender"];
    
    /*
    [userRecord saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // The gameScore saved successfully.
        } else {
            //NSLog(@"%@",[error localizedDescription]);
        }
    }];
    */
    //test line
    //a second test line
    
    [userRecord saveEventually];
    
    
    
}
@end
