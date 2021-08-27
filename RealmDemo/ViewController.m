//
//  ViewController.m
//  RealmDemo
//
//  Created by dida on 2021/7/8.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Dog *mydog = [[Dog alloc] init];
    mydog.name = @"Rex";
    mydog.age = 1;
    mydog.picture = nil; // properties are nullable
    NSLog(@"Name of dog: %@", mydog.name);

    // Query Realm for all dogs less than 2 years old
    RLMResults<Dog *> *puppies = [Dog objectsWhere:@"age < 2"];
    puppies.count; // => 0 because no dogs have been added to the Realm yet

    // Persist your data easily
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm transactionWithBlock:^{
        [realm addObject:mydog];
    }];
    RLMRealmConfiguration *config = realm.configuration;

    // Queries are updated in realtime
    puppies.count; // => 1

    // Query and update the result in another thread
    dispatch_async(dispatch_queue_create("background", 0), ^{
        @autoreleasepool {
            Dog *theDog = [[Dog objectsWhere:@"age == 1"] firstObject];
            RLMRealm *realm = [RLMRealm defaultRealm];
            [realm beginWriteTransaction];
            theDog.age = 3;
            [realm commitWriteTransaction];
        }
    });

}


@end
