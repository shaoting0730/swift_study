//: Playground - noun: a place where people can play

import UIKit

/*
    Swift学习第五节
可选类型 optional(可能是任何值)


*/
let possibleNumber = "520"
var result = Int(possibleNumber)
print(result)
result.dynamicType
//上面就是一个可选类型的举例,possibleNumber开始是一个string,然后强转为Int,这里可能失败(可能转为Int,也可能是nil).

var x:Int?   //定义一个可选类型x,可能Int也可能其他.默认为nil
var address:String?
var successRate:Double?

result = nil //可以为一个可选类型赋值为nil,但是普通类型不可以

//访问可选类型
if result != nil{
   print(result!)
}
//print(x!) error;可选类型不能直接输出,必须先行判断

if let num = result{
  print(result)
}else{
  print("num为nil")
}

















