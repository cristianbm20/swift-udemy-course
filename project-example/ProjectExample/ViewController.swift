//
//  ViewController.swift
//  ProjectExample
//
//  Created by Cristian Bermudez Martinez on 20/1/24.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    label.text = "Text changed after loading the view"
  }
  
  @IBAction func changeText(_ sender: Any) {
    label.text = "Text changed from button"
  }
  
}

