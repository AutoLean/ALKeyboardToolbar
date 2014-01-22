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
    ALKeyboardToolbar *keyboardToolbar = [[ALKeyboardToolbar alloc] init];
    keyboardToolbar.delegate = self;
    [self.text setInputAccessoryView:keyboardToolbar];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
