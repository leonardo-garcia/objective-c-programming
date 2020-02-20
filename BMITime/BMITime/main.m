//
//  main.m
//  BMITime
//
//  Created by Leonardo Garcia  on 12/02/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // Creating an instance of BNREmployee
//        BNREmployee * mikey = [[BNREmployee alloc] init];
//
//        // Giving the instance variables values using setters
//        // [mikey setWeightInKilos:96];
//        // [mikey setHeightInMeters:1.8];
//
//        // Using dot notation
//        mikey.weightInKilos = 96;
//        mikey.heightInMeters = 1.8;
//        mikey.employeeID = 12;
//        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//        [formatter setDateFormat:@"M, d, y 'at' hh:mm"];
//        NSDate *hireDate = [formatter dateFromString:@"August, 2, 2010 at 00:00"];
//        mikey.hireDate = hireDate;
//
//        // Logging the instance variables using getters
//        // float height = [mikey heightInMeters];
//        // int weight = [mikey weightInKilos];
//
//        // Using dot notation
//        float height = mikey.heightInMeters;
//        int weight = mikey.weightInKilos;
//        NSLog(@"Mikey is %.2f meters tall and weighs %d kilograms", height, weight);
//        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
//
//        // Logging some values using custom methods
//        float bmi = [mikey bodyMassIndex];
//        NSLog(@"Mikey has a BMI of %f", bmi);
//
//        double years = [mikey yearsOfEmployement];
//        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
        
        // ------------------------------------------------------
        // Create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of BNREmployee
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            // Giving the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i / 10.0;
            mikey.employeeID = i;
            
            // Putting the employee in the employees array
            [employees addObject:mikey];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            // create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            // giving it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // gettting a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // finding that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // assigning the asset to the employee
            [randomEmployee addAsset:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving ownership of arrays");
        employees = nil;
    }
    return 0;
}
