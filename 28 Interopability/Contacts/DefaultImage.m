//
//  DefaultImage.m
//  Contacts
//
//  Created by lily on 3/23/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

#import "DefaultImage.h"

@implementation DefaultImage

+ (UIImage *)generateDefaultImageOfSize:(CGSize)size
{
    // Make frame
    CGRect frame = CGRectMake(0, 0, size.width, size.height);

    // Get image context
    UIGraphicsBeginImageContext(size);

    // Get context reference
    CGContextRef context = UIGraphicsGetCurrentContext();

    // Draw white background to avoid default black
    CGColorRef white = [[UIColor whiteColor] CGColor];
    CGContextSetFillColorWithColor(context, white);
    CGContextFillRect(context, frame);

    // Make yellow circle
    CGColorRef yellow = [[UIColor yellowColor] CGColor];
    CGContextSetFillColorWithColor(context, yellow);
    CGContextFillEllipseInRect(context, frame);

    // Center of Circle
    CGFloat x = frame.origin.x + size.width / 2;
    CGFloat y = frame.origin.y + size.width / 2;
    CGPoint center = CGPointMake(x, y);

    // Draw eyes
    CGColorRef black = [[UIColor blackColor] CGColor];
    CGRect leftEyeRect = CGRectMake(center.x - 50, center.y - 50, 20, 20);
    CGRect rightEyeRect = CGRectMake(center.x + 30, center.y - 50, 20, 20);
    CGContextSetFillColorWithColor(context, black);
    CGContextFillEllipseInRect(context, leftEyeRect);
    CGContextFillEllipseInRect(context, rightEyeRect);

    // Draw smile
    CGContextSetLineWidth(context, 5.0);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, center.x - 50, center.y + 35);
    CGContextAddCurveToPoint(context, center.x - 25, center.y + 50, center.x + 25, center.y + 50, center.x + 50, center.y + 35);
    CGContextStrokePath(context);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;


}

@end
