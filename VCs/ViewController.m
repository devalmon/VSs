//
//  ViewController.m
//  VCs
//
//  Created by Alexey Baryshnikov on 26.07.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) UITextView *textView;

@end

@implementation ViewController

- (void)setupVC {
    self.view.backgroundColor = UIColor.whiteColor;
}
- (UILabel *)setupLabel {
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 250, 100)];
    self.label.text = @"label";
    self.label.adjustsFontSizeToFitWidth = YES;
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.label setFont:[UIFont systemFontOfSize:27]];
    self.label.numberOfLines = 3;
    self.label.layer.cornerRadius = 12;
    self.label.layer.borderColor = UIColor.redColor.CGColor;
    self.label.layer.borderWidth = 1;
    [self.view addSubview:self.label];
    return self.label;
}
- (UITextView *)setupTextView {
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 200, 250, 100)];
    self.textView.text = @"default text";
    [self.textView setFont:[UIFont systemFontOfSize:27]];
    self.textView.adjustsFontForContentSizeCategory = YES;
    self.textView.textAlignment = NSTextAlignmentCenter;
    self.textView.layer.borderColor = UIColor.redColor.CGColor;
    self.textView.layer.borderWidth = 1;
    self.textView.layer.cornerRadius = 12;
    [self.view addSubview:self.textView];
    return  self.textView;
}

- (UIButton *)setupButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"change to hack" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 300, 250, 100);
    button.layer.cornerRadius = 12;
    button.layer.borderColor = UIColor.redColor.CGColor;
    button.layer.borderWidth = 1;
    [self.view addSubview:button];
    return button;
}

- (UIButton *)resetButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(cancelButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"cancel" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 400, 250, 100);
    button.layer.cornerRadius = 12;
    button.layer.borderColor = UIColor.redColor.CGColor;
    button.layer.borderWidth = 1;
    [self.view addSubview:button];
    return button;
}

- (UIButton *)greenButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(greenButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"greenButton" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    button.layer.backgroundColor = [UIColor greenColor].CGColor;
    button.frame = CGRectMake(100, 500, 250, 100);
    button.layer.cornerRadius = 12;
    button.layer.borderColor = UIColor.greenColor.CGColor;
    button.layer.borderWidth = 1;
    [self.view addSubview:button];
    return button;
}

- (UIButton *)redButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(redButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"redButton" forState:UIControlStateNormal];
    button.layer.backgroundColor = [UIColor redColor].CGColor;
    [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 600, 250, 100);
    button.layer.cornerRadius = 12;
    button.layer.borderColor = UIColor.redColor.CGColor;
    button.layer.borderWidth = 1;
    [self.view addSubview:button];
    return button;
}

- (UIButton *)applyButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(applyButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"apply" forState:UIControlStateNormal];
    button.layer.backgroundColor = [UIColor cyanColor].CGColor;
    [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 700, 250, 100);
    button.layer.cornerRadius = 12;
    button.layer.borderColor = UIColor.redColor.CGColor;
    button.layer.borderWidth = 1;
    [self.view addSubview:button];
    return button;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupVC];
    UILabel *label = [self setupLabel];
    UITextView *text = [self setupTextView];
    UIButton *changeToHackButton = [self setupButton];
    UIButton *resetButton = [self resetButton];
    UIButton *greenButton = [self greenButton];
    UIButton *redButton = [self redButton];
    UIButton *applyButton = [self applyButton];
    
    UIStackView *stackOfColorButtons = [[UIStackView alloc] init];
    stackOfColorButtons = [[UIStackView alloc] init];
    [self.view addSubview:stackOfColorButtons];
    stackOfColorButtons.translatesAutoresizingMaskIntoConstraints = NO;
    [stackOfColorButtons.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0].active = YES;
    [stackOfColorButtons.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:0].active = YES;
    stackOfColorButtons.distribution = UIStackViewDistributionFill;
    stackOfColorButtons.alignment = UIStackViewAlignmentFill;
    stackOfColorButtons.axis = UILayoutConstraintAxisVertical;
    
    [stackOfColorButtons addArrangedSubview:redButton];
    [stackOfColorButtons addArrangedSubview:greenButton];
    [stackOfColorButtons addArrangedSubview:resetButton];
    
    
    UIStackView *stackOfTextButtons = [[UIStackView alloc] init];
    stackOfTextButtons = [[UIStackView alloc] init];
    [self.view addSubview:stackOfTextButtons];
    stackOfTextButtons.translatesAutoresizingMaskIntoConstraints = NO;
    [stackOfTextButtons.bottomAnchor constraintEqualToAnchor:stackOfColorButtons.topAnchor constant:-50].active = YES;
    [stackOfTextButtons.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0].active = YES;
    stackOfTextButtons.distribution = UIStackViewDistributionFillEqually;
    stackOfTextButtons.alignment = UIStackViewAlignmentFill;
    stackOfTextButtons.axis = UILayoutConstraintAxisVertical;

    
    [stackOfTextButtons addArrangedSubview:applyButton];
    [stackOfTextButtons addArrangedSubview:label];
    [stackOfTextButtons addArrangedSubview:changeToHackButton];
    

    text.translatesAutoresizingMaskIntoConstraints = NO;
    text.backgroundColor = UIColor.lightGrayColor;
    [text.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-20].active = YES;
    [text.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:20].active = YES;
    [text.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:-20].active = YES;
    [text.topAnchor constraintEqualToAnchor:stackOfColorButtons.bottomAnchor constant:20].active = YES;
}

- (void)buttonPressed:(UIButton *)button {
    self.label.text = @"hack";
}

- (void)cancelButtonPressed:(UIButton *)cancelButton {
    self.label.text = @"label";
    self.view.backgroundColor = UIColor.whiteColor;
}
- (void)greenButtonPressed:(UIButton *)greenButton {
    self.view.backgroundColor = UIColor.greenColor;
}
- (void)redButtonPressed:(UIButton *)redButton {
    self.view.backgroundColor = UIColor.redColor;
}
- (void)applyButtonPressed:(UIButton *)applyButton {
    self.label.text = self.textView.text;
}

@end
