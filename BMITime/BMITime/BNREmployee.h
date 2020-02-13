//
//  BNREmployee.h
//  BMITime
//
//  Created by Leonardo Garcia  on 12/02/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BMIPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BMIPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployement;

@end

NS_ASSUME_NONNULL_END
