import UIKit

struct Pet {
    init() {
        print("Pet 이 생성되었다.")
    }
}

struct Friend {
    var name: String
    
    lazy var pet: Pet = Pet()
    
    init(_ name: String) {
        self.name = name
        print("Friend 가 생성됨")
    }
}

var myFriend = Friend("Kevin")
//myFriend.pet

func getName(_ name: String) -> String {
    return "내 이름은 \(name)"
}

var getNameClosure : (String) -> String

func sayHello(getName: (String) -> String, name: String) -> String {
    return getName(name)
}

let resultOne = sayHello(getName: getName, name: "Jenny")
