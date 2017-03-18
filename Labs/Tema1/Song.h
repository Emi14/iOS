//
//  Song.h
//  Tema1
//
//  Created by Ionut Emanuel Mihailescu on 3/6/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property(strong,nonatomic) NSString *songTitle;
@property (strong,nonatomic) NSString *songArtist;
@property(strong,nonatomic) NSString *songYear;
@property (strong,nonatomic) NSString *songAlbum;
@property(strong,nonatomic) NSString *songDuration;

-(Song*)createSong:(NSString*)title artist:(NSString*)songArtist year:(NSString*)songYear album:(NSString*)songAlbum duration:(NSString*)songDuration;
+(NSMutableArray*)initializareMediaLibrary;

@end
