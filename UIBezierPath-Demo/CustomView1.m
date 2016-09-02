//
//  CustomView1.m
//  UIBezierPath-Demo
//
//  Created by hjq on 16/8/31.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "CustomView1.h"

@implementation CustomView1

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // 定义画图的位置
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    // path移动到开始画图的位置
    [path moveToPoint:CGPointMake(rect.origin.x, rect.origin.y)];
    // 从开始位置画一条直线到 （rect.origin.x + rect.size.width， rect.origin.y）
    [path addLineToPoint:CGPointMake(rect.origin.x + rect.size.width, rect.origin.y)];
    //再从rect.origin.x + rect.size.width， rect.origin.y））画一条线到(rect.origin.x + rect.size.width/2, rect.origin.y + rect.size.height)
    
    [path addLineToPoint:CGPointMake(rect.origin.x + rect.size.width/2, rect.origin.y + rect.size.height)];
    
    // 关闭path
    [path closePath];
    
    // 三角形内填充颜色
    [[UIColor redColor] setFill];
    
    [path fill];
}

@end
