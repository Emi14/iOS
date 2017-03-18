//
//  Playlist.h
//  Tema1
//
//  Created by Ionut Emanuel Mihailescu on 3/6/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Playlist : NSObject

@property(strong,nonatomic) NSString *playlistTitle;
@property (strong,nonatomic) NSMutableArray *songList;

+(Playlist*)createPlaylist:(NSString*) playlistName;

@end
