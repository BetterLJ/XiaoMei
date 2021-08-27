//
//  ATapGestureRecognizer.m
//  触摸事件全家桶
//
//  Created by dida on 2021/8/27.
//

#import "ATapGestureRecognizer.h"

@implementation ATapGestureRecognizer

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    [super touchesCancelled:touches withEvent:event];
}

@end
