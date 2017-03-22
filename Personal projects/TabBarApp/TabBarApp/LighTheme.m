//
//  LighTheme.m
//  TabBarApp
//
//  Created by Ionut Emanuel Mihailescu on 3/22/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "LighTheme.h"

@implementation LighTheme

-(LighTheme *) init{
    self=[super init];
    
    self.navigationBarColor=[UIColor yellowColor];
    self.viewColor=[UIColor whiteColor];
    self.labelColor=[UIColor redColor];
    
    self.navigationBarTitle=@"Light theme";
    self.numbeOfLabelsDisplayed=2;
    self.infoForLabels=[[NSMutableArray alloc]init];
    
    for (int i=0;i<self.numbeOfLabelsDisplayed;i++){
        [self.infoForLabels addObject:[NSString stringWithFormat:@"Label no.%d",i+1]];
    }
    return self;
}


@end
