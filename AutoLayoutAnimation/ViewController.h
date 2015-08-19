//
//  ViewController.h
//  AutoLayoutAnimation
//
//  Created by wang xiaopeng on 8/19/15.
//  Copyright (c) 2015 Triton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    BOOL bIsCollapse;
}

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *_heightCon;

@end

