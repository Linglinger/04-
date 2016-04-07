//
//  Zoom.h
//
//  Created by BJ HXSD.
//

#import <UIKit/UIKit.h>

@interface Zoom : UIScrollView <UIScrollViewDelegate, UITextFieldDelegate>


//连结到Scroll View
@property (weak, nonatomic) IBOutlet UIScrollView *s1;


//连结到图
@property (weak, nonatomic) IBOutlet UIView *img1;


//Push 返回
- (IBAction)pBack:(id)sender ;

//Modal 返回
- (IBAction)mBack:(id)sender ;



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
