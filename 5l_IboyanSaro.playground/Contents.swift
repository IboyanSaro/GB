import UIKit

enum windows {
    case open, close
}

enum engine {
    case start, stop
}

enum mode {
    case comfort, sport
}

enum trailer {
    case on, off
}

protocol car {
    var model: String {get set}
    var release: Int {get set}
    var colorCar: UIColor {get set}
    var windowsCar: windows { get set}
    var engineCar: engine {get set}
}

extension car {
    func engineState(state: engine) {
        switch state {
        case .start:
            print("Двигатель включен!")
        case .stop:
            print("Двигатель выключен!")
        }
    }
    
    func windowsState(state: windows) {
        switch state {
        case .open:
            print("Окна открыты!")
        case .close:
            print("Окна закрыты!")
        }
    }
}

class sportCar: car {
    var model: String = ""
    var release: Int = 0
    var colorCar: UIColor
    var windowsCar: windows
    var engineCar: engine
    var maxSpeed: Int = 0
    var modeCar: mode
    init(model: String, release: Int, colorCar: UIColor, engineCar: engine, windowsCar: windows, modeCar: mode, maxSpeed: Int) {
        self.model = model
        self.release = release
        self.colorCar = colorCar
        self.engineCar = engineCar
        self.windowsCar = windowsCar
        self.maxSpeed = maxSpeed
        self.modeCar = modeCar
    }
    func modeState(state: mode) {
        switch state {
        case .comfort:
            print("Комфортный режим!")
        case .sport:
            print("Спортивный режим!")
        }
    }
}

extension sportCar: CustomStringConvertible {
    var description : String {
        return "Модель авто: \(model). Год выпуска: \(release). Состояние двигателя: \(engineCar). Режим авто: \(modeCar). Максимальная скорость: \(maxSpeed)"
    }
}

var bmw = sportCar(model: "X5", release: 2019, colorCar: .black, engineCar: .start, windowsCar: .close, modeCar: .comfort, maxSpeed: 330)
bmw.engineState(state: .start)
bmw.windowsState(state: .open)
bmw.modeState(state: .sport)
print(bmw)


class tunkCar: car {
    var model: String = ""
    var release: Int = 0
    var colorCar: UIColor
    var windowsCar: windows
    var engineCar: engine
    var trailerCar: trailer
    init(model: String, release: Int, colorCar: UIColor, engineCar: engine, windowsCar: windows, trailerCar: trailer) {
        self.model = model
        self.release = release
        self.colorCar = colorCar
        self.engineCar = engineCar
        self.windowsCar = windowsCar
        self.trailerCar = trailerCar
    }
    func trailerState(state: trailer) {
        switch state {
        case .off:
            print("Прицеп отстутствует!")
        case .on:
            print("Прицеп на месте!")
        }
    }
}

extension tunkCar: CustomStringConvertible {
    var description : String {
        return "Модель авто: \(model). Год выпуска: \(release). Состояние двигателя: \(engineCar). Состояние прицепа: \(trailerCar)"
    }
}

var volvo = tunkCar(model: "X1", release: 2020, colorCar: .darkGray, engineCar: .stop, windowsCar: .close, trailerCar: .off)
volvo.trailerState(state: .on)
volvo.engineState(state: .start)
print(volvo)
