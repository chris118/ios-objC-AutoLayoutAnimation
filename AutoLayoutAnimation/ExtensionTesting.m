//
//  ExtensionTesting.m
//  AutoLayoutAnimation
//
//  Created by wang xiaopeng on 8/19/15.
//  Copyright (c) 2015 Triton. All rights reserved.
//

#import "ExtensionTesting.h"
#import "ViewController.h"

@implementation ExtensionTesting

- (instancetype)init
{
    self = [super init];
    if (self) {
        ViewController *vc = [[ViewController alloc] init];
        
        NSLog(@"Constraint value: %f", vc._heightCon.constant);
        //NSLog(@"%@", vc._expandBtn);  //error, extension can hide the property 
    }
    return self;
}

@end
