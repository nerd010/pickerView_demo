//
//  ViewController.m
//  PickerView_demo
//
//  Created by Charles Wang on 16/7/18.
//  Copyright © 2016年 CHW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *testPickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testPickerView.backgroundColor = [UIColor redColor];
//    NSArray *subArr = self.testPickerView.subviews;
    
    for (id v in self.testPickerView.subviews)
    {
        NSLog(@"v-->%@", NSStringFromClass([v class]));
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
