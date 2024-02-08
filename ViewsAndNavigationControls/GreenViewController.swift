//
//  GreenViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Cristian Bermudez Martinez on 8/2/24.
//

import UIKit

class GreenViewController: UIViewController {
  
  @IBOutlet weak var mySearchBar: UISearchBar!
  @IBOutlet weak var myLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myLabel.isHidden = true
    
    mySearchBar.delegate = self
  }
  
}

extension GreenViewController: UISearchBarDelegate {
  
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    
    mySearchBar.resignFirstResponder()
    
    myLabel.text = searchBar.text
    myLabel.isHidden = false
  }
}
