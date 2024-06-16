//: Playground - noun: a place where people can play
/*
reference cycle 的方式
1.使用weak   使用weak,不会造成引用计数+1,如果没有指向任何对象,则自动设置为nil
   场景:双方均可以为空
2.umowned
   场景:一方可以为空

*/


import UIKit

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
    weak  var tenant: Student?
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

tom!.apartment = apt11   //这两句会造成循环引用
apt11!.tenant  = tom

tom = nil
apt11 = nil

















