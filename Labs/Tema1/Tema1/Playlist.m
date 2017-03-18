//
//  Playlist.m
//  Tema1
//
//  Created by Ionut Emanuel Mihailescu on 3/6/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

+(Playlist*) createPlaylist:(NSString *)playlistName{
    Playlist *playlist=[[Playlist alloc] init];
    playlist.playlistTitle=playlistName;
    playlist.songList=[[NSMutableArray alloc]init];
    
    return playlist;
}

@end
