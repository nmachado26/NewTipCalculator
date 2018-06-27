//
//  ViewController.m
//  TipCalculator
//
//  Created by Nicolas Machado on 6/26/18.
//  Copyright © 2018 Nicolas Machado. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UILabel *tipWord;
@property double tipPercentage;
@property (nonatomic,assign) NSUInteger index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIView animateWithDuration:3 animations:^{
        self.totalLabel.alpha = 0;
    }];
    [UIView animateWithDuration:3 animations:^{
        self.tipControl.alpha = 0;
    }];
    [UIView animateWithDuration:3 animations:^{
        self.tipLabel.alpha = 0;
    }];
    self.title = @"Tip Calculator";
    [self.billField becomeFirstResponder];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.index = [defaults doubleForKey:@"defaultTip"];
    NSArray *percentages = @[@(0.15), @(0.18), @(0.20)];
    self.tipPercentage = [percentages[self.index] doubleValue];
}

- (void)viewDidAppear:(BOOL)animated{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.index = [defaults doubleForKey:@"defaultTip"];
    
    NSArray *percentages = @[@(0.15), @(0.18), @(0.20)];
    self.tipPercentage = [percentages[self.index] doubleValue];
    double bill = [self.billField.text doubleValue];
    double tip = self.tipPercentage * bill;
    double total = bill + tip;
//    NSLog(@"$%.2f", tip);
    NSLog(@"$%.2f", self.tipPercentage);
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.tipPercentage = [defaults doubleForKey:@"defaultTip"];
}

- (IBAction)onEdit:(id)sender {
    
    NSArray *percentages = @[@(0.15), @(0.18), @(0.20)];
    self.tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    double bill = [self.billField.text doubleValue];
    double tip = self.tipPercentage * bill;
    double total = bill + tip;
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

- (IBAction)onEditingBegin:(id)sender {
    
    self.billField.frame = CGRectMake(self.billField.frame.origin.x, self.billField.frame.origin.y - 30, self.billField.frame.size.width, self.billField.frame.origin.x);

    [UIView animateWithDuration:1 animations:^{
        self.tipLabel.alpha = 0;
        self.tipControl.alpha = 0;
        self.totalLabel.alpha = 0;
        self.tipWord.alpha = 0;
    }];

}

- (IBAction)onEditingEnd:(id)sender {
    CGRect billFrame = self.billField.frame;
    billFrame.origin.y += 30;
    [UIView animateWithDuration:1 animations:^{
        self.billField.frame = billFrame;
        self.tipLabel.alpha = 1;
        self.totalLabel.alpha = 1;
        self.tipControl.alpha = 1;
        self.tipWord.alpha = 1;
    }];
}

@end
