//
//  DrawingSnippets.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/24/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import <Foundation/Foundation.h>


void drawPoint(CGContextRef context, CGPoint p);


void drawCoordinateAxes(CGContextRef context);

CGContextRef bitmapContextRef(int pixelWide, int pixelHeight);