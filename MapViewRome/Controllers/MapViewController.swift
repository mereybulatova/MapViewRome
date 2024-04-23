//
//  MapViewController.swift
//  MapViewKZ
//
//  Created by Мерей Булатова on 24.04.2024.
//

import UIKit
import MapKit
import Foundation

class MapViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate, MKMapViewDelegate{
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var detailMapView: MKMapView!
    
    var mapLocations = Sights()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1.
        detailMapView.delegate = self
        
        // 2.
        let sourceLocation = CLLocationCoordinate2D(latitude: 41.9005, longitude: 12.5012)
        let destinationLocation = CLLocationCoordinate2D(latitude: mapLocations.latitude, longitude: mapLocations.longitude)
        
        // 3.
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        let destinationPlacemark = MKPlacemark(coordinate: destinationLocation, addressDictionary: nil)
        
        // 4.
        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
        
        // 5.
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "You are here"
        
        if let location = sourcePlacemark.location {
            sourceAnnotation.coordinate = location.coordinate
        }
        
        
        let destinationAnnotation = MKPointAnnotation()
        destinationAnnotation.title = mapLocations.place
        
        if let location = destinationPlacemark.location {
            destinationAnnotation.coordinate = location.coordinate
        }
        
        // 6.
        self.detailMapView.showAnnotations([sourceAnnotation,destinationAnnotation], animated: true )
        let source = CLLocation(latitude: sourceLocation.latitude, longitude: sourceLocation.longitude)
        
        let destination = CLLocation(latitude: destinationLocation.latitude, longitude: destinationLocation.longitude)
        
        let kilometers:CLLocationDistance = destination.distance(from: source)
        distanceLabel.text = String(format: "Distance: %.2f km", kilometers/1000)
        
        // 7.
        let directionRequest = MKDirections.Request()
        directionRequest.source = sourceMapItem
        directionRequest.destination = destinationMapItem
        directionRequest.transportType = .walking
        
        // Calculate the direction
        let directions = MKDirections(request: directionRequest)
        
        // 8.
        directions.calculate {
            (response, error) -> Void in
            
            guard let response = response else {
                if let error = error {
                    print("Error: \(error)")
                }
                
                return
            }
            
            let route = response.routes[0]
            self.detailMapView.addOverlay((route.polyline), level: MKOverlayLevel.aboveRoads)
            
            let rect = route.polyline.boundingMapRect
            self.detailMapView.setRegion(MKCoordinateRegion(rect), animated: true)
        }
    }
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.blue
        renderer.lineWidth = 4.0
        
        return renderer
    }
}
