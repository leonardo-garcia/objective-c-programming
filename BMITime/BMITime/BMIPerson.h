//
//  BMIPerson.h
//  BMITime
//
//  Created by Leonardo Garcia  on 12/02/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BMIPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// Instance variables approach
//{
//    float _heightInMeters;
//    int _weightInKilos;
//}
//
//// Methods to read and set instance variables
//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;
//

// Method to calculate the Body Mass Index
- (float)bodyMassIndex;

- (void)addYourselfToArray:(NSMutableArray *)theArray;
@end

NS_ASSUME_NONNULL_END
