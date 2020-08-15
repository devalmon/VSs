//
//  TabBarController.m
//  VCs
//
//  Created by Alexey Baryshnikov on 15.08.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

+ (id)sharedTabBarController {
    static TabBarController *sharedTabBarConroller = nil;
    @synchronized (self) {
        if (sharedTabBarConroller == nil) {
            sharedTabBarConroller = [[self alloc] initWithColor:UIColor.whiteColor];
        }
        return sharedTabBarConroller;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
