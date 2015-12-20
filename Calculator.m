//
//  Calculator.m
//  XenCalc
//
//  Created by Quentin Berry on 12/15/15.
//  Copyright © 2015 Quentin Berry. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _accumulator = 0;
        _calc_state = YES;
        _signUsed = NO;
    }
    return self;
}

-(double)calculateNewValue: (double)currDisplayVal{
    double result;
    
    if (self.calc_state) {
        self.accumulator = currDisplayVal;
        self.calc_state = NO;
        
        return _accumulator;
    }else{
        switch (_sign) {
            case '+':
                result = [self add:currDisplayVal];
                break;
            case '-':
                result = [self subtract:currDisplayVal];
                break;
            case '*':
                result = [self multiply:currDisplayVal];
                break;
            case '/':
                result = [self divide:currDisplayVal];
                break;
            default:
                break;
        }
        
        return result;
    }
}

-(double)add:(double)number{
    _accumulator += number;
    return _accumulator;
}

-(double)subtract:(double)number{
    _accumulator -= number;
    return _accumulator;
}

-(double)multiply:(double)number{
    _accumulator *= number;
    return _accumulator;
}

-(double)divide:(double)number{
    if (number == 0) {
        return 1;
    }else{
        _accumulator /= number;
        return _accumulator;
    }
}

@end
