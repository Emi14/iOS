//
//  JustPostedFlickPhotosTVCViewController.m
//  Shutterbug
//
//  Created by Ionut Emanuel Mihailescu on 3/20/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "JustPostedFlickPhotosTVCViewController.h"
#import "FlickrFetcher.h"

@interface JustPostedFlickPhotosTVCViewController ()

@end

@implementation JustPostedFlickPhotosTVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchPhotos];
}

-(void) fetchPhotos{
    NSURL *url=[FlickrFetcher URLforRecentGeoreferencedPhotos];
#warning Schimba-l pe alt queue nu pe main queue
    NSData *jsonResults=[NSData dataWithContentsOfURL:url];
    NSDictionary *propertyListResults =[NSJSONSerialization JSONObjectWithData:jsonResults options:0 error:NULL];
    
    NSLog(@"Flickr results =%@",propertyListResults);
    NSArray *photos=[propertyListResults valueForKeyPath:FLICKR_RESULTS_PHOTOS];
    
    self.photos=photos;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
