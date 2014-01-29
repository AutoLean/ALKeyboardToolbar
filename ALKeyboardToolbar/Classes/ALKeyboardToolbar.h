//
//  ALKeyboardToolbar.h
//  ALKeyboardToolbar
//
//  Created by Jeffrey Jackson on 1/22/14.
//  Copyright (c) 2014 AutoLean, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Borders.h"

@class ALKeyboardToolbar;

@protocol ALKeyboardToolbarDelegate

- (void)ALKeyboardToolbar_Next:(ALKeyboardToolbar *)_ALKeyboardToolbar;
- (void)ALKeyboardToolbar_Back:(ALKeyboardToolbar *)_ALKeyboardToolbar;
- (void)ALKeyboardToolbar_Done:(ALKeyboardToolbar *)_ALKeyboardToolbar;

@end

@interface ALKeyboardToolbar : UIView

@property (strong, nonatomic) UIButton *nextButton;
@property (strong, nonatomic) UIButton *backButton;
@property (strong, nonatomic) UIButton *doneButton;

@property (weak, nonatomic) id<ALKeyboardToolbarDelegate> delegate;

@end
