//
//  Dog.h
//  RealmDemo
//
//  Created by dida on 2021/7/8.
//

#import <Realm/Realm.h>

@interface Dog : RLMObject
@property NSString *name;
@property NSData   *picture;
@property NSInteger age;
@end
