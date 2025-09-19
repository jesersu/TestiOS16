//
//  LiskovSubstitution.swift
//  SOLID-iOS
//
//  Created by Jesús Ervin Chapi Suyo on 19/09/25.
//


//Subtypes should be replaceable for their base types without altering correctness.

//LSP ensures that subclasses can be used in place of their parent class without causing unexpected behaviour.


//Bad Example: Problem: A Square should be substitutable for a Rectangle, but overriding width and height breaks expected behavio
class Rectangle {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }
}

class Square: Rectangle {
    override var width: Double {
        didSet {
            height = width
        }
    }
    
    override var height: Double {
        didSet {
            width = height
        }
    }
}

class demoLSP {
    var rectangle: Rectangle

    init (rectangle: Rectangle) {
        self.rectangle = Square(width: 5, height: 10) // Violates LSP
    }
}
//Good Exampe: Solution: Use a common interface for shapes

protocol Shape {
    func area() -> Double
}

class RectangleLSP: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
}

class SquareLSP: Shape {
    var side: Double
    
    init(side: Double) {
        self.side = side
    }
    
    func area() -> Double {
        return side * side
    }
}
