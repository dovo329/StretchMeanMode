//
//  ViewController.m
//  StretchMeanModeOfArray
//
//  Created by Douglas Voss on 5/26/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+Averages.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *testArr = @[@1.0, @2.0, @3.0, @3.0, @4.0, @9.0, @8.0, @9.0, @7.0, @7.0, @8.0, @7.0];
    NSLog(@"mean==%@", [testArr meanOfArray]);
    NSLog(@"mode==%@", [testArr modeOfArray]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
