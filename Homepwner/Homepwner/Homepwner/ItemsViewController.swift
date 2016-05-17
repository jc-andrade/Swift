//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Julio Andrade on 5/16/16.
//  Copyright © 2016 Julio Andrade. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    // Add a property for an itemStore
    var itemStore: ItemStore!
    
    // Implement tableView(_:numberOfRowsInSection:)
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    // Section 9 - UITableViews, page 273
}