//
//  CreateConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Cristian Bermudez Martinez on 14/2/24.
//

import UIKit

class CreateConstraintsViewController: UIViewController {
  
  @IBOutlet weak var yellowView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Size constraints with code
    
    yellowView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    yellowView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    
    // Position constraints with code
    
    yellowView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addConstraint(NSLayoutConstraint(item: yellowView!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
    
    yellowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
    
  }
  
}
