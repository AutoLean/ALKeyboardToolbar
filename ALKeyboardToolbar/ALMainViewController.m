//
//  ALMainViewController.m
//  ALKeyboardToolbar
//
//  Created by Jeffrey Jackson on 1/22/14.
//  Copyright (c) 2014 AutoLean, Inc. All rights reserved.
//

#import "ALMainViewController.h"

@interface ALMainViewController ()

@end

@implementation ALMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    ALKeyboardToolbar *keyboardToolbar = [[ALKeyboardToolbar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50.0f)];
    keyboardToolbar.delegate = self;
    [self.text setInputAccessoryView:keyboardToolbar];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)ALKeyboardToolbar_Next:(ALKeyboardToolbar *)_ALKeyboardToolbar {
    NSLog(@"NEXT");
}

- (void)ALKeyboardToolbar_Back:(ALKeyboardToolbar *)_ALKeyboardToolbar {
    NSLog(@"BACK");
}

- (void)ALKeyboardToolbar_Done:(ALKeyboardToolbar *)_ALKeyboardToolbar {
    NSLog(@"DONE");
}

@end
