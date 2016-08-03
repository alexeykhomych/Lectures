//
//  AKIDraggableView.h
//  iOSProject
//
//  Created by Alexey Khomych on 29.07.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKIDraggableView : UIView
@property (nonatomic, strong) IBOutlet  UIGestureRecognizer *recognizer;

- (IBAction)onPan:(UIPanGestureRecognizer *)sender;

@end
