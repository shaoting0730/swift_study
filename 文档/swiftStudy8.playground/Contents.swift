//: Playground - noun: a place where people can play

import UIKit
/*
swift学习第八节
Closures


*/
let ten = 10
var addClosure: (Int,Int) -> Int = {(a:Int,b:Int) -> Int in
   return a + b
}
addClosure(1,2)
addClosure = { a, b in return a + b}
addClosure = {a, b in a + b}    //Single expression closure
addClosure = {$0 + $1}



















