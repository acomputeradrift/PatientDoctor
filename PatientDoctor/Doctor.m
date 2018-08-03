//
//  Doctor.m
//  PatientDoctor
//
//  Created by Jamie on 2018-08-02.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@interface Doctor()
@property NSSet *acceptedPatients;
@end;

@implementation Doctor


//custom init with name and specialization
- (instancetype)initWithName:(NSString*)name Specialization:(NSString*)specialization //Accepting: (BOOL)acceptsPatients;
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSSet alloc] init];
    }
    return self;
}


- (BOOL)acceptPatient:(Patient *)patient{
    if ([patient hasValidHealthCard]){
        self.acceptedPatients = [self.acceptedPatients setByAddingObject:patient];
        return YES;
    }
return NO;
}



- (Prescription*)requestMed: (Patient*)patient{
    
    
    NSArray *symptoms = [patient getSymptoms];
    Prescription *script = [[Prescription alloc] init];
    script.patientName = patient.name;
   // if (symptoms)
    script.medication = @("Drugs");
    return script;
}




@end
