//
//  Utility.m
//  iOSAvanzado-Lab1
//
//  Created by SAMUEL on 27/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+ (BOOL)isValidEmailAddress:(NSString *)emailAddress {
    
    //Create a regex string
    NSString *stricterFilterString = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}" ;
    
    //Create predicate with format matching your regex string
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", stricterFilterString];
    
    //return true if email address is valid
    return [emailTest evaluateWithObject:emailAddress];
}

+ (BOOL) validateEmail:(NSString*) emailAddress {
    
    NSString *regExPattern = @"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}$";
    NSRegularExpression *regEx = [[NSRegularExpression alloc]
                                  initWithPattern:regExPattern
                                  options:NSRegularExpressionCaseInsensitive
                                  error:nil];
    NSUInteger regExMatches = [regEx numberOfMatchesInString:emailAddress
                                                     options:0
                                                       range:NSMakeRange(0, [emailAddress length])];
    return (regExMatches == 0) ? NO : YES ;
    
}

@end
