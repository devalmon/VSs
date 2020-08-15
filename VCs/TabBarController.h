//
//  TabBarController.h
//  VCs
//
//  Created by Alexey Baryshnikov on 15.08.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TabBarController : UITabBarController

@property (nonatomic, retain)UIColor *color;

+ (id)sharedTabBarController;

@end

NS_ASSUME_NONNULL_END
