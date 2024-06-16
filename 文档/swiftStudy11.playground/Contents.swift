//: Playground - noun: a place where people can play

import UIKit
/*
swift学习第十一节
函数式
内存泄露:循环引用

*/
var number = [1,2,3,4,5,6]
var event = [Int]()
for n in number {
    if n % 2 == 0{
       event.append(n)
    }
}
event

let evens1 = number.filter({(n:Int) -> Bool in return n % 2 == 0})
evens1

//-------------------------------内存管理--------------------
class Person {
    let name:String
    init(name:String){
       self.name = name
       print("\(name) 被构建")
    }
    deinit{
       print("\(name) 被销毁")
    }
}
var ref1:Person?
var ref2:Person?

ref1 = Person(name: "Tom")   //Person对象的引用计数为1
ref2 = ref1                //Person对象的引用计数为2
ref1 = nil                 //Person对象的引用计数为1
ref2 = nil                 //deinit()方法被执行

//循环引用造成的内存泄露
class Student {
    let name:String
    var apartment:School?
    init(name:String){
       self.name = name
        print("\(name)被创建")
    }
    deinit{
        print("\(name)被销毁");
    }
}
class School {
    let unit: String
    var tenant: Student?
    init(unit:String){
      self.unit = unit
      print("\(unit)被创建")
    }
    deinit{
       print("\(unit)被销毁")
    }
}
var tom:Student? = Student(name: "TOM")
var apt11:School? = School(unit: "11")

//tom!.apartment = apt11   //这两句会造成循环引用
//apt11!.tenant  = tom

tom = nil
apt11 = nil











