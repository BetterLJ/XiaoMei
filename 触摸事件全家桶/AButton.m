//
//  AButton.m
//  触摸事件全家桶
//
//  Created by dida on 2021/8/27.
//

#import "AButton.h"

@implementation AButton
-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    NSLog(@"%s",__FUNCTION__);
    return [super beginTrackingWithTouch:touch withEvent:event];
}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    if (event.allTouches.count > 0) {
//        NSLog(@"我在这里进行相应了--%s",__FUNCTION__);
//    } else {
//        NSLog(@"%s",__FUNCTION__);
//    }
//}
//
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"%s",__FUNCTION__);
//}
//
//-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"%s",__FUNCTION__);
//}
//- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
//    NSLog(@"%s",__func__);
//    [super sendAction:action to:target forEvent:event];
//}
@end
