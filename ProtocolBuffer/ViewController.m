//
//  ViewController.m
//  ProtocolBuffer
//
//  Created by dida on 2021/6/28.
//
//  使用步骤：
//    1、使用环境。先检查下/usr/local/bin/目录下有没有protoc，没有的话就用homebrew安装下。
//    2、cd到文件夹，touch Person.proto
//    3、添加代码。例如
//                    syntax = "proto3";
//
//                    message Person {
//                                string name = 1;
//                                int32 age = 2;
//                                string gender = 3;
//                                    }
//    4、Person.proto 文件转换为 OC 的 .h 和 .m 文件。
//    命令为：protoc --proto_path=. --objc_out=. Person.proto
//    5、pod安装第三方库 pod 'Protobuf'
//    6、Person.pbobjc.m文件需要支持arc（默认支持mrc）。Person.pbobjc.m后添加-fno-objc-arc
//    7、代码环节

#import "ViewController.h"
#import "Person.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Person *person = [[Person alloc] init];
        person.name = @"Rex";
        person.age = 18;
        person.gender = @"Male";
        
        NSData *personData = [person data];
        NSError *error = nil;
        Person *personGet = [Person parseFromData:personData error:&error];
        if (error) {
            NSLog(@"%@",error.description);
        }
        NSLog(@"%@",personGet);
}


@end
