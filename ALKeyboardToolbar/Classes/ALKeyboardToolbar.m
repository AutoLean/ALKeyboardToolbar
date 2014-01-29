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
@synthesize backButton;
@synthesize doneButton;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(0, 250, frame.size.width, frame.size.height)];
    if (self) {
        [self setBackgroundColor:[[UIColor colorWithRed:0 green:0.23 blue:0.32 alpha:1] colorWithAlphaComponent:.9]];
        [self addBottomBorderWithHeight:1.0f andColor:[UIColor colorWithRed:0.75f green:0.76f blue:0.78f alpha:1.00f]];
        
        self.backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 1, 50, frame.size.height)];
        [self.backButton setTitle:@"〈 " forState:UIControlStateNormal];
        [self.backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.backButton setTitleColor:[[UIColor whiteColor] colorWithAlphaComponent:.3f] forState:UIControlStateHighlighted];
        [self.backButton addTarget:self action:@selector(ALKeyboardToolbar_Back:) forControlEvents:UIControlEventTouchUpInside];
        
        self.nextButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 1, 50, frame.size.height)];
        [self.nextButton setTitle:@" 〉" forState:UIControlStateNormal];
        [self.nextButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.nextButton setTitleColor:[[UIColor whiteColor] colorWithAlphaComponent:.3f] forState:UIControlStateHighlighted];
        [self.nextButton addTarget:self action:@selector(ALKeyboardToolbar_Next:) forControlEvents:UIControlEventTouchUpInside];
        
        self.doneButton = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width - 95, 1, 92, frame.size.height)];
        [self.doneButton setTitle:@"DONE" forState:UIControlStateNormal];
        [self.doneButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.doneButton setTitleColor:[[UIColor whiteColor] colorWithAlphaComponent:.3f] forState:UIControlStateHighlighted];
        [self.doneButton addTarget:self action:@selector(ALKeyboardToolbar_Done:) forControlEvents:UIControlEventTouchUpInside];
        
        self.doneButton = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width - 95, 1, 92, frame.size.height)];
        [self.doneButton setTitle:@"DONE" forState:UIControlStateNormal];
        [self.doneButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.doneButton setTitleColor:[[UIColor whiteColor] colorWithAlphaComponent:.3f] forState:UIControlStateHighlighted];
        [self.doneButton addTarget:self action:@selector(ALKeyboardToolbar_Done:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:self.backButton];
        [self addSubview:self.nextButton];
        [self addSubview:self.doneButton];
    }
    return self;
}

- (void)ALKeyboardToolbar_Next:(ALKeyboardToolbar *)_ALKeyboardToolbar {
    [self.delegate ALKeyboardToolbar_Next:self];
}

- (void)ALKeyboardToolbar_Back:(ALKeyboardToolbar *)_ALKeyboardToolbar {
    [self.delegate ALKeyboardToolbar_Back:self];
}

- (void)ALKeyboardToolbar_Done:(ALKeyboardToolbar *)_ALKeyboardToolbar {
    [self.delegate ALKeyboardToolbar_Done:self];
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
