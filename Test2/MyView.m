//
//  MyView.m
//  Test2
//
//  Created by Jaroslaw Lewandowski on 03/09/2013.
//  Copyright (c) 2013 Jotel Ltd. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    UIFont *font = [UIFont fontWithName: @"Helvetica-Bold" size: 100];
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ctx);
    CGContextSetTextDrawingMode(ctx, kCGTextFillStroke);

    CGContextSetFillColorWithColor(ctx, [[UIColor yellowColor] CGColor]);
    CGContextSetShadowWithColor(ctx, CGSizeMake(5.0, 5.0), 5.0, [[UIColor grayColor] CGColor]);
    
    CGContextSetStrokeColorWithColor(ctx, [[UIColor redColor] CGColor]);
    CGContextSetLineWidth(ctx, 2.0f);
    
    CGContextBeginTransparencyLayer(ctx, NULL);

    [@"TEST" drawInRect:rect withFont:font];
    
    CGContextEndTransparencyLayer(ctx);

    CGContextRestoreGState(ctx);
}

@end
