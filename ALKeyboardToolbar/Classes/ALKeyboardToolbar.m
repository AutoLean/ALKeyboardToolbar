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

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 250, 320, 40)];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        [self addTopBorderWithHeight:1.0f andColor:[UIColor colorWithRed:0.75f green:0.76f blue:0.78f alpha:1.00f]];
        [self addBottomBorderWithHeight:1.0f andColor:[UIColor colorWithRed:0.75f green:0.76f blue:0.78f alpha:1.00f]];
        self.nextButton = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width - 92, 0, 92, 40)];
        [self.nextButton setTitle:@"NEXT" forState:UIControlStateNormal];
        [self.nextButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.nextButton setTitleColor:[[UIColor blueColor] colorWithAlphaComponent:.3f] forState:UIControlStateHighlighted];
        [self.nextButton addTarget:self action:@selector(ALKeyboardToolbar_Next:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.nextButton];
    }
    return self;
}

//- (void)ALKeyboardToolbar_Next:(ALKeyboardToolbar *)_ALKeyboardToolbar {
//    [self.delegate ALKeyboardToolbar_Next:self];
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
