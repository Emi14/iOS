//
//  DropBehavior.m
//  DropSquares
//
//  Created by Ionut Emanuel Mihailescu on 3/18/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "DropBehavior.h"

@interface DropBehavior()
@property (strong,nonatomic) UIGravityBehavior *gravity;
@property (strong,nonatomic) UICollisionBehavior *colider;
@end

@implementation DropBehavior

-(UICollisionBehavior *) colider{
    if(!_colider){
        _colider=[[UICollisionBehavior alloc]init];
        _colider.translatesReferenceBoundsIntoBoundary=
        YES;
    }
    return _colider;
}

-(UIGravityBehavior *) gravity{
    if(!_gravity){
        _gravity=[[UIGravityBehavior alloc]init];
        _gravity.magnitude=0.8;
    }
    
    return _gravity;
}

-(instancetype) init{
    self=[super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.colider];
    return  self;
}

-(void) addItem:(id<UIDynamicItem>) item{
    
    [self.gravity addItem:item];
    [self.colider addItem:item];
    
}
-(void) removeItem:(id<UIDynamicItem>) item{
    [self.gravity removeItem:item];
    [self.colider removeItem:item];
}

@end
