//: Playground - noun: a place where people can play
/*
swift学习第三节
集合(数组,set,dictionary)
   有序集合: 数组
   无序集合: set dictionary
*/



import UIKit
//数组
var ary1:Array<Int> = Array<Int>()//定义一个值为空的int类型的数组
var ary2:[Int] = ary1
var ary3 = ary1

var three = [Int](count: 3, repeatedValue: 1)
var six = three + three   //相同类型的数组可以做运算

var four = [1,2,3,4]
four.count

if ary1.isEmpty{
  print("ary1 为空数组")
}

ary1.append(1) // 添加元素
ary1 += [2,3,4] // 添加多个
ary1[0...2]
ary1[0..<2]
ary1[0...1] = [5,6]  //修改元素
ary1
ary1.insert(9, atIndex: 1) //在某个下标添加元素
ary1.removeAtIndex(2)  //删除某下标的元素
ary1.removeFirst()   //删除第一个元素
ary1.removeLast()    //删除最后一个元素
ary1
for (index,value) in ary1.enumerate(){
  print("index : \(index) value : \(value)")
}

//set
//输出hash值
let number = 10
number.hashValue
let PI = 3.14
PI.hashValue
let string = "Swift"
string.hashValue

//定义一个元素类型为字符的空set
let emptySet = Set<Character>()
let vomel:Set<Character> = ["a","e","i","o","u"];
var evenSet:Set = [2,4,6,8,10] //类型推断
evenSet.count   //该set的个数
evenSet.removeFirst()   //移除set的第一个元素
evenSet.insert(25)      //插入一个元素25
evenSet.contains(4)    //判断是否包含
//因为set是无序集合,想要保证一定顺序可以使用sort
for number in evenSet.sort(){
   print(number)
}

//setA 和 setB 的交集
var setA : Set = [1,2,3,4,5]
var setB : Set = [5,6,7,8]
let setiAB : Set = setA.intersect(setB)
//setA 和 setB 的对称差
let  seteAB : Set = setA.exclusiveOr(setB)
//setA 和 setB 的并集
let unionAB : Set = setA.union(setB)
//setA对于setB的补集
let subAB : Set = setA.subtract(setB)

//判断集合是否相等
if setA == setB{
  print("相等")
}else{
  print("不相等")
}

setB.isSupersetOf(setA) //判断B是否是A的超集
setB.isSubsetOf(setA)//判断B是否是A的子集


//字典
//创建一个key是int value是string的字典
var int2String = [Int:String]()
int2String = [:]
int2String[10] = "Ten"
int2String[20] = "Twenty"

var capitalNumber = [
    1:"一",
    2:"二",
    3:"三"
]

capitalNumber[1]  // 字典某个下标值
capitalNumber.count //字典的个数
capitalNumber.isEmpty //判断字典是否为空
capitalNumber.updateValue("yi", forKey: 1) //修改字典某个key对应的值
capitalNumber[2] = nil   //对某个下标置空
capitalNumber.removeValueForKey(2) //移除某个key对应的值
capitalNumber
capitalNumber.dynamicType  //类型

for (key,value) in capitalNumber{
   print("\(key):\(value)")
}
let keyAry = [Int](capitalNumber.keys);
let valueAry = [String](capitalNumber.values);




