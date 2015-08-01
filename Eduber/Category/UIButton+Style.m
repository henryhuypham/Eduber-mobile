//
//  UIButton+Style.m
//  Savvee
//

#import "UIImage+Color.h"
#import "UIButton+Style.h"

@implementation UIButton (Style)

- (void)applyAppStyle
{
    self.titleLabel.font = kFontBold(16);
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:[UIColor clearColor]] forState:UIControlStateNormal];
    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:[UIColor clearColor]] forState:UIControlStateHighlighted];
    
    //corner
    self.layer.borderColor = [[UIColor whiteColor] CGColor];
    self.layer.borderWidth = 2;
    self.layer.cornerRadius = 3;
    self.clipsToBounds = YES;
}

- (void)applyFacebookStyle
{
    self.titleLabel.font = kFontBold(16);
    //left icon
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    imageView.center = CGPointMake(25, self.frame.size.height / 2);
    imageView.image = [UIImage imageNamed:@"fb_icon.png"];
    [self addSubview:imageView];
    //----------
//    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kBlueFacebookColor] forState:UIControlStateNormal];
//    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kBlueFacebookColor] forState:UIControlStateHighlighted];
    
    CALayer *layer = self.layer;
    layer.backgroundColor = [[UIColor clearColor] CGColor];
    layer.borderColor = [[UIColor whiteColor] CGColor];
    layer.cornerRadius = 8.0f;
    layer.borderWidth = 1.0f;
    
    //corner
    self.layer.cornerRadius = 3;
    self.clipsToBounds = YES;
}

- (void)applyGoogleStyle
{
    self.titleLabel.font = kFontBold(16);
    //left icon
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    imageView.center = CGPointMake(25, self.frame.size.height / 2);
    imageView.image = [UIImage imageNamed:@"google_icon"];
    [self addSubview:imageView];
    //----------
//    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kRedGoogleColor] forState:UIControlStateNormal];
//    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kRedGoogleColor] forState:UIControlStateHighlighted];
    
    CALayer *layer = self.layer;
    layer.backgroundColor = [[UIColor clearColor] CGColor];
    layer.borderColor = [[UIColor whiteColor] CGColor];
    layer.cornerRadius = 8.0f;
    layer.borderWidth = 1.0f;
    
    //corner
    self.layer.cornerRadius = 3;
    self.clipsToBounds = YES;
}

- (void)applyLinkedInStyle
{
    self.titleLabel.font = kFontBold(16);
    //left icon
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    imageView.center = CGPointMake(25, self.frame.size.height / 2);
    imageView.image = [UIImage imageNamed:@"linkedin_icon"];
    [self addSubview:imageView];
    //----------
//    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kBlueLinkedInColor] forState:UIControlStateNormal];
//    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kBlueLinkedInColor] forState:UIControlStateHighlighted];
    
    CALayer *layer = self.layer;
    layer.backgroundColor = [[UIColor clearColor] CGColor];
    layer.borderColor = [[UIColor whiteColor] CGColor];
    layer.cornerRadius = 8.0f;
    layer.borderWidth = 1.0f;
    
    //corner
    self.layer.cornerRadius = 3;
    self.clipsToBounds = YES;
}

- (void)applyStarStyle
{
    self.titleLabel.font = kFontBold(16);
    self.titleLabel.textColor = [UIColor whiteColor];
//    //left icon
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
//    imageView.center = CGPointMake(25, self.frame.size.height / 2);
//    imageView.image = [UIImage imageNamed:@"star_icon.png"];
//    [self addSubview:imageView];
//    //----------
    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kBrightBlueColor] forState:UIControlStateNormal];
    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kBrightBlueColor] forState:UIControlStateHighlighted];
    
    //corner
    self.layer.cornerRadius = 3;
    self.clipsToBounds = YES;
}

- (void)applyAppNavStyle
{
    self.titleLabel.font = kFontBold(16);
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kBlueColor] forState:UIControlStateNormal];
    [self setBackgroundImage:[[UIImage alloc] initWithSize:self.frame.size andColor:kBlueColor] forState:UIControlStateHighlighted];
}

@end
