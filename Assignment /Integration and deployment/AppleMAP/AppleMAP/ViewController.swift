//
//  ViewController.swift
//  AppleMAP
//
//  Created by Rutvik Pipaliya on 13/09/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    var locationmngr=CLLocationManager()
    @IBOutlet weak var mymap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationmngr.requestAlwaysAuthorization()
        
    }


    @IBAction func map_type(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex==0
        {
            mymap.mapType = .standard
        }
        else if sender.selectedSegmentIndex==1
        {
            mymap.mapType = .satellite
        }
        else
        {
            mymap.mapType = .hybrid
        }
    }
}

