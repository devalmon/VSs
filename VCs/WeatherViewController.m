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
    return self.view.backgroundColor = UIColor.whiteColor;
}

- (void)shouldAnimateThisView:(UIView *)view {
    [UIView animateWithDuration:0.5f delay:0.5f usingSpringWithDamping:0.5f initialSpringVelocity:0.5f options:UIViewAnimationOptionCurveEaseOut animations:^{
        view.transform = CGAffineTransformMakeTranslation(0, -30);
    } completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupController];
    
    //setup weather view
    UIView *weatherCondition = [[UIView alloc] init];
    weatherCondition.layer.borderColor = UIColor.orangeColor.CGColor;
    weatherCondition.layer.borderWidth = 1.0f;
    weatherCondition.layer.cornerRadius = 12.0f;
    
    //layout
    [self.view addSubview:weatherCondition];
    weatherCondition.translatesAutoresizingMaskIntoConstraints = NO;
    [weatherCondition.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20].active = YES;
    [weatherCondition.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:20].active = YES;
    [weatherCondition.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:-20].active = YES;
    [weatherCondition.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-20].active = YES;
    
    //setup lable degree
    UILabel *degree = [[UILabel alloc] init];
    degree.tintColor = UIColor.lightGrayColor;
    degree.text = @"25";
    degree.layer.borderColor = UIColor.orangeColor.CGColor;
    degree.layer.borderWidth = 1.0f;
    //layout
    [weatherCondition addSubview:degree];
    degree.translatesAutoresizingMaskIntoConstraints = NO;
    [degree.topAnchor constraintEqualToAnchor:weatherCondition.topAnchor constant:20].active = YES;
    [degree.leadingAnchor constraintEqualToAnchor:weatherCondition.leadingAnchor constant:320].active = YES;
    [degree.trailingAnchor constraintEqualToAnchor:weatherCondition.trailingAnchor constant:-20].active = YES;
    [degree.bottomAnchor constraintEqualToAnchor:weatherCondition.bottomAnchor constant:-420].active = YES;
    
    //setup weather image
    UIView *weatherImage = [[UIView alloc] init];
    weatherImage.layer.borderColor = UIColor.orangeColor.CGColor;
    weatherImage.layer.borderWidth = 1.0f;
    weatherImage.layer.cornerRadius = 12.0f;
    //layout
    [weatherCondition addSubview:weatherImage];
    weatherImage.translatesAutoresizingMaskIntoConstraints = NO;
    [weatherImage.topAnchor constraintEqualToAnchor:weatherCondition.topAnchor constant:20].active = YES;
    [weatherImage.leadingAnchor constraintEqualToAnchor:weatherCondition.leadingAnchor constant:20].active = YES;
    [weatherImage.trailingAnchor constraintEqualToAnchor:degree.leadingAnchor constant:-20].active = YES;
    [weatherImage.bottomAnchor constraintEqualToAnchor:weatherCondition.bottomAnchor constant:-420].active = YES;
    
    //setup graphic
    UIView *graphicImage = [[UIView alloc] init];
    graphicImage.layer.borderColor = UIColor.orangeColor.CGColor;
    graphicImage.layer.borderWidth = 1.0f;
    graphicImage.layer.cornerRadius = 12.0f;
    //layout
    [weatherCondition addSubview:graphicImage];
    graphicImage.translatesAutoresizingMaskIntoConstraints = NO;
    [graphicImage.bottomAnchor constraintEqualToAnchor:weatherCondition.bottomAnchor constant:-20].active = YES;
    [graphicImage.topAnchor constraintEqualToAnchor:weatherImage.bottomAnchor constant:20].active = YES;
    [graphicImage.leadingAnchor constraintEqualToAnchor:weatherCondition.leadingAnchor constant:20].active = YES;
    [graphicImage.trailingAnchor constraintEqualToAnchor:weatherCondition.trailingAnchor constant:-20].active = YES;
    
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.view addGestureRecognizer:tapGestureRecognizer];
    
}

- (void)handleTap:(UITapGestureRecognizer *)tapGesture {
    NSLog(@"tap");
    
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
