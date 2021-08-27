//
//  Person.h
//  RealmDemo
//
//  Created by dida on 2021/7/8.
//

#import <Realm/Realm.h>
#import "Dog.h"

RLM_ARRAY_TYPE(Dog)
@interface Person : RLMObject

@property NSString             *name;
@property RLMArray<Dog *><Dog>   *dogs;

@end
