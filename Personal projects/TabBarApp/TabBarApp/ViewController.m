//
//  ViewController.m
//  TabBarApp
//
//  Created by Ionut Emanuel Mihailescu on 3/22/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [self.currentTheme applyTheme:self];
}
- (IBAction)populateLabels:(UIBarButtonItem *)sender {
    
    for (int i=0; i<self.currentTheme.numbeOfLabelsDisplayed; i++) {
     UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(15, 25*(i+1), 100, 100)];
     label.text=self.currentTheme.infoForLabels[i];
     label.textColor=self.currentTheme.labelColor;
     [self.view addSubview:label];
     }
    
}


@end
