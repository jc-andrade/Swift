// This file goes hand-in-hand with MapView Controller

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        // create a map view programmatically and not through interface builder
        mapView = MKMapView()
        
        // Set it as *the* view of this view controller
        view = mapView
        
        // segmented control allows the user to choose between a discrete set of options
        let segmentedControl
            = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor
            = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        // fix with auto resizing masks
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
    }
    
    override func viewDidLoad() {
        // Which should we use? override viewDidLoad() if config only needs to be done once during the run of app
        // override viewWillAppear(_:) if you need the configuration to be done each time the view controller's view appears on screen
        
        // Always call the super implementation of viewDidLoad 
        super.viewDidLoad()
        print("MapViewController loaded its view")
    }
}