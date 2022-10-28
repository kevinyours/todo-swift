import UIKit

struct Friend {
    var age: Int
    
    var name: String
    
    func sayHello() -> String {
        print("sayHello");
        return "\(self.name) 님은 \(self.age) 세입니다."
    }
}

var myFriend = Friend(age: 35, name: "Kevin")
print(myFriend.sayHello())

protocol Naming {
    // 이런 변수를 가지고 있을 것이라는 약속
    var name: String { get set }
    // 이런 메소드를 가지고 있을 거라는 약속
    func getName() -> String
}

struct MyFriend : Naming {
    var name: String
    func getName() -> String {
        return "내 친구: " + self.name
    }
}

var oldFriend = MyFriend(name: "덕행")

print(oldFriend.getName())
