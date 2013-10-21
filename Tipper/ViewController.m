//
//  ViewController.m
//  Tipper
//
//  Created by Niels MAC on 2013-10-20.
//  Copyright (c) 2013 Niels MAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)calculateTip:(id)sender
{
    customPercentLabel.text = [NSString stringWithFormat:@"%d", (int)[customPercentSlider value]];
    NSLog(@"slider value %@", customPercentLabel.text);
    
    billTotal = [NSString stringWithFormat:@"%@", [billTotalField text]];
    NSLog(@"%@",billTotal);
    
    float thisFloat = [billTotal floatValue];
    
    float custFloat = (([[customPercentLabel text] floatValue] / 100)+1);
    
    
    totalTenField.text = [NSString stringWithFormat:@"%.2f", (thisFloat*1.10)];
    
    totalFifteenField.text = [NSString stringWithFormat:@"%.2f", (thisFloat*1.15)];
    
    totalTwentyField.text = [NSString stringWithFormat:@"%.2f", (thisFloat*1.20)];
    
    totalCustomField.text = [NSString stringWithFormat:@"%.2f", (thisFloat*custFloat)];
    
    tipTenPercentField.text = [NSString stringWithFormat:@"%.2f",(thisFloat*0.10)];
    
    tipFifteenPercentField.text = [NSString stringWithFormat:@"%.2f",(thisFloat*0.15)];
    
    tipTwentyPercentField.text = [NSString stringWithFormat:@"%.2f",(thisFloat*0.20)];
    
    tipCustomPercentField.text = [NSString stringWithFormat:@"%.2f",(thisFloat*(custFloat-1))];
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [billTotalField becomeFirstResponder];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
