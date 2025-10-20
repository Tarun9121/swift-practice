/**
Reverse the given String without using the str.reversed() method
*/

let word : String = "swift"
var reverseWord = ""

var length = word.count
let start = word.startIndex
while length >= 1 {
    let index = word.index(start, offsetBy: length-1)
    reverseWord += String(word[index])
    length -= 1
}

// print(reverseWord)

/**
count vowels and consonents
*/

let vowels :String = "aeiouAEIOU"
let vowelsArray = Array(vowels)

var vowelsCount :UInt = 0
var consonentsCount :UInt = 0

for char in word {
    if vowelsArray.contains(char) {
        vowelsCount += 1
    } 
    else {
        consonentsCount += 1
    }
}

print("vowels \(vowelsCount), consonents \(consonentsCount)")