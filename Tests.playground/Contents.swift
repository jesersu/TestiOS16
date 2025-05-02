import UIKit

var greeting = "Hello, playground"

struct User{
    var name: String
}

class Car{
    var model: String
    init(model: String) {
        self.model = model
    }
}

var user1 = User(name: "Alice")
var user2 = user1
print(user1.name)
user2.name = "Bob"
print(user1.name)

let car1 = Car(model:"wolsvagen")
let car2 = car1

car2.model="bmw"
print(car1.model)
