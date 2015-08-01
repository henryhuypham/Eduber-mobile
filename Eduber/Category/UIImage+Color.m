//
//  UIImage+Color.m
//  Savvee
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

- (UIImage *)initWithSize:(CGSize)size andColor:(UIColor *)color {
    
    //Create an image with specific size and fill color
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    [color setFill];
    UIRectFill(CGRectMake(0, 0, size.width, size.height));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
