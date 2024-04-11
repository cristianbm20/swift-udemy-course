//
//  ViewController.swift
//  CollectionViews
//
//  Created by Cristian Bermudez Martinez on 12/2/24.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var myCollectionView: UICollectionView!
  
  private let myCountries = ["Spain", "Japan", "USA", "Norway", "Italy", "Switzerland", "Canada", "UK"]
  
  private let myCellWidth = UIScreen.main.bounds.width / 2
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myCollectionView.dataSource = self
    myCollectionView.delegate = self
    
    myCollectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
  }


}

// MARK: - UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 2
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return myCountries.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as? MyCustomCollectionViewCell
    
    cell!.myFirstLabel.text = myCountries[indexPath.row]
    
    return cell!
  }
  
}

// MARK: - UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print("\(indexPath.section) -> \(indexPath.row) \(myCountries[indexPath.row])")
  }
  
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return indexPath.section == 0 ? CGSize(width: myCellWidth, height: myCellWidth) : CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
  }
  
}
