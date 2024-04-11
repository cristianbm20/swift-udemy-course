//
//  ModifyConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Cristian Bermudez Martinez on 14/2/24.
//

import UIKit

class ModifyConstraintsViewController: UIViewController {
  
  @IBOutlet weak var heightConstraint: NSLayoutConstraint!
  @IBOutlet weak var topConstraint: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    heightConstraint.constant = 300
    
    topConstraint.constant = 64
    
    
  }
  
}
