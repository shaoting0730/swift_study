//: Playground - noun: a place where people can play
/*
swift学习第四节
循环语句
for  while  repeat-while  switch

*/
import UIKit

for var i = 0;i < 10; i++ {
   print(i)
}

let vomel = ["a","e","i","o","u"]
for char in vomel{
    print(char)
}

for number in 1...100{
   print(number)
}

for _ in 1...10{
    print("*",terminator:"")
}

var i = 0
while i < 10 {
   print(i)
   ++i
}

//var n = 0
//repeat {
//    print(vomel[n])
//     ++i
//}while n < 5

let me = "a"
switch me{
case "a":
    print("me is \(me)")
case "e":
    print("me is \(me)")
case "i":
    print("me is \(me)")
case "o":
    print("me is \(me)")
case "y":
    print("me is \(me)")
default:
    print("都不是")
}

switch me{
case "a","e","i","o","u":
    print("这个是元音")
default:
    print("这个不是元音")
}

let number = 56
switch number{
case 1...10:
    print("这个数在1-10之间")
case 11...99:
    print("这个数在11-99之间")
default:
    print("这个数大于100")
}

let point = (1,1)
switch point{
case (0,0):
    print("在原点")
case (_,0):
    print("在x轴上")
case (0,_):
    print("在y轴上")
case (-2...2,-2...2):
    print("在该范围内")
default:
    print("位置跑偏")
}

switch point{
case (let x,0):
    print("\(x)")
case (0,let y):
    print("\(y)")
case let(x,y):
    print("\(x),\(y)")
}

switch point{
case let(x,y) where x == y:
    print("X=Y")
case let(x,y) where x == -y:
    print("x=-y")
case let(x,y):
    print("\(x),\(y)")

}


