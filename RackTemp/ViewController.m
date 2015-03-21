//
//  ViewController.m
//  RackTemp
//
//  Created by Daniel Wittberger on 20.10.14.
//  Copyright (c) 2014 Wittberger. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize tempLabel,humLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)refreshData:(id)sender {
    [self getData];
}

- (void)getData
{
    ipcon_create(&ipcon);
    temperature_create(&temp, "bUq", &ipcon);
    humidity_create(&hum, "a8m", &ipcon);
    ipcon_connect(&ipcon, "10.0.0.148", 4223);
    
    int16_t temperature;
    uint16_t humidity;
    
    temperature_get_temperature(&temp, &temperature);
    humidity_get_humidity(&hum, &humidity);
    
    NSString *tempString = [NSString stringWithFormat:@"%.2f",temperature/100.0];
    NSString *humString = [NSString stringWithFormat:@"%.2f",humidity/10.0];
    
    tempLabel.text = tempString;
    humLabel.text = humString;
    
    ipcon_destroy(&ipcon);
}
@end
