//
//  BMIPerson.m
//  BMITime
//
//  Created by Leonardo Garcia  on 12/02/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

#import "BMIPerson.h"

@implementation BMIPerson

// Accesors implementations not needed with property attributes 
//- (float) heightInMeters {
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h{
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos {
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w {
//    _weightInKilos = w;
//}
//
- (float)bodyMassIndex {
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

- (void)addYourselfToArray:(NSMutableArray *)theArray {
    [theArray addObject:self];
}

@end
