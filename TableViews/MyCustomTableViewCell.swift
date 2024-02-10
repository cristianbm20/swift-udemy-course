//
//  MyCustomTableViewCell.swift
//  TableViews
//
//  Created by Cristian Bermudez Martinez on 10/2/24.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
  
  @IBOutlet weak var myFirstLabel: UILabel!
  @IBOutlet weak var mySecondLabel: UILabel!
  @IBOutlet weak var myImage: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
    myFirstLabel.textColor = .systemBlue
    
    mySecondLabel.numberOfLines = 0
    
    backgroundColor = .systemGray
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    print(myFirstLabel.text ?? "")
  }
  
}
