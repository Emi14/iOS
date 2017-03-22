//
//  Theme.h
//  TabBarApp
//
//  Created by Ionut Emanuel Mihailescu on 3/22/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Theme : NSObject

@property (strong,nonatomic) NSString *navigationBarTitle;
@property int numbeOfLabelsDisplayed;
@property (strong,nonatomic) NSMutableArray *infoForLabels;

@property (strong,nonatomic) UIColor *navigationBarColor;
@property (strong,nonatomic) UIColor *labelColor;
@property (strong,nonatomic) UIColor *viewColor;

-(void) applyTheme:(UIView*) view;

@end
