//
//  ViewController.m
//  first-coding
//
//  Created by 黄继鹏 on 2023/11/22.
//

#import "ViewController.h"

/*
 为了观察UIView 从创建到被展示的流程
 集成UIView，创建一个TestView，它继承于UIView
 */

@interface TestView : UIView
@end

@implementation TestView

- (instancetype) init{
    self = [super init];
    if(self){
        
    }
    return self;
}


- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
    
}
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow{
    [super didMoveToWindow];
    
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
//    UIView *view = [[UIView alloc] init];
//    view.backgroundColor = [UIColor redColor];
//    view.frame = CGRectMake(100, 100, 100, 100);
//    [self.view addSubview:view];
    
    TestView *view2 = [[TestView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    view2.frame = CGRectMake(150, 150, 100, 100);
    [self.view addSubview:view2];
        
    //    view 先入栈，view2 后入栈，view2显示在view上
}


@end
