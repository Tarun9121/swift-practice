/**
A struct is a value type in Swift used to group related data and behavior. When you assign or pass a struct,
Swift copies the value (value semantics). Many core Swift types are structs (String, Array, Dictionary, Date).
*/

struct Rectangle {
    var width: Double
    var height: Double                      // stored properties

    // If an instance is declared with let (constant), all its var stored properties become immutable.
    // let color: String

    // computed properties: 
    var area: Double {
        return width * height
    }

    // property observers
    // Inside set, Swift automatically provides a variable named newValue, which is the value being assigned.
    var perimeter: Double {
        get { 2 * (width + height) }
        set { // example: set scales width keeping height same
            width = (newValue / 2) - height
        }
    }
}

var rect = Rectangle(width: 10, height: 20)
print("width: \(rect.width)")
print("height: \(rect.height)")
print("area: \(rect.area)")
print("perimeter: \(rect.perimeter)")                       // calls the get keyword to get
rect.perimeter = 40                                         // calls the set keyword 

print("perimeter: \(rect.perimeter)")
print("width: \(rect.width)")
print("height: \(rect.height)")