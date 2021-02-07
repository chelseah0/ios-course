import UIKit

var str = "Hello, playground"

var x = 5
var y: Int = 5
y = 6

let z = 7
let a: Int = 5
// z = 8 // error


// CLASS
// class name : refernce types = not copied when assigned to a variable or constant
class Song {
    
    // field declarations = variables / constructs that belonf to the class
    var name: String
    var author: String
    
    // methods = functions that belong  to the class
    init(name: String, author: String) {
        self.name = name
        self.author = author
    }
}

var songA = Song(name: "Lucky You", author: "Eminem")
var songB = songA
songB.name = "Walk on water"
print(songA.name) // prints "Walk on water"
print(songB.name) // prints "Walk on water"


// STRUCT
struct Song2 {
    // properties
    var name: String
    var author : String
}
var songC = Song2(name: "Lucky you", author: "Eminem")
var songD = songC
songD.name = "Walk on water"
print(songC.name) // prints "Lucky you"
print(songD.name) // prints "Walk on water"



// OPTIONALS
var grade1: Int?
var grade2 : Int?
var grade3: Int?

grade1 = 10
grade3 = 9
// grade2 = nil

print(grade1) // 10
print(grade2) // error
print(grade3) // 9

if let unwrappedGrade2 = grade2 {
    // this block gets run if variable a holds a value
    print(grade2)
} else {
    print("grade2 contains no value")
}

