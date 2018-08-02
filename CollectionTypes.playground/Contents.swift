//Created by Sidhant Chadha//
//Washington D.C,USA- August 02 '2018//
//Swift101-Collection Types and For-loops//
import UIKit

//String interpolation- Using variables or constants inside a string using a placeholder//
let firstNo=3
let secondNo=5
let res=firstNo + secondNo
print("Sum of two given numbers is \(res)")

//Get length of a string//
var str="Hello world my name is Sidhant!"
print(str.count)
str+=str
print(str.count)

//Arrays- Following ways to declare//
let arr1=[1,2,5,2,7,4]
let arr2:[Int]=[9,4,6,2,5]
//Arrays can be combined using + operator//
var arr3 = arr1 + arr2
print(arr3.count)

//Displaying arr3//
for val in arr3 {
    print(val)
}

//Creating an array with default values pre-set//
let arr4=Array(repeating:99,count:10)
print(arr4)


if arr4.isEmpty {
    print("Array 4 is empty!")
}
else {
    print("Array 4 is not empty!")
}

//Insert and Remove methods on Arrays//
var arr5=[1,2,3,4,5,6,7,8,9,10]
arr5.remove(at:0)
print(arr5)
arr5.insert(1,at:0)
print(arr5)

//Replace members of array using range//
arr5[0...2]=[11,12,13]
print(arr5)

//Remove last value from array//
arr5.removeLast()
print(arr5)

//In case we also need use of index in array//
for (index,value) in arr5.enumerated() {
    print("Index is \(index) and value is \(value)")
}

//Dictionary//
let dict=["Sid":27,"Varun":26,"Anuj":26]
for(key,val) in dict {
    print("\(key) is \(val) years old")
}

//Using wildcard pattern in for loop, i.e when we only need to loop over a code some number of times//
var x=0
for _ in 1...10 {
    x+=1
}
print("Value of x is : \(x)")

for _ in 1...5 {
    print("Sid")
}

var y=0
for _ in 1..<10 {
    y=y+1
}
print("Value of y is \(y)")

//Using stride function to iterate specifically//
let arr6=["Apple","Banana","Grape","Orange","Pineapple","Pear"]
for index in stride(from:0,to:5,by:2) {
    print(arr6[index])
}

