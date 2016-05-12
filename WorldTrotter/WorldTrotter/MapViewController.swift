// This file goes hand-in-hand with MapView Controller

import UIKit

class MapViewController: UIViewController {
    override func viewDidLoad() {
        // Which should we use? override viewDidLoad() if config only needs to be done once during the run of app
        // override viewWillAppear(_:) if you need the configuration to be done each time the view controller's view appears on screen
        
        // Always call the super implementation of viewDidLoad 
        super.viewDidLoad()
        print("MapViewController loaded its view")
    }
}