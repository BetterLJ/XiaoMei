//
//  BView.m
//  触摸事件全家桶
//
//  Created by dida on 2021/8/25.
//

#import "BView.h"

@implementation BView
- (instancetype)init {
    if (self=[super init]) {
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(selfClick)];
        [self addGestureRecognizer:tap];
    }
    return self;
}
- (void)selfClick {
    
}
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
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s",__FUNCTION__);
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s",__FUNCTION__);
}

- (void)printResponderChain
{
    UIResponder *responder = self;
    printf("%s",[NSStringFromClass([responder class]) UTF8String]);
    while (responder.nextResponder) {
        responder = responder.nextResponder;
        printf(" --> %s",[NSStringFromClass([responder class]) UTF8String]);
    }
}

@end
