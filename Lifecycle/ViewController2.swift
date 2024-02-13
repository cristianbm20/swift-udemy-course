//
//  ViewController2.swift
//  Lifecycle
//
//  Created by Cristian Bermudez Martinez on 13/2/24.
//

import UIKit

class ViewController2: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    print("In VC2 --> \(#function)")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("In VC2 --> \(#function)")
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("In VC2 --> \(#function)")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("In VC2 --> \(#function)")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("In VC2 --> \(#function)")
  }
    


}
