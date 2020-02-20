//
//  BNRAsset.m
//  BMITime
//
//  Created by Leonardo Garcia  on 19/02/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc{
    NSLog(@"deallocating %@", self);
}

@end
