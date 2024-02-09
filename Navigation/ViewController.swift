//
//  ViewController.swift
//  Navigation
//
//  Created by Cristian Bermudez Martinez on 9/2/24.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  var bgcolor = ""
  
  @IBAction func buttonBlack(_ sender: Any) {
    bgcolor = "black"
    performSegue(withIdentifier: "vcColor", sender: self)
  }
  
  @IBAction func buttonGreen(_ sender: Any) {
    bgcolor = "green"
    performSegue(withIdentifier: "vcColor", sender: self)
  }
  
  @IBAction func buttonPink(_ sender: Any) {
    bgcolor = "pink"
    performSegue(withIdentifier: "vcColor", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "vcColor" && !bgcolor.isEmpty {
      if let destiny = segue.destination as? ViewControllerColor {
        destiny.destinyTitle = bgcolor
        destiny.destinyColor = bgcolor
      }
    }
  }
  
}
