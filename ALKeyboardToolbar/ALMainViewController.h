//
//  ALMainViewController.h
//  ALKeyboardToolbar
//
//  Created by Jeffrey Jackson on 1/22/14.
//  Copyright (c) 2014 AutoLean, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ALKeyboardToolbar.h"

@interface ALMainViewController : UIViewController <UITextFieldDelegate, ALKeyboardToolbarDelegate>

@property (strong, nonatomic) IBOutlet UITextField *text;


@end
