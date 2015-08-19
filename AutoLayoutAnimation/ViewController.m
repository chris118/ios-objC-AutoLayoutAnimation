//
//  ViewController.m
//  AutoLayoutAnimation
//
//  Created by wang xiaopeng on 8/19/15.
//  Copyright (c) 2015 Triton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIButton *_expandBtn;

- (IBAction)expandClicked:(id)sender;

@end

@implementation ViewController

static const float kAnimationDuration = 0.4;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self._heightCon setConstant:0.0f];
    bIsCollapse = false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)expandClicked:(id)sender {
    
    if(bIsCollapse){
        [[self _expandBtn] setTitle:@"expand" forState:UIControlStateNormal];
        [self._heightCon setConstant:0.0f];
        [UIView animateWithDuration:kAnimationDuration animations:^{
            [self.view layoutIfNeeded];
        }];
    }else{
        [[self _expandBtn] setTitle:@"collapse" forState:UIControlStateNormal];
        [self._heightCon setConstant:200.0f];
        [UIView animateWithDuration:kAnimationDuration animations:^{
            [self.view layoutIfNeeded];
        }];
    }
    
    bIsCollapse = !bIsCollapse;
}
@end
