//
//  ViewController.m
//  First-App
//
//  Created by Ionut Emanuel Mihailescu on 2/28/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "ViewController.h"
#import "Num.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)createObject:(UIButton *)sender {
    
    Num *nr=[Num new];
    
    if(_text1.hasText&&_text2.hasText)
    {
        int n=[_text1.text intValue];
        int m=[_text2.text intValue];
        [nr set_x:n];
        [nr set_y:m];
        int x=[nr add];
        _label.text=[NSString stringWithFormat:@"%d",x];
    }
    else
        _label.text=@"Trebuie completate cele 2 campuri!";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
