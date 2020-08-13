//
//  WeatherViewController.m
//  VCs
//
//  Created by Alexey Baryshnikov on 13.08.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "WeatherViewController.h"

@interface WeatherViewController ()

@end

@implementation WeatherViewController

- (UIColor * _Nonnull)setupController {
    return self.view.backgroundColor = UIColor.orangeColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupController];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
