//
//  ViewController.m
//  UIBezierPath-Demo
//
//  Created by hjq on 16/8/31.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createView];
}


- (void)createView {
    
    for (int i = 0; i < 8; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
        [button setTitle:[NSString stringWithFormat:@"%d", i + 1] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button.frame = CGRectMake(30 + (150 + 10)*(i/4), 100 + (80 + 10) * (i%4), 150, 80);
        button.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        button.tag = i;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}

// 点击事件
- (void)buttonClick:(UIButton *)sender {
 
    switch (sender.tag) {
        case 0:
        {
            ViewController1 *vc1 = [ViewController1 new];
            vc1.title = @"View1";
            vc1.view.backgroundColor = [UIColor whiteColor];
            [self.navigationController pushViewController:vc1 animated:YES];
        }
            break;
        case 1:
        {
            
        }
            break;
        case 2:
        {
            
        }
            break;
        case 3:
        {
            
        }
            break;
        case 4:
        {
            
        }
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
