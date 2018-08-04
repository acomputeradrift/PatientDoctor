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
        _prescriptions = [[NSMutableArray alloc] init];
       // _hasCard = hasCard;
    }
    return self;
}

- (void)visitDoctor: (Doctor*)doctor{
    if ([doctor acceptPatient:self]){
        NSLog (@"You require the best solution: lots of %@", [doctor requestMed:self].medication);
        
    }
}
- (BOOL)hasValidHealthCard{
    NSLog (@"Patient has health card");
    return YES;
}

- (NSArray *)getSymptoms{
    NSLog (@"Get symptoms");
    NSArray *symptoms = @[@"Sore Throat",@"Runny Nose",@"Swollen left foot"];
    
    return symptoms;
}
- (NSSet<Prescription *> *)getPrescriptions{
    
    // get prescription object and return NString
    
    return nil;
}

@end
