import UIKit

protocol Naming {
    var name: String { get set }
    func getName() -> String
}

protocol Aging {
    var age: Int { get set }
}

protocol UserNotifiable : Naming, Aging {
    
}

struct MyFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        return "내 친구: " + self.name
    }
    
    var age: Int
}

protocol NewNaming {
    var lastName:String { get set }
    var firstName: String { get set }
    func getName() -> String
}

extension NewNaming {
    func getFullName() -> String {
        return self.firstName + " " + self.lastName
    }
}

struct Friend : NewNaming {
    var lastName: String
    
    var firstName: String
    
    func getName() -> String {
        return self.lastName
    }
}

let myFriend = Friend(lastName: "You", firstName: "Kevin")
let name = myFriend.getName()

print(name)

let fullName = myFriend.getFullName()
print(fullName)
