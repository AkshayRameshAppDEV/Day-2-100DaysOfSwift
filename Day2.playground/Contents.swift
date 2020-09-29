import UIKit

// Arrays - Ordered and can contain duplicates
// Linear Lookup - if you want to search an element in the array
let A: String = "A"
let B: String = "B"
let C: String = "C"
let D: String = "D"
// Arrays - Type Annotation
let collectionOfAlphabetsTypeInference = [A, B, C, D, D]
//let collectionOfAlphabetsTypeInference = [A, B, C, 1] // Heterogeneous Collection
let collectionOfAlphabetsTypeAnnotation: [String] = [A, B, C, "C"]

//Accessing Arrays
collectionOfAlphabetsTypeInference[0]
collectionOfAlphabetsTypeAnnotation[3]

//collectionOfAlphabetsTypeAnnotation[4] //BAD ACCESS - ARRAY OUT OF BOUNDS

// Sets - No particular order and elements in set in unique (appear's only once)
// Even if the array elements are repeated - It will appear only once in output
// Unordered and cannot contain duplicates
// Random lookup - if you want to search an element in the array (Fast access)
let setCollectionOfAlphabets = Set(collectionOfAlphabetsTypeInference)

// Tuples - stores n values of different types together in a single variable
// CANT add or remove items in tuple - Once created that's the fixed
// CAN access values from tuple via the name or number position - zero based
// CAN edit values of the created tuple only of the same type
// In simple words - Tuples are array with names - Can be accessed via names/numbers
// Key should be plain english Identifiers, Values can be any type
var name = (first: "Akshay", last: "R") // positions 0,1
var fibonacci = (1, 1, 2, 3, 5, 8)

name.first
name.last
name.first = "Changed" // editing the value
name

// Dictionaries - Key Value Pairs - Type Inference
// Key and Value can be any type
let nameDict = [
    "First Name": "Akshay",
    "Last": "R"
]
nameDict["First Name"]
nameDict["Last"]

// Dictionaries Type Annotation
// Fast retrieval - No order, access randomly
let animal: [String : String] = [
    "Type": "Dog",
    "Legs": "4"
]

// Dictionary with default values - To avoid nil values
let favoriteFoodWithDefaultDict = [
    "Indian": "Dosa",
    "Italian": "Pizza"
]
favoriteFoodWithDefaultDict["Chinese", default: "Unknown"]
favoriteFoodWithDefaultDict["Italian", default: "Unknown"] // If there is a value for that key use the value, if not use the default value provided otherwise nil if there is no default value

// Creating Empty Collections - Array, Sets and Dictionary Collections - Values to be added later
var emptyArray = [String]()
var emptySet = Set<String>()
var emptyDict = [String: String]()

//Enums - group of related values
enum WeatherType {
    case SUNNY //0
    case RAINY // 1
    case CLOUDY // 2
}
enum WeatherTypeWithRawValue: Int {
    case SUNNY //0
    case RAINY // 1
    case CLOUDY // 2
}

// Extracting enum type based on Raw values and also can be assigned increment value
// like Case SUNNY = 1 .... increments all others from 1
WeatherTypeWithRawValue(rawValue: 2)
let rainyWeather = WeatherType.RAINY

// Enums with associated values - giving like context to enums
enum Sports {
    case CRICKET(league: String)
}

let t20League = Sports.CRICKET(league: "t20")

