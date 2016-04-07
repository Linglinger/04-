//
//  ViewController2.m
//  FIGHTINGDesigner
//
//  Created by hxsd on 12-9-17.
//  Copyright (c) 2012年 JansenYANG. All rights reserved.
//

#import "Time.h"

@interface Time ()

    
@end

@implementation Time

const double TIME = 3;          //设置经过 几秒 
NSString *Target = @"abc";      //走名叫 abc 的连线


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
	// Do any additional setup after loading the view.
}


-(void)viewDidAppear:(BOOL)animated{
        
    double t1 = [[self title] doubleValue];
    t1 = t1>0 ? t1 : TIME;
    [self performSelector:@selector(goToSecond) withObject:nil afterDelay:t1];
    
}


-(void)goToSecond{
    
    [self performSegueWithIdentifier: Target sender: self];
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
