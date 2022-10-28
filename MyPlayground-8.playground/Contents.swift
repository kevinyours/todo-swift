import UIKit

var myArray = [3,4,88,99,5,6,7,8,10,20,100]

var ascendingArray = myArray.sorted() // 정렬된 배열 복사본 리턴

myArray.sort() // 원본 정렬

var descendingArray = myArray.sorted(by: >)

myArray.sort(by: >)

struct MyPet {
    public var title: String = "타이틀없음"
    private (set) var name: String = "이름없음"
    
    mutating func setName(to newName: String) {
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name
myPet.title
myPet.title = "하하하하"
myPet.title
myPet.setName(to: "Sona")
myPet.name

let myFriendsArray: [String] = ["철수", "영희", "수진", "제임스", "마크"]

var friendsWithIndex: [String] = []

myFriendsArray.forEach {aFriend in print(aFriend)}


for (index, aFriend) in myFriendsArray.enumerated() {
    print("index: \(index) , item: \(aFriend)")
    friendsWithIndex.append("\(index).번 \(aFriend)")
}
