//
//  NSAttributedString+HOAString.h
//  Meituan-takeout
//
//  Created by Phoenix on 10/20/16.
//  Copyright © 2016 Phoenix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (HOAString)

+ (instancetype)ho_imageTextWithImage:(UIImage *)image
                              imageWidthAndHeight:(CGFloat)imageWH
                                title:(NSString *)title
                             fontSize:(CGFloat)fontSize
                           titleColor:(UIColor *)titleColor
                              spacing:(CGFloat)spacing;

@end
