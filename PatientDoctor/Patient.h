//
//  Patient.h
//  PatientDoctor
//
//  Created by Jamie on 2018-08-02.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) BOOL hasCard;

- (instancetype)initWithName:(NSString*)name Age:(int)age MedicalCard:(BOOL)hasCard;


- (void)visitDoctor: (Doctor*)doctor;
- (NSString*) requestDocInfo:(NSString*)docName :(NSString*)specialization; //request doc info info

- (void)addToRecords;//add med to database, what is this?

@end
