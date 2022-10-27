import UIKit

class MyFriend {
    var name: String
    
    init(_ name: String = "이름없음") {
        self.name = name
        print("My Friend 가 메모리에 올라갔다.")
    }
    
    deinit {
        print("메모리에서 삭제됨:", self.name)
    }
    
    // deinit 검증
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [MyFriend]()
    
    class func destroySelf(object: MyFriend) {
        instancesOfSelf = instancesOfSelf.filter({
            (aFriend: MyFriend) in aFriend !== object
        })
    }
    
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destroySelf(object: self)
        }
    }
}

let myFriend = MyFriend("Kevin")
let aFriend = MyFriend()

// 메모리 주소 프린트
let anObjectMemoryAccess = Unmanaged.passUnretained(aFriend).toOpaque()
let secondMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAccess)
print(secondMemoryAddress)

weak var aFriendToBeDestroied = MyFriend("Susan")

if aFriendToBeDestroied != nil {
    aFriendToBeDestroied!.call()
} else {
    print("Object no longer exists")
}

class Friend {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func sayHi() {
        print("안녕? 난 \(self.name) 라고 해")
    }
}

class BestFriend : Friend {
    
    // override 로 부모의 메소드를 가져왔다.
    override init(_ name: String) {
        super.init("BF " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let justFriend = Friend("Danny")
justFriend.sayHi()

let myBestFriend = BestFriend("Julia")
myBestFriend.sayHi()

// 키 : 값
var myFriendsDics = [
    "bestFriend": "Kevin",
    "highschool": "Duchang"
]

let myBF = myFriendsDics["bestFriend"]
let highSchoolFriend = myFriendsDics["highschool"]
let youtubeFriend = myFriendsDics["youtube", default: "친구없음"]

print(myBF)
print(highSchoolFriend)
print(youtubeFriend)

myFriendsDics["bestFriend"] = "Jessi"
let myNewBF = myFriendsDics["bestFriend"]
print(myNewBF)

myFriendsDics["newFriend"] = "Haily"
let myNewFriend = myFriendsDics["newFriend"]
print(myNewFriend)

myFriendsDics.updateValue("Summer", forKey: "girlFriend")
let GF = myFriendsDics["girlFriend"]
print(GF)

let emptyDic : [String : Int] = [String : Int]()


func sayName(_ name: String) {
    print("Hello I am \(name)")
}

sayName("Bob Hamington")


func sayHi(_ name: inout String) {
    name = "Engineer " + name
    print("Hi I am \(name)")
}

// 변경 가능해야 되기 떄문에 값의 주소를 전달
var name = "Jonny"

sayHi(&name)
