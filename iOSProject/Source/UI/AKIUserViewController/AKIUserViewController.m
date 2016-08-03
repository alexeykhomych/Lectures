//
//  AKIUserViewController.m
//  iOSProject
//
//  Created by Alexey Khomych on 27.07.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import "AKIUserViewController.h"

#import "AKIUserView.h"
#import "AKIMacro.h"

AKIViewControllerBaseViewProperty(AKIUserViewController, userView, AKIUserView)

@implementation AKIUserViewController

#pragma mark -
#pragma mark Accessors

- (void)setUser:(AKIUser *)user {
    if (_user != user) {
        _user = user;
    }
    
    self.userView.user = user;
}

- (AKIUserView *)userView {
    if ([self isViewLoaded] && [self.view isKindOfClass:[AKIUserView class]]) {
        return (AKIUserView *)self.view;
    }
    
    return nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    //    label.text = @"MAMAMA";
    //    label.backgroundColor = [UIColor redColor];
    //
    //    self.view.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.5];
    //    self.view.opaque = NO;
    //    self.view.frame = CGRectMake(0, 0, 200, 200);
    //
    //    [self.view addSubview:label];
//    [[(AKIUserView *)[self view] label] setText:@"TEST"];
    self.userView.user = self.user;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark -
#pragma mark View Lifecycle

- (IBAction)onRotateButton:(id)sender {
    [self.userView rotateLabel];
}

@end
