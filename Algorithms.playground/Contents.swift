import Foundation

let strArray: [String] = ["Bob", "Jacob", "Hugo", "Jack"]

func transform(arr: [String]) -> [String : String] {
    
    let lock = NSLock()
    var dict = [String : String]()
    
    arr.forEach {
        lock.lock()
            dict[$0.description] = $0.description
                    lock.unlock() }
    return dict
}

let readyDict = transform(arr: strArray)

func abstract(name: String) -> String {
    let readyDict = transform(arr: strArray)
    guard let name = readyDict[name] else { return "Resourse hav't this name" }
    return name
}

print(abstract(name: "Paul"))

