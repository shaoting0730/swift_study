//: Playground - noun: a place where people can play

import UIKit
print("555")

// MARK - guard
func checkup(person:[String:String]){
  guard let id = person["id"] else {
    print("没有id,不能进入")
    return
  }
  guard let exam = person["exam"] else{
    print("没有exam,不能进入")
    return
  }
  print("id:\(id),exam:\(exam)--批准进入")
}
//checkup(["id":"123"])
//checkup(["exam":"456"])
checkup(["id":"123","exam":"456"])


//MARK - 熟悉观察
let MaxValue = 999
let MinValue = -999
var number = 0 {
   willSet{
   print("从\(number)变为\(newValue)")
   }
   didSet{
    if number > MaxValue {
       number = MaxValue
    }else if number < MinValue{
      number = MinValue
    }
    print("已经从\(oldValue)变为\(number)")
   }

}
number = 1000
number


//MARK - 扩展 extension
//对Int扩展,增加一个方法
extension Int {
  func times(closure:(() -> ())?){
    if self >= 0 {
      for _ in 0..<self {
        closure?()
      }
    }
  }
}
3.times{print("走起")}
//MARK 协议扩展
extension CustomStringConvertible{
  var upperDescription:String{
     return self.description.uppercaseString
  }
}
["key":"value"].upperDescription

//map:得到一个由闭包里面的返回值组成的新序列
//flatMap:与map类似的功能,但是会过滤掉返回值里面的nil值
//filter:得到一个由闭包返回值为true的值组成的新序列

var result = [1,2,3,4,5].map{$0 * 2}
result

result = [1,2,3,4,5].filter{$0 > 2}
result

//MARK 单例
class TestObject {
   static let testObject = TestObject()
  //私有构造,保证外部对象通过init方法创建单例类的其他实例
  private init() { }
}










