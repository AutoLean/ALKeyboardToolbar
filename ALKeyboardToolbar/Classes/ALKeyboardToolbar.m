    //
    //  ALKeyboardToolbar.m
    //  ALKeyboardToolbar
    //
    //  Created by Jeffrey Jackson on 1/22/14.
    //  Copyright (c) 2014 AutoLean, Inc. All rights reserved.
    //

#import "ALKeyboardToolbar.h"

@implementation ALKeyboardToolbar
@synthesize nextButton;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(0, 250, frame.size.width, frame.size.height)];
    if (self) {
        [self setBackgroundColor:[[UIColor colorWithRed:0 green:0.23 blue:0.32 alpha:1] colorWithAlphaComponent:.9]];
        [self addBottomBorderWithHeight:1.0f andColor:[UIColor colorWithRed:0.75f green:0.76f blue:0.78f alpha:1.00f]];
        
        self.nextButton = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width - 95, 1, 92, frame.size.height)];
        [self.nextButton setTitle:@"NEXT" forState:UIControlStateNormal];
        [self.nextButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.nextButton setTitleColor:[[UIColor whiteColor] colorWithAlphaComponent:.3f] forState:UIControlStateHighlighted];
        [self.nextButton addTarget:self action:@selector(ALKeyboardToolbar_Next:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:self.nextButton];
    }
    return self;
}

- (void)ALKeyboardToolbar_Next:(ALKeyboardToolbar *)_ALKeyboardToolbar {
    [self.delegate ALKeyboardToolbar_Next:self];
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
