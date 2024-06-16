//: Playground - noun: a place where people can play

import UIKit

//*******************嵌套函数*****************************
func getMathFunc(type:String) -> ((Int) -> Int) {
  func squre(num:Int) -> Int{
     return num * num
  }
  func cube(num:Int) -> Int{
     return num * num * num
  }
  switch (type) {
  case "squre":
    return squre
  default:
    return cube
  }
}

var mathFunc = getMathFunc("squre")
mathFunc(4)
var mathFunc2 = getMathFunc("other")
mathFunc2(4)


//********************闭包****************************
//  {  (形参列表) -> 返回值类型 in
//      可执行表达式
//  }

func getMathFunc1(type:String) -> ((Int) -> Int) {
  func squre(num:Int) -> Int{
    return num * num
  }
  func cube(num:Int) -> Int{
    return num * num * num
  }
  switch (type) {
  case "squre":
    return {(num:Int) -> Int in
        return num * num
     }
  default:
    return {(num:Int) -> Int in
       return num * num * num
    }
  }
}
var maxFunc3 = getMathFunc("squre")
maxFunc3(5)
var maxFunc4 = getMathFunc("other")
maxFunc4(5)

//
var squre: (Int) -> Int = {(num) in return num * num}
squre(3)


//?? 如果??左边有值就就是原值,如果没有值那么就设置为??右边的值
var a:Int?
//a = 11
print(a ?? 2)









