//
//  Song.m
//  Tema1
//
//  Created by Ionut Emanuel Mihailescu on 3/6/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "Song.h"

@implementation Song

-(Song *)createSong:(NSString *)title artist:(NSString *)songArtist year:(NSString *)songYear album:(NSString *)songAlbum duration:(NSString *)songDuration
{
    Song *song=[[Song alloc]init];
    song.songAlbum=songAlbum;
    song.songArtist=songArtist;
    song.songTitle=title;
    song.songDuration=songDuration;
    song.songYear=songYear;
    
    return song;
}
+(NSMutableArray *)initializareMediaLibrary{
    NSMutableArray *mediaLibrary=[[NSMutableArray alloc]init];
    for (int i=1; i<=10; i++) {
        Song *song=[[Song alloc]init];
        
        NSString *title=[NSString stringWithFormat:@"Song %i", i];
        NSString *artist=[NSString stringWithFormat:@"Artist %i", i];
        NSString *album=[NSString stringWithFormat:@"Album %i", i];
        NSString *duration=[NSString stringWithFormat:@"Duration %i", i];
        NSString *year=[NSString stringWithFormat:@"Year %i", i];

        song=[song createSong:title artist:artist year:year album:album duration:duration];
        
        [mediaLibrary addObject:song];
    }
    return mediaLibrary;
}

@end
