//
//  uiViewController.m
//
//  Created by BJ HXSD.
//
#import <UIKit/UIKit.h>


@interface Page : UIViewController <UIScrollViewDelegate, UITextFieldDelegate>{
    // To be used when scrolls originate from the UIPageControl
    BOOL pageControlUsed;
}

//连结到View Controller
@property (weak, nonatomic) IBOutlet UIScrollView *s1; 

//连结到Page Control
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


//连结到Page Control
- (IBAction)changePage:(id)sender;



//Modal 返回
- (IBAction) back:(id)sender ;


//文字框连接
@property (weak, nonatomic) IBOutlet UITextField *t1;
@property (weak, nonatomic) IBOutlet UITextField *t2;
@property (weak, nonatomic) IBOutlet UITextField *t3;
@property (weak, nonatomic) IBOutlet UITextField *t4;
@property (weak, nonatomic) IBOutlet UITextField *t5;
@property (weak, nonatomic) IBOutlet UITextField *t6;
@property (weak, nonatomic) IBOutlet UITextField *t7;
@property (weak, nonatomic) IBOutlet UITextField *t8;
@property (weak, nonatomic) IBOutlet UITextField *t9;



@end
