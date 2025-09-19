//
//  InterfaceSegregation.swift
//  SOLID-iOS
//
//  Created by Jesús Ervin Chapi Suyo on 19/09/25.
//

//Clients should not be forced to depend on methods they do not use.
//A class should only implement the methods that are relevant to it. If a class is forced to implement unnecessary methods, it can lead to empty or misleading method implementations.

//Bad example:

protocol Animal {
    func eat()
    func fly()
    func swim()
}

class Dog: Animal {
    func eat() {
        print("Dog is eating")
    }
    
    func fly() {
        // Not applicable for Dog
    }
    
    func swim() {
        print("Dog is swimming")
    }
}

class Bird: Animal {
    func eat() {
        print("Bird is eating")
    }
    
    func fly() {
        print("Bird is flying")
    }
    
    func swim() {
        // Not applicable for Bird
    }
}

//Good example:

protocol Eater {
    func eat()
}

protocol Flyer {
    func fly()
}

protocol Swimmer {
    func swim()
}

class DogISP: Eater, Swimmer {
    func eat() {
        print("Dog is eating")
    }
    
    func swim() {
        print("Dog is swimming")
    }
}

class BirdISP: Eater, Flyer {
    func eat() {
        print("Bird is eating")
    }
    
    func fly() {
        print("Bird is flying")
    }
}
