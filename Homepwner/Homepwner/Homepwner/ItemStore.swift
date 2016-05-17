//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    // Create item to create and return a new Item
    func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
    
}

