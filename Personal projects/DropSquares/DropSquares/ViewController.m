//
//  ViewController.m
//  DropSquares
//
//  Created by Ionut Emanuel Mihailescu on 3/18/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "ViewController.h"
#import "DropBehavior.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *gameView;
@property (strong,nonatomic) UIDynamicAnimator *animator;
@property (strong,nonatomic) DropBehavior *dropBehavior;
@end


@implementation ViewController

static const CGSize DROP_SIZE={40,40};


-(UIDynamicAnimator *) animator{
    if(!_animator){
        _animator=[[UIDynamicAnimator alloc] initWithReferenceView:self.gameView];
    }
    return _animator;
}

-(DropBehavior *) dropBehavior{
    if(!_dropBehavior){
        _dropBehavior=[[DropBehavior alloc]init];
        [self.animator addBehavior:self.dropBehavior];
    }
    return _dropBehavior;
}

-(UIColor *) randomSquareColor{
    switch (arc4random()%5) {
        case 0:
            return [UIColor blueColor];
        case 1:
            return [UIColor redColor];
        case 2:
            return [UIColor greenColor];
        case 3:
            return [UIColor orangeColor];
        case 4:
            return [UIColor purpleColor];
    }
    return [UIColor blackColor];
}
- (IBAction)tap:(UITapGestureRecognizer *)sender {
    [self drop];
}


-(void) drop{
    CGRect frame;
    frame.origin=CGPointZero;
    frame.size=DROP_SIZE;
    
    int x=(arc4random()%(int) self.gameView.bounds.size.width)/DROP_SIZE.width;
    frame.origin.x=x*DROP_SIZE.width;
    
    UIView *dropView=[[UIView alloc] initWithFrame:frame];
    dropView.backgroundColor=[self randomSquareColor];
    
    [self.gameView addSubview:dropView];
    
    [self.dropBehavior addItem:dropView];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
