//
//  Doctor.h
//  PatientDoctor
//
//  Created by Jamie on 2018-08-02.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *specialization;
@property (nonatomic) BOOL acceptsPatients;
@property NSMutableArray *patientArray;

- (instancetype)initWithName:(NSString*)name Specialization:(NSString*)specialization Accepting: (BOOL)acceptsPatients;

//accept patient that visits (has heathcare card)
- (void) addToPatientList: (Patient*)patient;
- (void)requestMed: (Doctor*)doctor;//request med (if patient is accepted, maybe protocol?
// track accepted patients
//request info
//request symptoms
//prescribe meds

@end
