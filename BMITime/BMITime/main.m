//
//  main.m
//  BMITime
//
//  Created by Leonardo Garcia  on 12/02/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Creating an instance of BNREmployee
        BNREmployee * mikey = [[BNREmployee alloc] init];

        // Giving the instance variables values using setters
        // [mikey setWeightInKilos:96];
        // [mikey setHeightInMeters:1.8];

        // Using dot notation
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        NSDateFormatter formatter = [NSDateFormatter]
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];

        // Logging the instance variables using getters
        // float height = [mikey heightInMeters];
        // int weight = [mikey weightInKilos];

        // Using dot notation
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"Mikey is %.2f meters tall and weighs %d kilograms", height, weight);

        // Logging some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"Mikey has a BMI of %f", bmi);

    }
    return 0;
}
