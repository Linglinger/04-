//
//  uiViewController.m
//  hidden
//
//  Created by BJ HXSD on 12-5-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Show.h"

@interface Show ()

@end

@implementation Show

@synthesize v1;
@synthesize v2;
@synthesize v3;
@synthesize v4;
@synthesize v5;
@synthesize v6;
@synthesize v7;
@synthesize v8;
@synthesize v9;



@synthesize t1;
@synthesize t2;
@synthesize t3;
@synthesize t4;
@synthesize t5;
@synthesize t6;
@synthesize t7;
@synthesize t8;
@synthesize t9;




//Modal 返回
- (IBAction) back:(id)sender {
    
    if (![self.navigationController popViewControllerAnimated:YES]) {
        if ( [self.view tag] == -112 ) {
            [self dismissViewControllerAnimated:NO completion:nil];
        } else {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }else{
        //[self.navigationController popViewControllerAnimated:YES];
    }
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return true;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //[b1 addTarget:self action:@selector(hs:) forControlEvents:UIControlEventTouchUpInside];
    t1.delegate = self;
    t2.delegate = self;
    t3.delegate = self;
    t4.delegate = self;
    t5.delegate = self;
    t6.delegate = self;
    t7.delegate = self;
    t8.delegate = self;
    t9.delegate = self;
}

- (void)viewDidUnload
{
    [self setV1:nil];
    [self setV2:nil];
    [self setV3:nil];
    [self setV4:nil];
    [self setV5:nil];
    [self setV6:nil];
    [self setV7:nil];
    [self setV8:nil];
    [self setV9:nil];
    
    [self setT1:nil];
    [self setT2:nil];
    [self setT3:nil];
    [self setT4:nil];
    [self setT5:nil];
    [self setT6:nil];
    [self setT7:nil];
    [self setT8:nil];
    [self setT9:nil];

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    //return YES;
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showHide1:(id)sender {
    
    if([v1 isHidden]){
        [v1 setHidden:NO];
    }else{
        [v1 setHidden:YES];
    }
}

- (IBAction)showHide2:(id)sender {
    
    if([v2 isHidden]){
        [v2 setHidden:NO];
    }else{
        [v2 setHidden:YES];
    }
}

- (IBAction)showHide3:(id)sender {
    
    if([v3 isHidden]){
        [v3 setHidden:NO];
    }else{
        [v3 setHidden:YES];
    }
}

- (IBAction)showHide4:(id)sender {
    
    if([v4 isHidden]){
        [v4 setHidden:NO];
    }else{
        [v4 setHidden:YES];
    }
}

- (IBAction)showHide5:(id)sender {
    
    if([v5 isHidden]){
        [v5 setHidden:NO];
    }else{
        [v5 setHidden:YES];
    }
}

- (IBAction)showHide6:(id)sender {
    
    if([v6 isHidden]){
        [v6 setHidden:NO];
    }else{
        [v6 setHidden:YES];
    }
}

- (IBAction)showHide7:(id)sender {
    
    if([v7 isHidden]){
        [v7 setHidden:NO];
    }else{
        [v7 setHidden:YES];
    }
}

- (IBAction)showHide8:(id)sender {
    
    if([v8 isHidden]){
        [v8 setHidden:NO];
    }else{
        [v8 setHidden:YES];
    }
}

- (IBAction)showHide9:(id)sender {
    
    if([v9 isHidden]){
        [v9 setHidden:NO];
    }else{
        [v9 setHidden:YES];
    }
}



@end
