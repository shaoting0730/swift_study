//: Playground - noun: a place where people can play

import UIKit
/*
swift学习第六节
函数  函数参数
func 方法名(参数名:参数类型){
   方法体
}
*/
//写一个方法
func printName(){
  print("my name is 少停")
}
printName()//调用


func ten(num:Int){
  print("\(num * 10)")
}
ten(20)

func mult(num1:Int,num2:Int){
  print("\(num1*num2)")
}
mult(20, num2: 10)  //num2  为外部参数名

func create(num3:Int,_ num4:Int){
  print("\(num3*num4)")   // _ 使用_代替外部参数名简化
}
create(1, 2)

func make(NUM1 num1:Int,NUM2 num2:Int){
  print("\(num1*num2)")
}                    //NUM1 NUM2 外部参数名,外部参数名只是方便理解
make(NUM1: 3, NUM2: 4)

func make1(NUM1 num1:Int = 11,NUM2 num2:Int = 11){   //为参数赋初始化
   print("\(num1*num2)")
}
make1()

func arySum(number:Double ...){//参数为Double类型的number,可以有很多个
    var sum: Double = 0
    for i in number{
       sum += i
    }
    print("\(sum)")
}
arySum(1,2,3,4,5)
arySum(1,2)

//func sum(value : Int){
//  value++
//}  error:swift中函数参数分为常量参数和变量参数,函数参数默认是常量参数,不能修改.

func sum(var value:Int){
    value++;
}
var m = 10;
sum(m);
m
//在函数内对一个参数进行修改后,在函数外部仍然不会改变

func summ(inout value:Int){//想在函数内修改参数后,在外部仍然有效需要使用inout
  value++
}
var n = 10
summ(&n)
n











