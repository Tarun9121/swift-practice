let name = "tarun" // Immutable
var greeting = "Hello \(name)"  // Mutable and string interpolation \()

print(greeting);

// useful properties
let length : Int = name.count
let isEmpty : Bool = name.isEmpty
let uppercased : String = name.uppercased()
let lowercased : String = name.lowercased();

print("Length: \(length), isEmpty: \(isEmpty), uppercased: \(uppercased), lowercased: \(lowercased)")

// in Swift you can't access the middle character like a java o python
// bacause these strings are unicode based
let firstChar : Character = name[name.startIndex]
let lastIndex = name.index(before: name.endIndex)
let lastChar : Character = name[lastIndex]

print("first and last letters of the word are \(firstChar) and \(lastChar)")
print("And the lastIndex is not 5 it is \(lastIndex)");

// to access the third character 
let thirdCharIndex = name.index(name.startIndex, offsetBy: 2)
let thirdChar : Character = name[thirdCharIndex]
print("third char of the word is: \(thirdChar)")

