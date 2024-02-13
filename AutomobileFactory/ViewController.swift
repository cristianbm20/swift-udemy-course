//
//  ViewController.swift
//  AutomobileFactory
//
//  Created by Cristian Bermudez Martinez on 12/2/24.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  var automobileType = ""
  
  @IBAction func createAutomobile(_ sender: Any) {
    automobileType = "combustion"
    performSegue(withIdentifier: "segueSecondScreen", sender: self)
  }
  
  @IBAction func createElectricAutomobile(_ sender: Any) {
    automobileType = "electric"
    performSegue(withIdentifier: "segueSecondScreen", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "segueSecondScreen" && !automobileType.isEmpty {
      if let destiny = segue.destination as? ViewControllerSecondScreen {
        destiny.automobileType = automobileType
      }
    }
  }
  
}
