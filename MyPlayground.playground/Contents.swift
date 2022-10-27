import UIKit

var greeting = "Hello, playground"

var isDakrMode: Bool = false

var myArray: [Int] = [1,2,3,4,5,6,7,8,9,10]

for item in myArray {
    print("item: \(item)")
}

enum School {
    case elementary, middle, high
}

let yourSchool = School.high
print("yourSchool: ", yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second.rawValue
print("yourGrade : \(yourGrade)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "케빈학교")

print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")

for i in 0...5 {
    print("호호 i:", i)
}

//var randomInts: [Int] = []
var randomInts: [Int] = [Int]()

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")

var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

if let otherVariable = someVariable {
    print("값이 있다. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

let myValue = someVariable ?? 10
print("myValue : \(myValue)")

var firstValue: Int? = 30
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(parameter: firstValue)
unwrap(parameter: secondValue)

func unwrap(parameter: Int?) {
    print("unwrap() called")
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam : \(unWrappedParam)")
}

struct YoutuberStruct {
    var name : String
    var subscriberCount : Int
}

var devYou = YoutuberStruct(name: "유부장", subscriberCount: 99999)
var devYouClone = devYou

print("devYouClone : ", devYouClone.name)

devYouClone.name = "Kevin"

print("devYouClone : \(devYouClone.name)")
print("devYou : \(devYou.name)")


class YoutuberClass {
    var name: String
    var subscriberCount: Int
    
    init(name: String, subscriberCount: Int) {
        self.name = name
        self.subscriberCount = subscriberCount
    }
}

var engineerYou = YoutuberClass(name: "Kevin", subscriberCount: 15000)
var cloneYou = engineerYou

print("cloneYou: \(cloneYou.name)")

cloneYou.name = "Grylls"

print("cloneYou: \(cloneYou.name)")
print("engineerYou: \(engineerYou.name)")


var myAge = 0 {
    willSet {
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet {
        print("값이 설정되었다. / myAge: \(myAge)")
    }
}

print("myAge: \(myAge)")

myAge = 20

func myFunction(name: String) -> String {
    return "안녕하세요! \(name) 입니다!"
}

myFunction(name: "Kevin")

func myFunctionSecond(with name: String) -> String {
    return "안녕하세요! \(name) 입니다!"
}

myFunctionSecond(with: "Kevin Grylls")

struct MyArray<T> {
    var elements: [T] = [T]()
    
    init(_ elements: [T]) {
        self.elements = elements
    }
}

struct Friend {
    var name: String
}

struct PpakCoder {
    var name: String
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray: \(mySomeArray)")

var myStringArray = MyArray(["가", "나", "다"])
print("myStringArray: \(myStringArray)")

let firstFriend = Friend(name: "보성")
let secondFriend = Friend(name: "진우")
let thirdFriend = Friend(name: "재승")

var myFriendArray = MyArray([firstFriend, secondFriend, thirdFriend])
print("myFriendArray: \(myFriendArray)")

// String 을 반환하는 클로저
let myName: String = {
    return "Kevin"
}()

print(myName)

let myRealName : (String) -> String = { (name: String) -> String in return "개발하는 \(name)" }

myRealName("Kevin")

let myRealNameLogic: (String) -> Void = {
    (name: String) in print("개발하는 \(name)")
}

myRealNameLogic("Kevin You")

func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2)
    completion()
}

sayHi(completion: {
    print("2초가 지났다...")
})

sayHi() {
    print("2초가 지났다...2")
}

func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName() called")
    sleep(2)
    completion("오늘도 코딩 열심히 하구 있나유?")
}

sayHiWithName(completion: {
    (comment: String) in print("2초 뒤에 그가 말했다 comment:", comment)
})

var myNumbers : [Int] = [0,1,2,3,4,5]

var transformedNumbers = myNumbers.map {
    aNumber in print("숫자: \(aNumber)")
    
}
