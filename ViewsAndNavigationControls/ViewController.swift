//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Cristian Bermudez Martinez on 8/2/24.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

  @IBOutlet weak var myView: UIView!
  @IBOutlet weak var myImage: UIImageView!
  @IBOutlet weak var myFakeView: UIView!
  @IBOutlet weak var myWebView: WKWebView!
  @IBOutlet weak var myMapView: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "My View Controller"
    
    myWebView.load(URLRequest(url: URL(string: "https://google.es")!))
    
    myMapView.centerCoordinate = CLLocationCoordinate2D(latitude: 37.335555555556, longitude:  -122.00916666667)
  }
  
  @IBAction func myButtonAction(_ sender: Any) {
    myFakeView.isHidden = myFakeView.isHidden ? false : true
  }
  

}
