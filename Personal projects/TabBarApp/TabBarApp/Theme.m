//
//  Theme.m
//  TabBarApp
//
//  Created by Ionut Emanuel Mihailescu on 3/22/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "Theme.h"

@implementation Theme

-(void) applyTheme:(UIViewController*) viewController{
    
    UIView *view=[viewController view];
    
    view.backgroundColor=self.viewColor;
    
    UINavigationController *navigationController=[viewController navigationController];
    UINavigationBar *navigationBar=[navigationController navigationBar];
    navigationBar.barTintColor=self.navigationBarColor;
    navigationBar.topItem.title=self.navigationBarTitle;
}

@end
