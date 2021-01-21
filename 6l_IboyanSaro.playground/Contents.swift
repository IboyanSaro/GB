import UIKit

struct queuer <Element: Comparable> {
    var object = [Element]()
    
    mutating func add (i: Element) {
        print("Добавлена новая деталь!")
        object.append(i)
    }
    
    mutating func next () -> Element {
        print("Следующая деталь: \(object.first!)")
        return object.removeFirst()
    }
    
    func count (){
        print("Общее количество деталей: \(object.count)")
    }
    
    func sort () -> [Element] {
        print(object.sorted(by: <))
        return object.sorted(by: <)
    }
    
    func filter (i: Element) {
        print("Поиск деталей \(object.filter{$0 == i})")
    }
    
    subscript (index: Int) -> String? {
        return (index < object.count ? object[index] : nil) as? String
        }
}


var items = queuer(object: ["door"])
items.add(i: "engine")
items.add(i: "hood")
items.add(i: "wheel")
items.add(i: "logo")
items.count()
print(items.object)
items.sort()
items.filter(i: "logo")
print(items[1] as Any)
print(items[6] as Any)



