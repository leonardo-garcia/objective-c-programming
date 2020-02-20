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

@class BNRAsset;

@interface BNREmployee : BMIPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployement;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END
