//
//  ViewController.h
//  Tipper
//
//  Created by Niels MAC on 2013-10-20.
//  Copyright (c) 2013 Niels MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *billTotalField;
    IBOutlet UITextField *tipTenPercentField;
    IBOutlet UITextField *tipFifteenPercentField;
    IBOutlet UITextField *tipTwentyPercentField;
    IBOutlet UITextField *tipCustomPercentField;
    IBOutlet UITextField *totalTenField;
    IBOutlet UITextField *totalFifteenField;
    IBOutlet UITextField *totalTwentyField;
    IBOutlet UITextField *totalCustomField;
    IBOutlet UILabel *customPercentLabel;
    IBOutlet UISlider *customPercentSlider;
    
    NSString *billTotal; // "Bill Total" field
    
}

- (IBAction)calculateTip:(id)sender; // calculate the tip

@end
