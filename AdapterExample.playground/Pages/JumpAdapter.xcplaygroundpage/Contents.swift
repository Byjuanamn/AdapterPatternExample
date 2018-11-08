//: [Previous](@previous)
/*:
 
 https://emanleet.com/swift-solutions-adapter-pattern/
 */
import Foundation

// ejemplo salto

protocol Jumping {
    func jump()
}

struct Dog: Jumping {
    func jump() {
        print("Perro salta")
    }
}

struct Cat: Jumping {
    func jump() {
        print("Gato salta")
    }
}

struct Frog {
    func leap() {
        print("leaps")
    }
}

extension Frog: Jumping {
    func jump() {
        print("Rana salta")
    }
}

// ejemplo

var animals: [Jumping] = [Dog(), Cat(), Frog()]

func jumpAll(animals: [Jumping]) {
    for animal in animals {
        animal.jump()
    }
}

jumpAll(animals: animals)


//: [Next](@next)
