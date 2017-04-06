//
//  NSAttributedString+AIString.m
//  AIAttributedString
//
//  Created by Oneofai on 10/04/15.
//  Copyright © 2015 Oneofai. All rights reserved.
//

#import "NSAttributedString+AIString.h"

@implementation NSAttributedString (AIString)

+ (instancetype)ai_imageTextWithImage:(UIImage *)image
                              imageWidthAndHeight:(CGFloat)imageWH
                                title:(NSString *)title
                             fontSize:(CGFloat)fontSize
                           titleColor:(UIColor *)titleColor
                              spacing:(CGFloat)spacing
{
    NSDictionary *titleDict = @{NSFontAttributeName: [UIFont systemFontOfSize:fontSize],
                                NSForegroundColorAttributeName: titleColor};
    NSDictionary *spacingDict = @{NSFontAttributeName: [UIFont systemFontOfSize:spacing]};
    
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = image;
    attachment.bounds = CGRectMake(0, 0, imageWH, imageWH);
    NSAttributedString *imageText = [NSAttributedString attributedStringWithAttachment:attachment];

    NSAttributedString *lineText = [[NSAttributedString alloc] initWithString:@"\n\n" attributes:spacingDict];
    
    NSAttributedString *text = [[NSAttributedString alloc] initWithString:title attributes:titleDict];
    
    NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:imageText];
    [attM appendAttributedString:lineText];
    [attM appendAttributedString:text];
    
    return attM.copy;
}

@end
