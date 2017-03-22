//
//  DarkTheme.m
//  TabBarApp
//
//  Created by Ionut Emanuel Mihailescu on 3/22/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "DarkTheme.h"

@implementation DarkTheme

-(DarkTheme *) init{
    self=[super init];
    
    self.navigationBarColor=[UIColor brownColor];
    self.viewColor=[UIColor blackColor];
    self.labelColor=[UIColor greenColor];
    
    self.navigationBarTitle=@"Dark theme";
    self.numbeOfLabelsDisplayed=6;
    self.infoForLabels=[[NSMutableArray alloc]init];
    
    for (int i=0;i<self.numbeOfLabelsDisplayed;i++){
        [self.infoForLabels addObject:[NSString stringWithFormat:@"Label no.%d",i+1]];
    }
    return self;
}

@end
