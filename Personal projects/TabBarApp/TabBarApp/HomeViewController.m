//
//  HomeViewController.m
//  TabBarApp
//
//  Created by Ionut Emanuel Mihailescu on 3/22/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (strong,nonatomic) NSMutableArray *colors;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *refreshButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *displayButton;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *navigationBar=[self.navigationController navigationBar];
    UIColor *color=[UIColor colorWithRed:145.0/255.0 green:147.0/255.0 blue:240.0/255.0 alpha:1.0];
    navigationBar.barTintColor=color;
    [self.colors addObject:color];
    self.colors=[[NSMutableArray alloc]init];
    

}
- (IBAction)displayColors:(UIBarButtonItem *)sender {
    CGFloat r,g,b,a;
    for (int i=0; i<[self.colors count]; i++) {
        BOOL succes=[[self.colors objectAtIndex:i] getRed:&r green:&g blue:&b alpha:&a];
        if (succes){
            NSLog(@"R:%f G:%f B:%f",r*255,g*255,b*255);
        }
    }
}

- (IBAction)refreshColors:(UIBarButtonItem *)sender {
    [self.colors removeAllObjects];
    UINavigationBar *navigationBar=[self.navigationController navigationBar];
    UIColor *color=[UIColor colorWithRed:145.0/255.0 green:147.0/255.0 blue:240.0/255.0 alpha:1.0];
    navigationBar.barTintColor=color;
}


- (IBAction)changeNavigationBarColor:(UIButton *)sender {
    
    UINavigationBar *navigationBar=[self.navigationController navigationBar];
    UIColor *color=[UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1.0];
    navigationBar.barTintColor=color;
    [self.colors addObject:color];
    
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
