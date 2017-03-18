//
//  HomeViewController.m
//  Laborator4
//
//  Created by Ionut Emanuel Mihailescu on 3/15/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@property NSMutableArray *arr;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arr= [NSMutableArray arrayWithArray:@[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillDisappear:(BOOL)animated{
    if (self.arr.count>=1){
        [self.arr removeLastObject];
        self.label.text=[NSString stringWithFormat: @"%lu", self.arr.count];
    }
    else
        self.label.text=@"Empty array!";
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
