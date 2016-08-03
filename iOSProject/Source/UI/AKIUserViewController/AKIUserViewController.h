//
//  AKIUserViewController.h
//  iOSProject
//
//  Created by Alexey Khomych on 27.07.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKIUser;

@interface AKIUserViewController : UIViewController
@property (nonatomic, strong)   AKIUser    *user;

- (IBAction)onRotateButton:(id)sender;

@end
