//
//  ViewController.h
//  HelloGitHub
//
//  Created by 平原　和人 on 13/11/14.
//  Copyright (c) 2013年 University of kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
IBOutlet UILabel *label;
IBOutlet UITextField *result;
IBOutlet UIButton *zero;
IBOutlet UIButton *one;
IBOutlet UIButton *two;
IBOutlet UIButton *three;
IBOutlet UIButton *four;
IBOutlet UIButton *five;
IBOutlet UIButton *six;
IBOutlet UIButton *seven;
IBOutlet UIButton *eight;
IBOutlet UIButton *nine;

IBOutlet UIButton *dot;
IBOutlet UIButton *clear;
IBOutlet UIButton *mul;
IBOutlet UIButton *div;
IBOutlet UIButton *add;
IBOutlet UIButton *sub;
IBOutlet UIButton *equal;
//IBOutlet UIButton *plumi;
    BOOL startInput;
    int currentValue;
    int operation;
}

- (IBAction)clearPush:(id)sender;
- (IBAction)numberButtonPush:(id)sender;
- (IBAction)equalButtonPush:(id)sender;
- (IBAction)opButtonPush:(id)sender;

@end
