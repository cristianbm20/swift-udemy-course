//
//  ViewControllerColor.swift
//  Navigation
//
//  Created by Cristian Bermudez Martinez on 9/2/24.
//

import UIKit

class ViewControllerColor: UIViewController {
  
  var destinyTitle: String?
  var destinyColor: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let titleToSet = destinyTitle {
      self.title = titleToSet.capitalized
    }
    
    if let colorToSet = destinyColor {
      switch colorToSet {
      case "black":
        self.view.backgroundColor = UIColor.black
      case "green":
        self.view.backgroundColor = UIColor.systemGreen
      case "pink":
        self.view.backgroundColor = UIColor.systemPink
      default:
        self.view.backgroundColor = UIColor.white
      }
    }
    
  }
  
}
