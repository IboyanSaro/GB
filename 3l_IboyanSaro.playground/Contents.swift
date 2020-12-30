import UIKit

enum engine {
    case start
    case stop
}

enum windows {
    case open
    case close
}

enum trunk {
    case full
    case empty
}

enum color: String {
    case black
    case white
    case blue
    case red
    case gray
}

struct sportCar {
    let model: String
    let release: Int
    let powerCar: Int
    let colorCar: color
    var trunkVolume: Int {
        willSet {
            if (trunkVolume > 0 ) && (trunkVolume > newValue) && (trunkVolume != 0) {
                let volume = trunkVolume - newValue
                print("Свободного места в багажнике осталось \(volume)")
            } else {
                print("Багажник полный!")
            }
        }
    }
    var engineCar: engine {
        willSet {
            if newValue == .stop { print("Двигатель выключен!") }
            else { print("Двигатель включен!") }
        }
    }
    var windowsCar: windows {
        willSet {
            if newValue == .close { print("Окна закрыты!") }
            else { print("Окна открыты!") }
        }
    }
    var trunkState: trunk
    mutating func emptyTrunk () {
        self.trunkState = .empty
        print("Багажник пустой!")
    }
}

struct trunkCar {
    let model: String
    let release: Int
    let powerCar: Int
    let colorCar: color
    var trunkVolume: Int {
        willSet {
            if (trunkVolume > 0 ) && (trunkVolume > newValue) && (trunkVolume != 0) {
                let volume = trunkVolume - newValue
                print("Свободного места в багажнике осталось \(volume)")
            } else {
                print("Багажник полный!")
            }
        }
    }
    var engineCar: engine {
        willSet {
            if newValue == .stop { print("Двигатель выключен!") }
            else { print("Двигатель включен!") }
        }
    }
    var windowsCar: windows {
        willSet {
            if newValue == .close { print("Окна закрыты!") }
            else { print("Окна открыты!") }
        }
    }
    var trunkState: trunk
    mutating func emptyTrunk () {
        self.trunkState = .empty
        print("Багажник пустой!")
    }
}


var car1 = sportCar(model: "Volvo", release: 2010, powerCar: 201, colorCar: .white, trunkVolume: 350, engineCar: .stop, windowsCar: .close, trunkState: .empty)

print("Модель авто \(car1.model), год выпуска \(car1.release), цвет: \(car1.colorCar), обьем багажника: \(car1.trunkVolume), мощность двигателя: \(car1.powerCar) ЛС")

car1.windowsCar = .open
car1.engineCar = .start
car1.trunkVolume = 200


var car2 = trunkCar(model: "Gas", release: 1998, powerCar: 102, colorCar: .black, trunkVolume: 1000, engineCar: .stop, windowsCar: .open, trunkState: .empty)

print("Модель авто \(car2.model), год выпуска \(car2.release), цвет: \(car2.colorCar), обьем багажника: \(car2.trunkVolume), мощность двигателя: \(car2.powerCar) ЛС")

car2.windowsCar = .close
car2.engineCar = .start
