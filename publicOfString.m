//
//  ViewController.m
//  NSString
//
//  Created by MAC on 16/6/29.
//  Copyright © 2016年 银资. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//判断字符串中是否含有空格、判断字符串中是否含有中文、判断字符串中是否含有某个字符串、判断字符串是否全部为数字

//  判断字符串中是否含有空格
+ (BOOL)isHaveSpaceInString:(NSString *)string{
    NSRange _rang = [string rangeOfString:@" "];
    if (_rang.location != NSNotFound) {
        return YES;
    }else
    {
        return NO;
    }
}

//  判断字符串中是否含有中文
+ (BOOL)isHaveChineseInString:(NSString *)string{
    for (NSInteger i = 0; i < string.length; i++) {
        int a = [string characterAtIndex:i];
        if (a > 0x4e00 && a < 0x9fff) {
            return YES;
        }
    }
    return NO;
}
//  判断字符串中是否含有某个字符串
+ (BOOL)isHaveString:(NSString *)string1 InString:(NSString *)string2{
    NSRange _rang = [string2 rangeOfString:string1];
    if (_rang.location != NSNotFound) {
        return YES;
    }else{
        return NO;
    }
}

//  判断字符串是否全部为数字
+ (BOOL)isAllNum:(NSString *)string{
    unichar c;
    for (int i = 0; i < string.length; i++) {
        c = [string characterAtIndex:i];
        if (!isdigit(c)) {
            return NO;
        }
    }
    return YES;
}

@end
