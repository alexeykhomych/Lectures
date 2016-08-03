//
//  AKIUserView.m
//  iOSProject
//
//  Created by Alexey Khomych on 28.07.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import "AKIUserView.h"

#import <math.h>

#import "AKIUser.h"

@implementation AKIUserView

#pragma mark -
#pragma mark Accessors

- (void)setUser:(AKIUser *)user {
    if (_user != user) {
        _user = user;
    
        [self fillWithUser:user];
    }
}

#pragma mark -
#pragma mark Public

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    
//    self.label.text = @"TEST";
//}

- (void)fillWithUser:(AKIUser *)user {
    self.label.text = user.fullName;
}

- (void)rotateLabel {
    self.label.transform = CGAffineTransformMakeRotation((float)arc4random() / UINT32_MAX * 2 * M_PI);
}

@end
