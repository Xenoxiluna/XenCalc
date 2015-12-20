//
//  Calculator.h
//  XenCalc
//
//  Created by Quentin Berry on 12/15/15.
//  Copyright © 2015 Quentin Berry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic) double accumulator;
@property (nonatomic) BOOL calc_state;
@property (nonatomic) char sign;
@property (nonatomic) BOOL signUsed;

-(double)calculateNewValue:(double)number;

@end
