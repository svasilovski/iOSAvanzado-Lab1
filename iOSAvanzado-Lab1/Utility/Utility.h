//
//  Utility.h
//  iOSAvanzado-Lab1
//
//  Created by SAMUEL on 27/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utility : NSObject
+ (BOOL)isValidEmailAddress: (NSString *)emailAddress;
+ (BOOL)validateEmail: (NSString *)emailAddress;
@end

NS_ASSUME_NONNULL_END
