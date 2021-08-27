//
//  AView.m
//  触摸事件全家桶
//
//  Created by dida on 2021/8/25.
//

#import "AView.h"

@implementation AView

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s",__FUNCTION__);
    UIView *view = [super hitTest:point withEvent:event];
    return view;
}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s",__FUNCTION__);
    BOOL flag = [super pointInside:point withEvent:event];
    return flag;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (event.allTouches.count > 0) {
        NSLog(@"我在这里进行相应了--%s",__FUNCTION__);
    } else {
        NSLog(@"%s",__FUNCTION__);
    }
    [super touchesBegan:touches withEvent:event];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s",__FUNCTION__);
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s",__FUNCTION__);
}

@end
