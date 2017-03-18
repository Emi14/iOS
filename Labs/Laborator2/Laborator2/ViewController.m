//
//  ViewController.m
//  Laborator2
//
//  Created by Ionut Emanuel Mihailescu on 3/1/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "ViewController.h"
#import "Song.h"

@interface ViewController ()
@property (strong, nonatomic) Song *createdSong;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)createSong:(id)sender {
    
    Song *song=[[Song alloc] init];
    song.songArtist=@"Bla bla";
    song.songTitle=@"Vsfs";
    self.createdSong = song;
    
}
- (IBAction)displaySong:(UIButton *)sender {
    
    [self.createdSong displaySongInfo];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
