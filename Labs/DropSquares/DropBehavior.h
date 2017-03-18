//
//  DropBehavior.h
//  DropSquares
//
//  Created by Ionut Emanuel Mihailescu on 3/18/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropBehavior : UIDynamicBehavior
-(void) addItem:(id <UIDynamicItem>) item;
-(void) removeItem:(id <UIDynamicItem>) item;
@end
