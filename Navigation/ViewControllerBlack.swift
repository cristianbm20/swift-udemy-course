//
//  ViewControllerBlack.swift
//  Navigation
//
//  Created by Cristian Bermudez Martinez on 9/2/24.
//

import UIKit

class ViewControllerBlack: UIViewController {
  
  var destinyTitle: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let titleToSet = destinyTitle {
      self.title = titleToSet
    }
    
  }
  
}
