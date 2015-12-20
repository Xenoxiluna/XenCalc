//
//  CalculatorViewController.h
//  XenCalc
//
//  Created by Quentin Berry on 12/15/15.
//  Copyright © 2015 Quentin Berry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <cocoa/cocoa.h>

@class Calculator;

@interface CalculatorViewController : NSObject

@property (weak) IBOutlet NSTextField *outputField;
@property (strong, nonatomic) Calculator *calc;

- (void)checkCalculatorState;

- (IBAction)clearAll:(id)sender;
- (IBAction)plusMinus:(id)sender;
- (IBAction)percent:(id)sender;
- (IBAction)decimal:(id)sender;

- (IBAction)divide:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)equals:(id)sender;

- (IBAction)numberSeven:(id)sender;
- (IBAction)numberEight:(id)sender;
- (IBAction)numberNine:(id)sender;
- (IBAction)numberFour:(id)sender;
- (IBAction)numberFive:(id)sender;
- (IBAction)numberSix:(id)sender;
- (IBAction)numberOne:(id)sender;
- (IBAction)numberTwo:(id)sender;
- (IBAction)numberThree:(id)sender;
- (IBAction)zero:(id)sender;

@end
