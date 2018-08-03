//
//  Patient.m
//  PatientDoctor
//
//  Created by Jamie on 2018-08-02.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient


//custom init with name and age

- (instancetype)initWithName:(NSString*)name Age:(int)age; //MedicalCard:(BOOL)hasCard
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
       // _hasCard = hasCard;
    }
    return self;
}

- (void)visitDoctor: (Doctor*)doctor{
    if ([doctor acceptPatient:self]){
        [doctor requestMed:self];
    }
}
- (BOOL)hasValidHealthCard{
    return YES;
}

- (NSArray *)getSymptoms{
    NSArray *symptoms = @[@"Sore Throat",@"Runny Nose",@"Swollen left foot"];
    return symptoms;
}
- (NSSet<Prescription *> *)getPrescriptions{
    return nil;
}

@end
