//
//  NSAttributedString+AIString.h
//  AIAttributedString
//
//  Created by Oneofai on 10/04/15.
//  Copyright © 2015 Oneofai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (AIString)

+ (instancetype)ai_imageTextWithImage:(UIImage *)image
                              imageWidthAndHeight:(CGFloat)imageWH
                                title:(NSString *)title
                             fontSize:(CGFloat)fontSize
                           titleColor:(UIColor *)titleColor
                              spacing:(CGFloat)spacing;

@end
