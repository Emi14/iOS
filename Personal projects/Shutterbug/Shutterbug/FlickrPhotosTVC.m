//
//  FlickrPhotosTVC.m
//  Shutterbug
//
//  Created by Ionut Emanuel Mihailescu on 3/20/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "FlickrPhotosTVC.h"
#import "FlickrFetcher.h"
#import "ImageViewController.h"

@interface FlickrPhotosTVC ()

@end

@implementation FlickrPhotosTVC

-(void) setPhotos:(NSArray *)photos{
    _photos=photos;
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.photos count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Flickr Photo Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSDictionary *photo=self.photos[indexPath.row];
    cell.textLabel.text=[photo valueForKey:FLICKR_PHOTO_TITLE];
    cell.detailTextLabel.text=[photo valueForKey:FLICKR_PHOTO_DESCRIPTION];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

-(void) prepareImageViewController:(ImageViewController *)ivc toDisplayPhoto: (NSDictionary *)photo{
    ivc.imageURL=[FlickrFetcher URLforPhoto:photo format:FlickrPhotoFormatLarge];
    ivc.title=[photo valueForKey:FLICKR_PHOTO_TITLE];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([sender isKindOfClass:[UITableViewCell class]]){
        NSIndexPath *indexPath=[self.tableView indexPathForCell:sender];
        if(indexPath){
            if([segue.identifier isEqualToString:@"Display Photo"])
                if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]){
                    [self prepareImageViewController:segue.destinationViewController toDisplayPhoto:self.photos[indexPath.row]];
                }
        }
    }
}


@end
