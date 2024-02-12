//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Cristian Bermudez Martinez on 12/2/24.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var myFirstLabel: UILabel!
  @IBOutlet weak var myImage: UIImageView!
  
  
  override func awakeFromNib() {
    super.awakeFromNib()

    backgroundColor = .lightGray
    
    myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
    myFirstLabel.textColor = .systemBlue
  }
  
}
