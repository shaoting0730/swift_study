//: Playground - noun: a place where people can play
/*
swift学习第十节
struct 和 class
       1. class 必须有init()方法
          struct 可以不写init()方法,默认有init方法
       2. struct 为值类型
          class 为引用类型

*/
import UIKit

struct PointVal {
    var x: Int
    var y: Int
    init(x:Int,y:Int){
       self.x = x
       self.y = y
    }
    mutating func moveX(x:Int){
      self.x += x
    }
}
class PointRef {
    var x: Int
    var y: Int
    init(x:Int,y:Int){
        self.x = x
        self.y = y
    }
    func moveX(x:Int){
      self.x += x
    }
}
let p1 = PointVal(x: 0, y: 1)
let p2 = PointRef(x: 0, y: 2)
let p3 = PointRef(x: 0, y: 2)
// p1.x = 10
p2.x = 10    //这里,p1不能修改,但是p2可以修改.因为p2是引用类型,p1是值类型
if p2 === p3 {
   print("他们是相同的对象")
}
if p2 !== p3{
   print("他们不是相同的对象")
}

var p4 = p1
p4.x = 10
p1.x

var p5 = p2
p5.x = 10
p2.x












