//
//  WBLoadingView.m
//  WBLoading
//
//  Created by tuhui－03 on 16/6/23.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "WBLoadingView.h"
@interface WBLoadingView()
{
    
    NSTimer *_time;
    CGFloat originStart;
    CGFloat originEnd;
    BOOL isDraw;

}

@end

@implementation WBLoadingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.backgroundColor=[UIColor whiteColor];
        
        isDraw=YES;
        originStart=M_PI/2*3;
        originEnd=M_PI/2*3;
        
        _time=[NSTimer timerWithTimeInterval:0.1 target:self selector:@selector(updateLoading) userInfo:nil repeats:YES];
        [[NSRunLoop mainRunLoop]addTimer:_time forMode:NSDefaultRunLoopMode];
        [_time fire];

        
    }
    return self;
}
-(void)updateLoading
{
    if (originEnd==M_PI/2*3&&isDraw) {
        
        originStart+=M_PI/10;
        
        if (originStart==M_PI/2*3+2*M_PI) {
            isDraw=NO;
            [self setNeedsDisplay];
            return;
        }
        
    }
    
    if (originStart==M_PI/2*3+2*M_PI&&!isDraw) {
        
        originEnd+=M_PI/10;
        if (originEnd==M_PI/2*3+2*M_PI) {
            isDraw=YES;
            originStart=M_PI/2*3;
            originEnd=M_PI/2*3;
            [self setNeedsDisplay];
            return;
        }
        
    }
    
    [self setNeedsDisplay];

}

-(void)drawRect:(CGRect)rect
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    UIBezierPath *path=[UIBezierPath bezierPath];
    
    CGPoint center=CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    int lineWidth=_lineWidth?_lineWidth:2;
    CGFloat radius=MIN(self.frame.size.width, self.frame.size.height)/2-lineWidth-2;
    
    
    [path addArcWithCenter:center radius:radius startAngle:originStart endAngle:originEnd clockwise:NO];
    CGContextAddPath(context, path.CGPath);
    CGContextSetLineWidth(context, lineWidth);
    UIColor *color=_lineColor?_lineColor:[UIColor redColor];
    CGContextSetStrokeColorWithColor(context, color.CGColor);
    CGContextStrokePath(context);

}



@end
