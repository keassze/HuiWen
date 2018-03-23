//
//  main.swift
//  huiwen
//
//  Created by 何松泽 on 2017/9/29.
//  Copyright © 2017年 何松泽. All rights reserved.
//

import Foundation

print("Hello, World!")

//MARK:获取某个整数内的所有回文
func palindromic(MaxNum : NSInteger){
    var testNum = 0;
    while testNum <= MaxNum {
        if getWei(num: testNum) == 1 {
            print(testNum," ");
        }else{
            let wei : NSInteger = getWei(num: testNum);
            var center :NSInteger;
            
            if wei % 2 == 0 {
                center = wei/2;
                var right = 1;
                var left = wei;
                while left > center || right <= center{
                    if (getNum(wei: left, num: testNum) != getNum(wei: right, num: testNum)) {
                        break;
                    }
                    left = left - 1;
                    right = right + 1;
                    if left < center || right > center {
                        print(testNum);
                    }
                }
            }else {
                center = wei/2 + 1
                var right = 1;
                var left = wei;
                while left > center || right < center{
                    if (getNum(wei: left, num: testNum) != getNum(wei: right, num: testNum)) {
                        break;
                    }
                    left = left - 1;
                    right = right + 1;
                    if left == center && right == center {
                        print(testNum);
                    }
                }
            }
            
        }
        testNum = testNum + 1;
    }
    
}
/*获取数字位数*/
func getWei(num : NSInteger) -> NSInteger {
    var count = 0;
    var number = num;
    
    while number != 0 {
        number = number/10;
        count = count + 1;
    }
    return count;
}
/*根据位数获取当前数字*/
func getNum(wei : NSInteger , num : NSInteger) -> NSInteger {
    var number = num;
    let weiNum = powf(10, Float(wei - 1));
    number = number / NSInteger(weiNum);
    
    let n:NSInteger = number % 10;
    return n;
}

//palindromic(MaxNum : 1000);


//MARK:Test1
/*
 Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.
 
 注意事项
 
 You must not modify the array (assume the array is read only).
 You must use only constant, O(1) extra space.
 Your runtime complexity should be less than O(n^2).
 There is only one duplicate number in the array, but it could be repeated more than once.
 */
let array = [5,4,3,4,4,1]

func findDuplicate(dArr : Array<NSInteger>) -> NSInteger {
    var target:NSInteger
    
    for index in 0...dArr.count-1 {
        
        target = dArr[index]
        let item = 1 + index
        
        for i in item...dArr.count-1 {
            if target == dArr[i] {
                return target
            }
        }
        
    }
    
    return 0;
}

print(findDuplicate(dArr: array))




















