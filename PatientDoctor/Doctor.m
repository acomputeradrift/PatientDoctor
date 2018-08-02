//
//  Doctor.m
//  PatientDoctor
//
//  Created by Jamie on 2018-08-02.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor


//custom init with name and specialization
- (instancetype)initWithName:(NSString*)name Specialization:(NSString*)specialization Accepting: (BOOL)acceptsPatients;
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _acceptsPatients = acceptsPatients;
    }
    return self;
}

- (void) addToPatientList: (Patient*)patient {
    [self.patientArray addObject:patient];
}
- (void)requestMed: (Doctor*)doctor{
    
    //only if on list can request med happen
}
@end
