//
//  Song.h
//  Laborator2
//
//  Created by Ionut Emanuel Mihailescu on 3/1/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property(strong,nonatomic) NSString *songTitle;
@property (strong,nonatomic) NSString *songArtist;

- (void) displaySongInfo;


@end
