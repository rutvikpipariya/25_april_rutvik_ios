//
//  MapViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 19/01/24.
//

import UIKit
import MapKit

class MapViewController: UIViewController, UISearchBarDelegate {

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    //===========================================
    //Variables
    //===========================================
    
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    var searchResults: [MKMapItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupMap()
        searchBar.delegate = self
        let locationCoordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegion(center: locationCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        mapView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locationCoordinate
        mapView.addAnnotation(annotation)
    }

    //===========================================
    //Button Actions
    //===========================================
    
    @IBAction func segment(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex==0
        {
            mapView.mapType = .standard
        }
        else if sender.selectedSegmentIndex==1
        {
            mapView.mapType = .satellite
        }
        else
        {
            mapView.mapType = .hybrid
        }
    }
    
    //===========================================
    //Functions
    //===========================================
    
    func setupMap() {
            let locationCoordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            let region = MKCoordinateRegion(center: locationCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            mapView.setRegion(region, animated: true)
            let annotation = MKPointAnnotation()
            annotation.coordinate = locationCoordinate
            mapView.addAnnotation(annotation)
        }
        
        func updateMap(with mapItems: [MKMapItem]) {
            mapView.removeAnnotations(mapView.annotations)
            for item in mapItems {
                let annotation = MKPointAnnotation()
                annotation.coordinate = item.placemark.coordinate
                annotation.title = item.name
                mapView.addAnnotation(annotation)
            }
        }
    
}

//===========================================
//Searching Country
//===========================================

extension MapViewController {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("Search button clicked")
        searchBar.resignFirstResponder()

        let localSearchRequest = MKLocalSearch.Request()
        localSearchRequest.naturalLanguageQuery = searchBar.text

        let localSearch = MKLocalSearch(request: localSearchRequest)
        localSearch.start { [weak self] (response, error) in
            guard let self = self else { return }

            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }

            if let mapItems = response?.mapItems {
                self.searchResults = mapItems
                self.updateMap(with: mapItems)
            }
        }

    }
}
