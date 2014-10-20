//
//  ViewController.m
//  RackTemp
//
//  Created by Daniel Wittberger on 20.10.14.
//  Copyright (c) 2014 Wittberger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ipcon_create(&ipcon);
    ipcon_connect(&ipcon, "10.0.0.227", 4223);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
