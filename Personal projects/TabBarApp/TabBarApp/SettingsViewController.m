//
//  SettingsViewController.m
//  TabBarApp
//
//  Created by Ionut Emanuel Mihailescu on 3/22/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "SettingsViewController.h"
#import "Theme.h"
#import "DarkTheme.h"
#import "LighTheme.h"
#import "NeutralTheme.h"

@interface SettingsViewController ()
@property (strong,nonatomic) Theme *theme;
@end

@implementation SettingsViewController

-(void) viewWillAppear:(BOOL)animated{
    self.navigationItem.title=@"Settings";
    [[self navigationController] navigationBar].barTintColor=[UIColor whiteColor];
}

- (IBAction)changeTheme:(UIButton *)sender {
    
    if (sender.tag==1)
        self.theme=[[DarkTheme alloc]init];
    else
        if (sender.tag==2)
            self.theme=[[LighTheme alloc]init];
    else
        self.theme=[[NeutralTheme alloc]init];
            
    [self performSegueWithIdentifier:@"Apply theme" sender:sender];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"Apply theme"]) {
        ViewController *view=[segue destinationViewController];
        view.currentTheme=self.theme;
    }

}


@end
