

#import "QIE.h"

@implementation QIE



-(void) perform_NO  {
    [[[self sourceViewController] navigationController] pushViewController:[self destinationViewController] animated:NO];
}



-(void) perform01 {
    
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    
    [UIView transitionWithView:src.view.superview duration:0
                       options: UIViewAnimationOptionTransitionNone
                    animations:^{
                        src.view.alpha=0;
                        dst.view.alpha=1;
                        dst.view.frame=src.view.frame;
                    } 
                    completion:NULL];
    
}

-(void) perform02 {
    
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    
    [UIView transitionFromView:src.view toView:dst.view duration:0 options:UIViewAnimationTransitionNone completion:NULL];
    
}

- (void) perform {
    
    //[self.sourceViewController presentModalViewController:self.destinationViewController animated:NO];
    
    
    [self.sourceViewController presentViewController:self.destinationViewController animated:NO completion:^{[[self.destinationViewController view] setTag:-112];} ];
    
    //NSLog(@"-----%d",[[self.destinationViewController view] tag]);

    
}


@end
