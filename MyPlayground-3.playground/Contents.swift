import UIKit

enum MismatchError: Error {
    case nameMismatch
    case numberMismatch
}

// 에러를 던지는 메소드
func guessMyName(name input: String) throws {
    print("guessMyName() called")
    
    if input != "Kevin" {
        print("Wrong...")
        throw MismatchError.nameMismatch
//        return
    }
    
    print("Right...")
}

// 에러를 처리하고 싶지 않을 때...
// try? guessMyName(name: "John")

do {
    try guessMyName(name: "유상현")
} catch {
    print("잡은 에러: \(error)")
}

// return & error 처리 같이 사용
func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyNumber() called")
    
    if input != 10 {
        print("틀렸다")
        throw MismatchError.numberMismatch
        // return value 없음
    }
    
    print("맞췄다")
    return true
    // return value 존재
}

do {
    try guessMyNumber(number: 9)
} catch {
    print("잡은 에러: \(error)")
}

class Friend {
    var name: String
    
    func changeName(newName: String) {
        self.name = newName
    }
    
    init(_ name: String) {
        self.name = name
    }
}

var myFriend = Friend("Ellice")

myFriend.changeName(newName: "Donny")

print(myFriend.name)

struct BaseFriend {
    var name: String
    
    func changeName(newName: String) {
        print(newName)
//        self.name = newName
    }
}

var myBF = BaseFriend(name: "Ian")
myBF.changeName(newName: "Paul")
