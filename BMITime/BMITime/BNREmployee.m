//
//  BNREmployee.m
//  BMITime
//
//  Created by Leonardo Garcia  on 12/02/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployement {
    // Is hire data not nil?
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval seconds = [now timeIntervalSinceDate:self.hireDate];
        return seconds / 31557600.0; // seconds per year
    } else {
        return 0;
    }
}

@end
