//
//  ViewController.h
//  RackTemp
//
//  Created by Daniel Wittberger on 20.10.14.
//  Copyright (c) 2014 Wittberger. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "ip_connection.h"
#include "bricklet_temperature.h"
#include "bricklet_humidity.h"

@interface ViewController : UIViewController
{
    IPConnection ipcon;
    Temperature temp;
    Humidity hum;
}

@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *humLabel;

@end

