//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by Nicolas Machado on 6/26/18.
//  Copyright © 2018 Nicolas Machado. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editChanged:(id)sender {
//    NSArray *percentages = @[@(0.15), @(0.18), @(0.20)];
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setInteger:self.defaultTipControl.selectedSegmentIndex forKey:@"defaultTip"];
//    [defaults synchronize];
    
}

- (IBAction)tapView:(id)sender {
    [self.view endEditing:YES];
    NSLog(@"tap");
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTipControl.selectedSegmentIndex forKey:@"defaultTip"];
    [defaults synchronize];
    NSLog(@"$%.2ld", (long)self.defaultTipControl.selectedSegmentIndex);
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
