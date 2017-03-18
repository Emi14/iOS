//
//  Num.h
//  First-App
//
//  Created by Ionut Emanuel Mihailescu on 2/28/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#ifndef Num_h
#define Num_h


#endif /* Num_h */
@interface Num : NSObject



@end

@implementation Num

int x,y;

-(int) add {
    return x+y;
}
-(void) set_x:(int)n{
    x=n;
}
-(void) set_y:(int)n{
    y=n;
}
@end
