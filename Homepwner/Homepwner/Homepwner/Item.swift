// Creating the Item class

import UIKit

class Item: NSObject { // Item inherits from NSOBject. NSObject is the base clas that most Objective-C classes inherit from
    var name: String
    var valueInDollars: Int
    var serialNumber: String? // Optional string because an item may not have a serial number.
    let dateCreated: NSDate
    
    // Implement a designated initializer (default constructor in C++)
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = NSDate()
        
        super.init()
        }
    
    // Add a convenience initializer (optional -- think of it as helpers. Calls another initializer on same class.
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["BEar", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count)) // Returns a random value between 0 and value pass in as argument
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = NSUUID().UUIDString.componentsSeparatedByString("-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        }
        else {
            self.init(name:"", serialNumber: nil, valueInDollars: 0)
        }
    }
}