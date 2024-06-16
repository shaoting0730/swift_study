//: Playground - noun: a place where people can play
/*
swift学习第二节
元组 Tuple
操作符 Operators

*/


import UIKit

//元组  :自己定义一组数据,类型也自己定义
let success = (200,"HTTP OK")
let fileNotFound = (404,"File not found")
let me = (name:"shaoting",no:520,email:"510738319@qq.com")
success.0
success.1
me.name

var (code,message) = success
print(code)
print(message)


//操作符 Operators
var a = 10
var b = 20

let sum = a + b
let sub = a - b
let mul = a * b
let div = a / b
let mod = a % b
let mod1 = 8 % 2

b += 10 // b = b+10
b -= 10 // b = b-10
b *= 10 // b = b*10
b /= 10 // b = b/10
b %= 10 // b = b%10

let isEqual = sum == 10
isEqual ? "YES" : "NO"

 //区间运算符
//包含1到5
for index in 1...5{
  print(index)  // 1 2 3 4 5
}

for index in 1..<5{
  print(index)  // 1 2 3 4
}












