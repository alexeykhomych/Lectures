//
//  AKIDraggableView.m
//  iOSProject
//
//  Created by Alexey Khomych on 29.07.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import "AKIDraggableView.h"

#import <QuartzCore/QuartzCore.h>

static NSUInteger AKIDraggableViewTouchCount = 1;
static NSTimeInterval AKIDuration            = 1.0;

@interface AKIDraggableView()
@property (nonatomic, retain)   UITouch *leadingTouch;

//- (void)processTouches:(NSSet *)touches;
- (void)moveToLocations:(CGPoint)location;

@end

@implementation AKIDraggableView

#pragma mark -
#pragma mark Initializations and Deallocations

- (void)awakeFromNib {
    [super awakeFromNib];
    
    CALayer *layer = self.layer;
    layer.borderColor = [[UIColor blackColor] CGColor];
    layer.borderWidth = 2.0;
}

#pragma mark -
#pragma mark Interface Handling

- (IBAction)onPan:(UIPanGestureRecognizer *)sender {
    [self moveToLocations:[sender translationInView:self]];
}

#pragma mark -
#pragma mark Touch Handling

//- (void)touchesBegan:(NSSet<UITouch *> *)touches
//           withEvent:(UIEvent *)event
//{
//    NSLog(@"began");
//    self.leadingTouch = [touches anyObject];
//    [self processTouches:touches];
//}
//
//- (void)touchesEnded:(NSSet<UITouch *> *)touches
//           withEvent:(UIEvent *)event
//{
//    NSLog(@"ended");
//    [self processTouches:touches];
//}
//
//- (void)touchesMoved:(NSSet<UITouch *> *)touches
//           withEvent:(UIEvent *)event
//{
//    NSLog(@"moved");
//    [self processTouches:touches];
//}
//
//- (void)touchesCancelled:(NSSet<UITouch *> *)touches
//               withEvent:(UIEvent *)event
//{
//    NSLog(@"cancelled");
//    [self processTouches:touches];
//    self.leadingTouch = nil;
//}

#pragma mark -
#pragma mark Private

//- (void)processTouches:(NSSet *)touches {
//    if([touches count] != 1) {
//        return;
//    }
//    
//    UITouch *touch = self.leadingTouch;
//    CGPoint location = [touch locationInView:self.superview];
//    
//    CGFloat random = (CGFloat)arc4random() / UINT32_MAX;
//    CGFloat scale = random;
//    
//    CGAffineTransform transform = CGAffineTransformIdentity;
//    transform = CGAffineTransformConcat(transform, CGAffineTransformMakeRotation(random * 2 * M_PI));
//    transform = CGAffineTransformConcat(transform, CGAffineTransformMakeScale(scale, scale));
//    
//    CGRect frame = self.frame;
//    frame.origin = location;
//    
//    [UIView animateWithDuration:AKIDuration
//                          delay:0
//                        options:UIViewAnimationOptionBeginFromCurrentState
//                     animations:^{
//                         self.frame = frame;
//                         self.transform = transform;
//                     }
//                     completion:nil];
//}

- (void)moveToLocations:(CGPoint)location {
    CGRect frame = self.frame;
    CGFloat dimension = location.x  / 50;
    frame.size = CGSizeMake(dimension * 160, dimension * 160);

    [UIView animateWithDuration:AKIDuration
                              animations:^{
                         self.frame = frame;
                              }];
}

- (void)layoutSubviews {
    self.layer.cornerRadius = CGRectGetWidth(self.frame) / 2;
}

@end
