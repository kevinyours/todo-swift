import UIKit

protocol PetHaving {
    associatedtype T
    var pets: [T] { get set }
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T) {
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, god, bird
}

struct Friend : PetHaving {
    var pets: [Animal] = [Animal]()
    
    
}

struct Family : PetHaving {
    var pets: [String] = []
    
}

var myFriend = Friend()

myFriend.gotNewPet(Animal.cat)
myFriend.gotNewPet(Animal.god)
myFriend.gotNewPet(Animal.bird)
myFriend.pets

var myFamily = Family()
myFamily.gotNewPet("dog")
myFamily.gotNewPet("pig")
myFamily.gotNewPet("ducks")
myFamily.pets


protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging

typealias FullNaming = Naming

struct FFriend: Friendable {
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
    
    var name: String
    var age: Int
}

typealias FriendName = String

var friendName : FriendName = "Irene"

typealias Friends = [FFriend]

var myFriendsArray : Friends = []

typealias StringBlock = (String) -> Void

func sayHi(completion: StringBlock) {
    print("Hi")
    completion("Good Morning")
}

sayHi(completion: { saying in
    print("여기서 받음: ", saying)
})

class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    
    var myType = MY_TYPE.DOG
}

typealias MyType  = MyClass.MY_TYPE

var myClass = MyClass()
myClass.myType = MyType.CAT

print(myClass.myType)

