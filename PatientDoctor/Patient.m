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

- (instancetype)initWithName:(NSString*)name Age:(int)age MedicalCard:(BOOL)hasCard{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasCard = hasCard;
    }
    return self;
}

- (void)visitDoctor: (Doctor*)doctor{
    if (doctor.acceptsPatients && self.hasCard == YES){
      //instance    method     receiver
        [doctor addToPatientList:self];
    }else{
       
    }
}



- (void)addToRecords{
    
}

-(NSString *)requestDocInfo:(NSString *)docName :(NSString *)specialization{
    NSString* docInfo = [docName stringByAppendingString:specialization];
    return docInfo;
}

@end
