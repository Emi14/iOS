//
//  SettingsViewController.m
//  Laborator4
//
//  Created by Ionut Emanuel Mihailescu on 3/15/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "SettingsViewController.h"
#import "SecondViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController navigationBar].barTintColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)setRedColor:(id)sender {
    SecondViewController *secondViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secondViewController.color=[UIColor redColor];
    [self.navigationController pushViewController:secondViewController animated:YES];
}
- (IBAction)setBlueColor:(id)sender {
    SecondViewController *secondViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secondViewController.color=[UIColor blueColor];
    [self.navigationController pushViewController:secondViewController animated:YES];
}
- (IBAction)setGreenColor:(id)sender {
    SecondViewController *secondViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secondViewController.color=[UIColor greenColor];
    [self.navigationController pushViewController:secondViewController animated:YES];
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
