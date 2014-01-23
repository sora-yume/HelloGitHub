//
//  ViewController.m
//  HelloGitHub
//
//  Created by 平原　和人 on 13/11/14.
//  Copyright (c) 2013年 University of kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int c,k;

- (void)viewDidLoad
{
    [super viewDidLoad];
    startInput = YES;
    currentValue = 0;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)numberButtonPush:(id)sender{
    UIButton *b = (UIButton *)sender;
    k = 0;
    
    if(startInput){
        if(b.tag == 0){
            if(c == 0) return;
            else{
                result.text = [NSString stringWithFormat:@"%d", b.tag];
            }
        }
        
        result.text = [NSString stringWithFormat:@"%d", b.tag];
        startInput = NO;
    } else{
        result.text = [NSString stringWithFormat:@"%@%d", result.text, b.tag];
    }
}

- (IBAction)equalButtonPush:(id)sender{
    
    c = 0;
    k++;
    
    if(k < 2){
        
        
        if(operation == 0){
            currentValue += [result.text intValue];
        } else if(operation == 1){
            currentValue -= [result.text intValue];
        } else if(operation == 2){
            currentValue *= [result.text intValue];
        } else if(operation == 3){
            currentValue /= [result.text intValue];
        } 
        
        
    result.text = [NSString stringWithFormat:@"%d", currentValue];
    startInput = YES;
    }
    
    add.hidden = NO;
    sub.hidden = NO;
    mul.hidden = NO;
    div.hidden = NO;
//    plumi.hidden = NO;
    
    result.text = [NSString stringWithFormat:@"%d", currentValue];

}

- (IBAction)opButtonPush:(id)sender{
    
    c++;
    
    if(c > 1){
        if(operation == 0){
            currentValue += [result.text intValue];
        } else if(operation == 1){
            currentValue -= [result.text intValue];
        } else if(operation == 2){
            currentValue *= [result.text intValue];
        } else if(operation == 3){
            currentValue /= [result.text intValue];
        } else if(operation == 4){

        }
                
        result.text = [NSString stringWithFormat:@"%d", currentValue];
        startInput = YES;
    }

    add.hidden = YES;
    sub.hidden = YES;
    mul.hidden = YES;
    div.hidden = YES;
//    plumi.hidden = YES;
    
    UIButton *b = (UIButton *)sender;
    currentValue = [result.text intValue];
    
    operation = b.tag;
    startInput = YES;
}


- (IBAction)clearPush:(id)sender {
    c = 0;
    result.text = @"0";
    startInput = YES;
    
}

@end
