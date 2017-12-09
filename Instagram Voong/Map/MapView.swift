import UIKit
import MapKit
import CoreLocation


class MapView: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate  {
    
    
    var locationManager: CLLocationManager = {
        let lm = CLLocationManager()
        lm.desiredAccuracy = kCLLocationAccuracyBest
        return lm
    }()
    
    let mapView: MKMapView = {
        let map = MKMapView()
        map.showsUserLocation = true
        map.isScrollEnabled = true
        map.isZoomEnabled = true
        return map
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        mapView.delegate = self
        locationManager.delegate = self
        
        
        view.addSubview(mapView)
        mapView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 60, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        
        //Check for Location Services
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
        
        
        zoomToUserLocation()
        
    }
    
    
    fileprivate func zoomToUserLocation() {
        let homeLocation = CLLocation(latitude: 45.518389, longitude: -122.977732)
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(homeLocation.coordinate,
                                                                  200 * 2.0, 200 * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
        
        DispatchQueue.main.async {
            self.locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        
        let location = locations.last as! CLLocation
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        var region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        region.center = mapView.userLocation.coordinate
        mapView.setRegion(region, animated: true)
    }
}
