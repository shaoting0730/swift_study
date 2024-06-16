//: Playground - noun: a place where people can play

import UIKit

/*
swift学习第九节
结构体:sturt
*/
let centerX = 100.0
let centerY = 100.0
let distance = 200.0
//定义结构体sturt
struct Location {
    var x : Double = 100
    var y : Double = 200
    
    //结构体初始化
    init (StringPoint:String){
       let xy = StringPoint.characters.split(",")
        x = atof(String(xy.first!))
        y = atof(String(xy.last!))
       
    }
    init(x:Double,y:Double){
       self.x = x
       self.y = y
    }
    init(){}
    
    mutating func move2(dist:Double){
       self.x += dist
        
    }
    
}

var pointA = Location(x: 100, y: 200)
let pointB = Location(StringPoint: "100,200")
let PointC = Location()
pointA.x
pointA.y
pointB.x
pointB.y

//把结构体作为参数传入
func inRange(point:Location) -> Bool {
   let distX = point.x - centerX
   let distY = point.y - centerY
   let dist = sqrt(pow(distX, 2) + pow(distY,2))
   return dist < distance
}
inRange(pointA)

func move(dist:Double,inout point:Location){
   point.x += dist
}
move(100, point: &pointA)
pointA
pointA.move2(100.0)

//extension 扩展
extension Location {
    mutating func move3(dist:Double){
       self.y += y
    }
}
pointA.move3(100)

extension String {
    func isEven() -> Bool {
        return self.characters.count % 2 == 0 ? true : false
    }
}
"An even string".isEven()

var copyPointA = pointA
copyPointA.y = 10000.0
pointA    // struct 是值类型



