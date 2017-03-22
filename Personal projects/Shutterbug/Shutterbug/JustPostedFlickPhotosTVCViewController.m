//
//  JustPostedFlickPhotosTVCViewController.m
//  Shutterbug
//
//  Created by Ionut Emanuel Mihailescu on 3/20/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "JustPostedFlickPhotosTVCViewController.h"
#import "FlickrFetcher.h"
#import "ImageViewController.h"

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
- (void)prepareImageViewController:(ImageViewController*)ivc toDisplayPhoto:(NSDictionary*)photo{
    
    ivc.imageURL=[FlickrFetcher URLforPhoto:photo format:FlickrPhotoFormatLarge];
    ivc.title=[photo valueForKey:FLICKR_PHOTO_TITLE];
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([sender isKindOfClass:[UITableViewCell class]]){
        NSIndexPath *indexPath=[self.tableView indexPathForCell:sender];
        if(indexPath){
    if([segue.destinationViewController isKindOfClass:[ImageViewController class]]){
        [self prepareImageViewController:[segue destinationViewController] toDisplayPhoto:self.photos[indexPath.row]];
    }
        }
    }
}


@end
