

#import "Back.h"

@implementation Back


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

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    t1.delegate = self;
    t2.delegate = self;
    t3.delegate = self;
    t4.delegate = self;
    t5.delegate = self;
    t6.delegate = self;
    t7.delegate = self;
    t8.delegate = self;
    t9.delegate = self;
    
    
    return;
}


- (void)viewDidUnload
{
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
    // e.g. self.myOutlet = nil;

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // return YES;
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
