//
//  NeutralTheme.m
//  TabBarApp
//
//  Created by Ionut Emanuel Mihailescu on 3/22/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "NeutralTheme.h"

@implementation NeutralTheme

-(NeutralTheme *) init{
    self=[super init];
    
    self.navigationBarColor=[UIColor whiteColor];
    self.viewColor=[UIColor whiteColor];
    self.labelColor=[UIColor blueColor];
    
    self.navigationBarTitle=@"Neutral theme";
    self.numbeOfLabelsDisplayed=6;
    self.infoForLabels=[[NSMutableArray alloc]init];
    
    for (int i=0;i<self.numbeOfLabelsDisplayed;i++){
        [self.infoForLabels addObject:[NSString stringWithFormat:@"Label no.%d",i+1]];
    }
    return self;
}


@end
