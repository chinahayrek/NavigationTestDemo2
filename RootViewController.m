//
//  RootViewController.m
//  NavigationTestDemo2
//
//  Created by liumingbo on 12-12-27.
//  Copyright (c) 2012年 com.chinahayrek. All rights reserved.
//

#import "RootViewController.h"

#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton *myDateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];

    CGRect frame = CGRectMake(40, 300, 100, 50);
    myDateButton.frame = frame;
    [myDateButton setTitle:@"New" forState:UIControlStateNormal];
    [myDateButton addTarget:self
                     action:@selector(goSecondView:)
           forControlEvents:UIControlEventTouchUpInside];

//    myDateButton.backgroundColor = [UIColor clearColor];
//    myDateButton.tag = 2000;//啥用？
    
    [self.view addSubview:myDateButton];
}

- (void) goSecondView:(id)sender{
    SecondViewController *secondView = [[SecondViewController alloc] init];
    
    
    [self.view insertSubview:secondView atIndex:0];
//    [self.r
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
