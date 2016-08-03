//
//  AKIUserView.h
//  iOSProject
//
//  Created by Alexey Khomych on 28.07.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKIUser;
@class AKIDraggableView;

@interface AKIUserView : UIView
@property (nonatomic, strong)   IBOutlet UILabel             *label;
@property (nonatomic, strong)   IBOutlet UIButton            *button;
@property (nonatomic, strong)   IBOutlet AKIDraggableView    *draggableView;
@property (nonatomic, strong)   AKIUser                      *user;

- (void)fillWithUser:(AKIUser *)user;
- (void)rotateLabel;

@end
