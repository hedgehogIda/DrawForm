//
//  ViewController.m
//  Form
//
//  Created by 腾实信 on 16/10/31.
//  Copyright © 2016年 ida. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];
    
    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 500, 600)];
    [scrollView addSubview:imageView];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self setupImage];
    
}
-(void)setupImage{

    UIGraphicsBeginImageContext(imageView.frame.size);
    [[UIColor whiteColor]set];
    CGContextFillRect(UIGraphicsGetCurrentContext(), imageView.bounds);
    [[UIColor blackColor]set];
    
    [imageView.image drawInRect:CGRectMake(0, 0, imageView.frame.size.height, imageView.frame.size.width)];
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 0.6);
    CGContextSetAllowsAntialiasing(UIGraphicsGetCurrentContext(), YES);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 0.0, 0.0, 1.0);
    CGContextBeginPath(UIGraphicsGetCurrentContext());
    
    NSString *title = @"制衣公司";
    UIFont *titleFont = [UIFont boldSystemFontOfSize:12];
    NSDictionary *attribute = @{NSFontAttributeName:titleFont};
    [title drawInRect:CGRectMake(120, 40, 60, 20) withAttributes:attribute];
   
    
    int x = 40;
    int y = 100;
    int h = 20;
    int Ex = 340;
    
    UIFont *f = [UIFont boldSystemFontOfSize:8];
    NSString *nar = @"销售";
    [nar drawInRect:CGRectMake(130, 70, 40, 20) withAttributes:@{NSFontAttributeName:f}];
    
    
    
  
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x, y);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), Ex, y);
    
    
    NSString *string_0 = @"序号";
    [string_0 drawInRect:CGRectMake(x+5, y+5,30, 15) withAttributes:@{NSFontAttributeName:f}];
    NSString *string_1 = @"货号";
    [string_1 drawInRect:CGRectMake(x+40, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    NSString *string_2 = @"商品名称";
    [string_2 drawInRect:CGRectMake(x+75, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    NSString *string_3 = @"颜色";
    [string_3 drawInRect:CGRectMake(x+110, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    NSString *string_4 = @"数量";
    [string_4 drawInRect:CGRectMake(x+145, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    NSString *string_5 = @"单价";
    [string_5 drawInRect:CGRectMake(x+180, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    NSString *string_6 = @"金额";
    [string_6 drawInRect:CGRectMake(x+215, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    NSString *string_7  = @"备注";
    [string_7 drawInRect:CGRectMake(x+250, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    
    
    //画横线
    
    y = y+h;
    
    for (int i=0; i<5;i++,y = y+h) {
        CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x, y);
        CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+300, y);
        NSString *string = [NSString stringWithFormat:@"%i",i+1];
        [string drawInRect:CGRectMake(x+5, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    }
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x, y);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+300, y);
    
    NSString *total = @"合计";
    [total drawInRect:CGRectMake(x+5, y+5, 30, 15) withAttributes:@{NSFontAttributeName:f}];
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x, y+h);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+300, y+h);
    
    //画竖线
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x, y+h);
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x+35, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+35, y+h);
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x+70, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+70, y+h);
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x+105, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+105, y+h);
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x+140, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+140, y+h);
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x+175, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+175, y+h);
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x+210, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+210, y+h);
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x+245, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x+245, y+h);
    
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), 340, 100);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), 340, y+h);
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
}

@end
