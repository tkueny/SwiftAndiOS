//: Playground - noun: a place where people can play

import UIKit

//Optionals
enum Optional<T> {
    case none
    case some(T)
}

let x: String? = nil
//...is...
let x1 = Optional<String>.none

let x2: String? = "hello"
//...is...
let x3: Optional<String>.some("hello")

let y = x!
//...is...
switch x {
    case some(let value): y = value
    case none: //raise an exception
}

let x4: String? = ...
if let y1 = x{
    //do something with y
}
//...is...
switch x {
case.some(let y):
    //do something
case.none:
    break
}

//Tuples: grouping of values