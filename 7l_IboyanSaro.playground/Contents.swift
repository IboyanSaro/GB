import UIKit

enum shopError: Error {
    case outOfStock
    case noColor
    case noSize
    case noModel
}

struct clothes {
    let size: String
    let color: UIColor
    var count: Int
}

class infoClothes {
    var jeans = [
        "HM": clothes(size: "M", color: .blue, count: 20),
        "gucci": clothes(size: "L", color: .black, count: 15),
        "LV": clothes(size: "S", color: .darkGray, count: 14)
    ]
    
    func errors(clothes: String) throws -> clothes {
        guard let name = jeans[clothes] else {
            throw shopError.noModel
        }
        
        guard name.count > 0 else {
            throw shopError.outOfStock
        }
        return name
    }
}

let jeansPerson = infoClothes()

do {
    try jeansPerson.errors(clothes: "HM")
    print("В наличии!")
} catch shopError.noModel {
    print("В наличии нет этой модели!")
}
