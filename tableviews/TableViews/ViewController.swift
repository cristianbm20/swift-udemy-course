//
//  ViewController.swift
//  TableViews
//
//  Created by Cristian Bermudez Martinez on 10/2/24.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var myTableView: UITableView!
  
  private let myCountries = ["Spain", "Japan", "USA", "Norway", "Italy", "Switzerland", "Canada", "UK"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myTableView.dataSource = self
    myTableView.delegate = self
    // myTableView.tableFooterView = UIView() -> No longer needed
    
    myTableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "myCustomCell")
  }
  
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return section == 0 ? "Simple cells" : "Custom cells"
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 50
  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let header = UIView()
    header.backgroundColor = .systemBlue
    header.layer.cornerRadius = 10
    
    let headerText = UILabel()
    headerText.translatesAutoresizingMaskIntoConstraints = false
    headerText.text = self.tableView(tableView, titleForHeaderInSection: section)
    headerText.font = .systemFont(ofSize: 20)
    headerText.textColor = .white
    
    header.addSubview(headerText)
    
    NSLayoutConstraint.activate([
      headerText.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 20),
      headerText.topAnchor.constraint(equalTo: header.topAnchor),
      headerText.bottomAnchor.constraint(equalTo: header.bottomAnchor)
    ])
    
    return header
  }
  
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
    return section == 0 ? "Footer for simple cells " : "Footer for custom cells"
  }
  
  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    return 50
  }
  
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    let footer = UIView()
    
    let footerText = UILabel()
    footerText.translatesAutoresizingMaskIntoConstraints = false
    footerText.text = self.tableView(tableView, titleForFooterInSection: section)
    footerText.textColor = .systemGray
    
    footer.addSubview(footerText)
    
    NSLayoutConstraint.activate([
      footerText.leadingAnchor.constraint(equalTo: footer.leadingAnchor, constant: 20),
      footerText.topAnchor.constraint(equalTo: footer.topAnchor),
      footerText.bottomAnchor.constraint(equalTo: footer.bottomAnchor)
    ])
    
    return footer
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return myCountries.count
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return indexPath.section == 0 ? 50 : UITableView.automaticDimension
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.section == 0 {
      var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
      if cell == nil {
        cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
        cell?.backgroundColor = .systemGray
        cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
        cell?.accessoryType = .disclosureIndicator
      }
      cell!.textLabel?.text = myCountries[indexPath.row]
      return cell!
    }
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as? MyCustomTableViewCell
    
    cell?.myFirstLabel.text = String(indexPath.row + 1)
    cell?.mySecondLabel.text = myCountries[indexPath.row]
    
    if indexPath.row == 2 {
      cell?.mySecondLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    }
    
    return cell!
  }
  
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print(myCountries[indexPath.row])
  }
}
