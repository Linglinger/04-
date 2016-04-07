//
//  uiViewController.h
//  hidden
//
//  Created by BJ HXSD on 12-5-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Show : UIViewController<UITextFieldDelegate>


@property (strong, nonatomic) IBOutlet UIView *v1;
@property (strong, nonatomic) IBOutlet UIView *v2;
@property (strong, nonatomic) IBOutlet UIView *v3;
@property (strong, nonatomic) IBOutlet UIView *v4;
@property (strong, nonatomic) IBOutlet UIView *v5;
@property (strong, nonatomic) IBOutlet UIView *v6;
@property (strong, nonatomic) IBOutlet UIView *v7;
@property (strong, nonatomic) IBOutlet UIView *v8;
@property (strong, nonatomic) IBOutlet UIView *v9;


- (IBAction)showHide1:(id)sender;
- (IBAction)showHide2:(id)sender;
- (IBAction)showHide3:(id)sender;
- (IBAction)showHide4:(id)sender;
- (IBAction)showHide5:(id)sender;
- (IBAction)showHide6:(id)sender;
- (IBAction)showHide7:(id)sender;
- (IBAction)showHide8:(id)sender;
- (IBAction)showHide9:(id)sender;





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
