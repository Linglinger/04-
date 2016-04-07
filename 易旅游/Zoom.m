//
//  Zoom.m
//
//  Created by BJ HXSD.
//

#import "Zoom.h"

#define ZOOM_STEP 3.5

@interface Zoom ()
- (CGRect)zoomRectForScale:(float)scale withCenter:(CGPoint)center;
@end

@implementation Zoom
@synthesize s1;
@synthesize img1;


@synthesize t1;
@synthesize t2;
@synthesize t3;
@synthesize t4;
@synthesize t5;
@synthesize t6;
@synthesize t7;
@synthesize t8;
@synthesize t9;

- (void)awakeFromNib
{
    //[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    s1 = self;
    img1 = [[s1 subviews] objectAtIndex:0];
    //NSLog(@"%f",img1.frame.size.height );
    s1.delegate = self;
    s1.contentSize = CGSizeMake(img1.frame.size.width, img1.frame.size.height); 
    
    
    // add gesture recognizers to the image view
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTap:)];
    UITapGestureRecognizer *twoFingerTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTwoFingerTap:)];
    
    [doubleTap setNumberOfTapsRequired:2];
    [twoFingerTap setNumberOfTouchesRequired:2];
    
    [img1 addGestureRecognizer:singleTap];
    [s1 addGestureRecognizer:doubleTap];
    [img1 addGestureRecognizer:twoFingerTap];
    
    
    // calculate minimum scale to perfectly fit image width, and begin at that scale
    float minimumScale = [s1 frame].size.width  / [img1 frame].size.width;
    [s1 setMinimumZoomScale:minimumScale];
    //[s1 setZoomScale:minimumScale];

    
    
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



- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return img1;
}

/************************************** NOTE **************************************/
/* The following delegate method works around a known bug in zoomToRect:animated: */
/* In the next release after 3.0 this workaround will no longer be necessary      */
/**********************************************************************************/
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale {
    [scrollView setZoomScale:scale+0.01 animated:NO];
    [scrollView setZoomScale:scale animated:NO];
}

#pragma mark TapDetectingImageViewDelegate methods

- (void)handleSingleTap:(UIGestureRecognizer *)gestureRecognizer {
    
    // single tap does nothing for now
}

- (void)handleDoubleTap:(UIGestureRecognizer *)gestureRecognizer {
    // double tap zooms in
    float newScale = [s1 zoomScale] * ZOOM_STEP;
    //NSLog(@"%f",newScale);
    CGRect zoomRect = [self zoomRectForScale:newScale withCenter:[gestureRecognizer locationInView:gestureRecognizer.view]];
    [s1 zoomToRect:zoomRect animated:YES];
}

- (void)handleTwoFingerTap:(UIGestureRecognizer *)gestureRecognizer {
    // two-finger tap zooms out
    float newScale = [s1 zoomScale] / ZOOM_STEP;
    CGRect zoomRect = [self zoomRectForScale:newScale withCenter:[gestureRecognizer locationInView:gestureRecognizer.view]];
    [s1 zoomToRect:zoomRect animated:YES];
}

#pragma mark Utility methods

- (CGRect)zoomRectForScale:(float)scale withCenter:(CGPoint)center {
    
    CGRect zoomRect;
    
    // the zoom rect is in the content view's coordinates. 
    //    At a zoom scale of 1.0, it would be the size of the imageScrollView's bounds.
    //    As the zoom scale decreases, so more content is visible, the size of the rect grows.
    //NSLog(@"sacle:%f",scale);
    zoomRect.size.height = [s1 frame].size.height / scale;
    zoomRect.size.width  = [s1 frame].size.width  / scale;
    
    // choose an origin so as to get the right center.
    zoomRect.origin.x    = center.x - (zoomRect.size.width  / 2.0);
    zoomRect.origin.y    = center.y - (zoomRect.size.height / 2.0);
    
    return zoomRect;
}




//Push 返回
- (IBAction) pBack:(id)sender {
    
    //[self.navigationController popViewControllerAnimated:YES];
    
}


//Modal 返回
- (IBAction) mBack:(id)sender {
    
    //[self dismissViewControllerAnimated:YES completion:NULL];
    
}




/*  文字处理部分  */
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    //NSLog(@"Beging");
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}



- (void)viewDidUnload
{
    [self setS1:nil];
    [self setImg1:nil];
    [self setT1:nil];
    [self setT2:nil];
    [self setT3:nil];
    [self setT4:nil];
    [self setT5:nil];
    [self setT6:nil];
    [self setT7:nil];
    [self setT8:nil];
    [self setT9:nil];
    //[super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    //return YES;
    return (interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
}

@end
