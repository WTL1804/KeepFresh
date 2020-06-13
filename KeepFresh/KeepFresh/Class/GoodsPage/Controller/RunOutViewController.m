//
//  RunOutViewController.m
//  KeepFresh
//
//  Created by 王天亮 on 2020/6/12.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import "RunOutViewController.h"
#import "RunOutView.h"

@interface RunOutViewController ()

@end

@implementation RunOutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _leftBarButton = [[UIBarButtonItem alloc] initWithTitle:@"<-Back" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftBarButton)];
    self.navigationItem.leftBarButtonItem = _leftBarButton;
    // Do any additional setup after loading the view.
    _runOutView = [[RunOutView alloc] initWithFrame:CGRectMake(0, self.navigationController.navigationBar.frame.size.height, self.view.frame.size.width, self.view.frame.size.height - self.tabBarController.tabBar.frame.size.height)];
    [self.view addSubview:_runOutView];
    _runOutView.itemsRunOutMutArray = _runOutTempMutArray;
    [_runOutView setUI];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)clickLeftBarButton {
    [self.navigationController popViewControllerAnimated:NO];
}


@end
