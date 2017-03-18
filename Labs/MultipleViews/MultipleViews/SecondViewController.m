//
//  SecondViewController.m
//  MultipleViews
//
//  Created by Ionut Emanuel Mihailescu on 3/8/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *text;
@end

@implementation SecondViewController
- (IBAction)changeView:(id)sender {
    ThirdViewController *thirdView=[self.storyboard instantiateViewControllerWithIdentifier:@"thirdView"];
    
    [self.navigationController pushViewController:thirdView animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
