//: Playground - noun: a place where people can play
//swift学习第一节
/*
变量
常量
类型推断
字符
字符串
*/

import UIKit

//变量
var str = "swift"   //类型推断
str = "hello"
var str1:NSString =  "shaoting"
var num = 123
var num2:Int = 123

//常量
let num3 = 321     //类型推断
//num3 = 123  error:常量不可以修改
let str2:NSString = "pheromone"

//Int 有符号的整形
//UInt 无符号的整形

Int.max
Int.min

var numFloat : Float = 1/3
var numDouble : Double = 1/3

var num4 = 3
num4.dynamicType  //类型
var num5 = 0.14
num5.dynamicType

num5 = 3 + 0.14
num5.dynamicType
//num5 = num4 + num5 eroor:类型不同不能相加
num5 = Double(num4) + num5

//初始化字符串,默认值为nil
let strr = ""
let strrr = String()

let swift:Character = "S"
let swiftInChar:[Character] = ["s","w","i","f","t"];
let swift1 = String(swiftInChar)
let swift11 = swiftInChar

var message = "i love you"
let meessageLength = message.characters.count

//message[0]  error:swift中,访问字符串中的某个字符不能使用字符串数组的某个下标
message.startIndex  // 第一个下标
message.endIndex    //最后一个下标
message[message.startIndex.successor()] //第一个下标的下一个值
message[message.endIndex.predecessor()] //最后一个下标的上一个值
message[message.startIndex.advancedBy(3)]

message.insertContentsOf("iOS".characters, at: message.startIndex)//在某个字符串的某个位置加入某些字符
message.removeAtIndex(message.endIndex.predecessor())
//message.removeRange(<#T##subRange: Range<Index>##Range<Index>#>)  删除范围内的内容

//比较字符串
let message1 = "ios hello"
if message != message1{
   print("!=")
}

let swi = "我是一只猿"
swi.hasPrefix("我")//判断前端是否包含
swi.hasSuffix("猿")//判断后端是否包含

for code in swi.utf8 {
   print("\(code)")
}

//数组
var strS:[String] = ["ios","swift"];
//var strS1:[] = [12,34];  没有指定元素类型






