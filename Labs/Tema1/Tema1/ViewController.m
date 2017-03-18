//
//  ViewController.m
//  Tema1
//
//  Created by Ionut Emanuel Mihailescu on 3/6/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "ViewController.h"
#import "Playlist.h"
#import "Song.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray *mediaLibrary;
@property (strong, nonatomic) Playlist *playlist;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController
- (IBAction)initMediaLibrary:(id)sender {
    if (!self.mediaLibrary)
        self.mediaLibrary=[Song initializareMediaLibrary];
    else
        NSLog(@"Media library already initialized!");
    }
- (IBAction)createPlaylist:(id)sender {
    if(!self.playlist)
    {
        self.playlist=[Playlist createPlaylist:@"Playlist"];
        self.label.text=self.playlist.playlistTitle;
    }
    else
        NSLog(@"Playlist already created!");
}
- (IBAction)addSongToPlaylist:(id)sender {
    if([self.mediaLibrary count]>=1){
        Song *song=[self.mediaLibrary lastObject];
        [self.playlist.songList addObject:song];
        [self.mediaLibrary removeLastObject];
    }
    else
        NSLog(@"No more songs to be added!");
}

- (IBAction)deleteLastAddedSong:(id)sender {
    if([self.playlist.songList count]>=1){
        [self.playlist.songList removeLastObject];
    }
    else
        NSLog(@"No song to delete!");

}
- (IBAction)displayPlaylist:(id)sender {
    for (int i=0; i<[self.playlist.songList count]; i++) {
        Song *song=[self.playlist.songList objectAtIndex:i];
        NSLog(@"%@ %@ %@ %@ %@",song.songTitle,song.songArtist,song.songAlbum,song.songYear,song.songDuration);
    }
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
