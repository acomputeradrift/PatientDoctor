//
//  Doctor.h
//  PatientDoctor
//
//  Created by Jamie on 2018-08-02.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"
@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;
//@property (nonatomic) BOOL acceptsPatients;
//@property NSMutableArray *patientArray;

- (instancetype)initWithName:(NSString*)name Specialization:(NSString*)specialization; //Accepting: (BOOL)acceptsPatients;

- (BOOL)acceptPatient :(Patient*)patient;

- (Prescription*)requestMed: (Patient*)patient;//request med (if patient is accepted, maybe protocol?


@end
