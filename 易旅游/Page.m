//
//  uiViewController.m
//
//  Created by BJ HXSD.
//

#import "Page.h"

@interface Page ()

@end

@implementation Page
@synthesize s1;
@synthesize pageControl;

@synthesize t1;
@synthesize t2;
@synthesize t3;
@synthesize t4;
@synthesize t5;
@synthesize t6;
@synthesize t7;
@synthesize t8;
@synthesize t9;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect frame = s1.frame;
    int n = [s1.subviews count]-2;
    NSLog(@"%d",n);
    s1.contentSize = CGSizeMake(frame.size.width*n, frame.size.height);
    s1.delegate = self;
    
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


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (pageControlUsed)
    {
        // do nothing - the scroll was initiated from the page control, not the user dragging
        return;
    }
	
    // Switch the indicator when more than 50% of the previous/next page is visible
    CGFloat pageWidth = scrollView.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    pageControl.currentPage = page;
    // A possible optimization would be to unload the views+controllers which are no longer visible
}


// At the begin of scroll dragging, reset the boolean used when scrolls originate from the UIPageControl
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    pageControlUsed = NO;
}

// At the end of scroll animation, reset the boolean used when scrolls originate from the UIPageControl
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    pageControlUsed = NO;
}



- (IBAction)changePage:(id)sender
{
    int page = pageControl.currentPage;
	
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    //[self loadPage:page];
    
	// update the scroll view to the appropriate page
    CGRect frame = s1.frame;
    frame.origin.x = frame.size.width * page;
    frame.origin.y = 0;
    [s1 scrollRectToVisible:frame animated:YES];
    
	// Set the boolean used when scrolls originate from the UIPageControl. See scrollViewDidScroll: above.
    pageControlUsed = YES;
}




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




/*  文字处理部分  */

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"Beging");
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}



- (void)viewDidUnload
{
    [self setS1:nil];
    [self setPageControl:nil];
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
    // return YES;
    return (interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
}


@end
