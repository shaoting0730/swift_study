//: Playground - noun: a place where people can play

import UIKit

/*
swift学习第八节
函数 函数返回值和类型

*/
func sum(num1:Int,num2:Int) -> Int{   //返回一个返回值
    return num1*num2;
}
var m = sum(2, num2: 3)

func num(num1:Int,num2:Int) -> (Int,Int){   //返回两个返回值
  return (num1,num2)
}
var table = num(25, num2: 52)
table.0
table.1

func  num2(num1:Int,num2:Int) -> (n1:Int,n2:Int){   //返回两个返回值,且为返回值赋名
   return (num1,num2)
}
var nn = num2(9, num2: 1)
nn.n1
nn.n2

func string2Int(str:String) -> Int?{
   return Int(str)
}
var n = string2Int("132")
n.dynamicType


var f1:(Int,Int) -> Int = sum
var f2:(Int,Int) -> (Int,Int) = num
var f3:String -> Int? = string2Int
//----------------------------------------------------------------
//把函数作为参数使用:execute为一个函数,这个函数有两个参数,一个参数是一个函数(参数为string,返回值是int),另外一个参数是string
func execute(fn:(String) -> Int?,fnParam:String){
  fn(fnParam)
}
execute(f3, fnParam: "1000")

//----------------------------------------------------------------

//func increment(n:Int) -> Int{
//  return n+1
//}
//func decrement(n:Int) -> Int{
//  return n-1
//}
////whichOne函数:有一个参数n,返回值是一个函数(参数是int,返回值也是int)
////func whichOne(n:Bool) -> ((Int) -> Int){
////    return n ? increment : decrement
////}
//typealias op = (Int) -> Int
//func whichOne(n:Bool) -> op{
//   return n ? increment : decrement
//}
//var one = 1
//var one2Ten  = whichOne(one < 10)
//while one < 10 {
//   one = one2Ten(one)
//}
//上面的代码可以使用内嵌函数增强可读性
typealias op = (Int) -> Int
func whichOne(n:Bool) -> op{
    func increment(n:Int) -> Int{
        return n+1
    }
    func decrement(n:Int) -> Int{
        return n-1
    }
    
    return n ? increment : decrement
}
var one = 1
var one2Ten  = whichOne(one < 10)
while one < 10 {
    one = one2Ten(one)
}























