//
//  CalculatorViewController.m
//  XenCalc
//
//  Created by Quentin Berry on 12/15/15.
//  Copyright © 2015 Quentin Berry. All rights reserved.
//

#import "CalculatorViewController.h"
#import "Calculator.h"

@implementation CalculatorViewController

-(void)checkCalculatorState{
    if (_calc == nil) {
        _calc = [[Calculator alloc] init];
    }
}

- (IBAction)clearAll:(id)sender {
    _calc.accumulator = 0;
    _outputField.stringValue = @"0";
    _calc = nil;
}

- (IBAction)plusMinus:(id)sender {
    _outputField.doubleValue = _outputField.doubleValue * -1;
}

- (IBAction)percent:(id)sender {
    _outputField.doubleValue = _outputField.doubleValue / 100;
}

- (IBAction)decimal:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)divide:(id)sender {
     [self checkCalculatorState];
     
     _calc.sign = '/';
    [self performOperation];
}

- (IBAction)multiply:(id)sender {
    [self checkCalculatorState];
    
    _calc.sign = '*';
    [self performOperation];
}

- (IBAction)subtract:(id)sender {
    [self checkCalculatorState];
    
    _calc.sign = '-';
    [self performOperation];
}

- (IBAction)add:(id)sender {
    [self checkCalculatorState];
    
    _calc.sign = '+';
    [self performOperation];
}

- (IBAction)equals:(id)sender {
    [self checkCalculatorState];
    NSNumber * result = [NSNumber numberWithDouble:[_calc calculateNewValue:[_outputField doubleValue]]];
    [_outputField setStringValue:[result stringValue]];
    _calc.calc_state = YES;
}

- (IBAction)numberSeven:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)numberEight:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)numberNine:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)numberFour:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)numberFive:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)numberSix:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)numberOne:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)numberTwo:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)numberThree:(id)sender {
    [self pushNumber:sender];
}

- (IBAction)zero:(id)sender {
    [self pushNumber:sender];
}

-(void)pushNumber:(id)sender {
    if (_calc.signUsed) {
        [_outputField setStringValue:@""];
        _calc.signUsed = NO;
    }
    if ([[_outputField stringValue] compare:@"0"] && !_calc.calc_state)
        [_outputField setStringValue:[[_outputField stringValue] stringByAppendingString:[sender title]]];
    else
        [_outputField setStringValue:[sender title]];
}

-(void)performOperation{
    NSNumber * result = [NSNumber numberWithDouble:[_calc calculateNewValue:[_outputField doubleValue]]];
    [_outputField setStringValue:[result stringValue]];
    _calc.signUsed = YES;
}
@end
