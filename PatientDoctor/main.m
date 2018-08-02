//
//  main.m
//  PatientDoctor
//
//  Created by Jamie on 2018-08-02.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // create instance of doctor with name and specialization @"Doc Smith" Specialization:@"Proctologist"
        Doctor *quack = [[Doctor alloc] initWithName:@"Doc Smith" Specialization:@"Proctologist" Accepting:YES];
        
        //create instance of patient with name and specialization @"Mildred" Age:72
        Patient *hypo = [[Patient alloc] initWithName:@"Mildred" Age:72 MedicalCard:YES];
        
        NSMutableArray *patientArray = [[NSMutableArray alloc] init];
        
    
        
        
//        NSLog(@"Doctor: %@ Specialization: %@", [quack name], [quack specialization]);
//        NSLog(@"Patient: %@ Age: %i", [hypo name], [hypo age]);
    }
    return 0;
}
