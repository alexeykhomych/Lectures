//
//  AKIUser.h
//  iOSProject
//
//  Created by Alexey Khomych on 28.07.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKIUser : NSObject
@property (nonatomic, copy)         NSString    *name;
@property (nonatomic, copy)         NSString    *surname;
@property (nonatomic, readonly)     NSString    *fullName;

@end
