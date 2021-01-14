import UIKit

enum engine {
    case start, stop
}

enum windows {
    case open, close
}

enum modeCar {
    case comfort, speed
}
enum trunk {
    case full, null
}

enum trailer {
    case on, off
}

class car {
    var model: String = ""
    var release: Int = 0
    let colorCar: UIColor
    var engineCar: engine
    var windowsCar: windows
    init(model: String, release: Int, colorCar: UIColor, engineCar: engine, windowsCar: windows) {
        self.model = model
        self.release = release
        self.colorCar = colorCar
        self.engineCar = engineCar
        self.windowsCar = windowsCar
    }
}

class sportCar: car {
    var mode: modeCar
    var maxSpeed: Int
    init(model: String, release: Int, colorCar: UIColor, engineCar: engine, windowsCar: windows, mode: modeCar, maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        self.mode = mode
        super.init(model: model, release: release, colorCar: colorCar, engineCar: engineCar, windowsCar: windowsCar)
    }
    func modeComfort () {
        mode = .comfort
        print("Включен комфортный режим!")
    }
    func modeSpeed () {
        mode = .speed
        print("Включен спорт режим!")
    }
    func onEngine () {
        engineCar = .start
        print("Двигатель включен!")
    }
    func offEngine() {
        engineCar = .stop
        print("Двигатель выключен")
    }
    func infoCar() {
        print("Модель авто: \(model). Год выпуска \(release). Максимальная скорость: \(maxSpeed) Режим машины: \(mode)!")
    }
}


var  bmw = sportCar.init(model: "m4", release: 2020, colorCar: .gray, engineCar: .stop, windowsCar: .close, mode: .comfort, maxSpeed: 256)
bmw.infoCar()
bmw.modeSpeed()
bmw.onEngine()


class trunkCar: car {
    var trailerCar: trailer
    var trunk1: trunk
    init(model: String, release: Int, colorCar: UIColor, engineCar: engine, windowsCar: windows, trailerCar: trailer, trunk1: trunk) {
        self.trailerCar = trailerCar
        self.trunk1 = trunk1
        super.init(model: model, release: release, colorCar: colorCar, engineCar: engineCar, windowsCar: windowsCar)
    }
    func onTrailer () {
        trailerCar = .on
        print("Прицеп на месте!")
    }
    func offTrailer () {
        trailerCar = .off
        print("Прицеп отцеплен!")
    }
    func onEngine () {
        engineCar = .start
        print("Двигатель включен!")
    }
    func offEngine() {
        engineCar = .stop
        print("Двигатель выключен")
    }
    func infoCar() {
        print("Модель авто: \(model). Год выпуска \(release). Состояние прицепа: \(trailerCar)")
    }
}


var volvo = trunkCar(model: "XC", release: 2019, colorCar: .orange, engineCar: .stop, windowsCar: .close, trailerCar: .off, trunk1: .full)
volvo.infoCar()
volvo.onTrailer()
volvo.onEngine()






