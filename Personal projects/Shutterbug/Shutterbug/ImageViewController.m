//
//  ImageViewController.m
//  Shutterbug
//
//  Created by Ionut Emanuel Mihailescu on 3/20/17.
//  Copyright © 2017 Ionut Emanuel Mihailescu. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController () <UIScrollViewDelegate>
@property (strong,nonatomic) UIImageView *imageView;
@property (strong,nonatomic) UIImage *image;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation ImageViewController

-(void) setScrollView:(UIScrollView *)scrollView{
    _scrollView=scrollView;
    _scrollView.minimumZoomScale=0.3;
    _scrollView.maximumZoomScale=2.0;
    _scrollView.delegate=self;
    self.scrollView.contentSize=self.image ? self.image.size : CGSizeZero;
}

-(UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}

-(void) setImageURL:(NSURL *)imageURL{
    _imageURL=imageURL;
    self.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:self.imageURL]];
    //[self startDownloadingImage];
}

/*-(void) startDownloadingImage{
    
    self.image=nil;
    if(self.imageURL){
        NSURLRequest *request=[NSURLRequest requestWithURL:self.imageURL];
        NSURLSessionConfiguration *configuration=[NSURLSessionConfiguration ephemeralSessionConfiguration];
        NSURLSession *session=[NSURLSession sessionWithConfiguration:configuration];
        NSURLSessionDataTask *task=[session downloadTaskWithURL:request completionHandler:^(NSURL *location, NSURLResponse * response, NSError *error) {
            if (!error){
                if([request.URL isEqual:self.imageURL]){
                    UIImage *image=[UIImage imageWithData:[NSData dataWithContentsOfFile:location]];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        self.image=image;
                    });
                }
            }
        }];
        [task resume];
    }
}*/

-(UIImageView*) imageView{
    if(!_imageView) _imageView=[[UIImageView alloc]init];
    return _imageView;
}

-(UIImage*) image{
    return self.imageView.image;
}

-(void)setImage:(UIImage *)image{
    self.imageView.image=image;
    [self.imageView sizeToFit];
    self.scrollView.contentSize=self.image ? self.image.size : CGSizeZero;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.scrollView addSubview:self.imageView];
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
