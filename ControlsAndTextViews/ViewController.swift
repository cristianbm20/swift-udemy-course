//
//  ViewController.swift
//  ControlsAndTextViews
//
//  Created by Cristian Bermudez Martinez on 6/2/24.
//

import UIKit

class ViewController: UIViewController {
  
  // Outlets
  
  @IBOutlet weak var myButton: UIButton!
  @IBOutlet weak var myPickerView: UIPickerView!
  @IBOutlet weak var myPageControl: UIPageControl!
  @IBOutlet weak var mySegmentedControl: UISegmentedControl!
  @IBOutlet weak var mySlider: UISlider!
  @IBOutlet weak var myStepper: UIStepper!
  @IBOutlet weak var mySwitch: UISwitch!
  @IBOutlet weak var myProgressView: UIProgressView!
  @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
  @IBOutlet weak var myStepperLabel: UILabel!
  @IBOutlet weak var mySwitchLabel: UILabel!
  @IBOutlet weak var myTextField: UITextField!
  @IBOutlet weak var myTextView: UITextView!
  
  // Variables
  
  private let myPickerViewValues = ["One", "Two", "Three", "Four", "Five"]
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    // Buttons
    
    myButton.setTitle("My Button", for: .normal)
    myButton.backgroundColor = .systemBlue
    myButton.setTitleColor(.white, for: .normal)
    myButton.layer.cornerRadius = 10
    
    // Pickers
    
    myPickerView.backgroundColor = .systemGray
    myPickerView.dataSource = self
    myPickerView.delegate = self
    myPickerView.isHidden = true
    
    // PageControls
    
    myPageControl.numberOfPages = myPickerViewValues.count
    myPageControl.currentPageIndicatorTintColor = .systemBlue
    myPageControl.pageIndicatorTintColor = .systemGray
    
    // Segmented Controls
    
    mySegmentedControl.removeAllSegments()
    
    for (index, value) in myPickerViewValues.enumerated() {
      mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
    }
    
    // Sliders
    
    mySlider.minimumTrackTintColor = .systemBlue
    mySlider.minimumValue = 1
    mySlider.maximumValue = Float(myPickerViewValues.count)
    mySlider.value = 1
    
    // Steppers
    
    myStepper.minimumValue = 1
    myStepper.maximumValue = Double(myPickerViewValues.count)
    
    //Switch
    
    mySwitch.onTintColor = .systemBlue
    mySwitch.isOn = false
    
    // Progress Indicators
    
    myProgressView.progress = 0
    
    // Activity Indicators
    
    myActivityIndicator.color = .systemBlue
    myActivityIndicator.startAnimating()
    myActivityIndicator.hidesWhenStopped = true
    
    // Labels
    
    myStepperLabel.textColor = .darkGray
    myStepperLabel.font = UIFont.boldSystemFont(ofSize: 24)
    myStepperLabel.text = "1"
    mySwitchLabel.text = "Off"
    
    // TextFields
    
    myTextField.textColor = .systemBlue
    myTextField.placeholder = "Write something..."
    myTextField.delegate = self
    
    // TextViews
    
    myTextView.textColor = .systemBlue
    myTextView.delegate = self
    
  }
  
  // Actions
  
  @IBAction func myButtonAction(_ sender: Any) {
    
    myButton.backgroundColor = (myButton.backgroundColor == .systemBlue)
    ? .systemGreen
    : .systemBlue
    
    myTextView.resignFirstResponder()
  }
  
  @IBAction func myPageControlAction(_ sender: Any) {
    
    myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
    
    let myStr = myPickerViewValues[myPageControl.currentPage]
    myButton.setTitle(myStr, for: .normal)
    
    mySegmentedControl.selectedSegmentIndex = myPageControl.currentPage
    
    mySlider.setValue(Float(mySegmentedControl.selectedSegmentIndex + 1), animated: true)
    
    myStepper.value = Double(mySegmentedControl.selectedSegmentIndex + 1)
    
    myProgressView.progress = Float(myStepper.value / 5)
    
    myStepperLabel.text = "\(Int(myStepper.value))"
  }
  
  @IBAction func mySegmentControlAction(_ sender: Any) {
    
    myPickerView.selectRow(mySegmentedControl.selectedSegmentIndex, inComponent: 0, animated: true)
    
    let myStr = myPickerViewValues[mySegmentedControl.selectedSegmentIndex]
    myButton.setTitle(myStr, for: .normal)
    
    myPageControl.currentPage = mySegmentedControl.selectedSegmentIndex
    
    mySlider.setValue(Float(mySegmentedControl.selectedSegmentIndex + 1), animated: true)
    
    myStepper.value = Double(mySegmentedControl.selectedSegmentIndex + 1)
    
    myProgressView.progress = Float(myStepper.value / 5)
    
    myStepperLabel.text = "\(Int(myStepper.value))"
  }
  
  @IBAction func mySliderAction(_ sender: Any) {
    
    var progress: Float = 0
    
    switch mySlider.value {
    case 1..<2:
      mySegmentedControl.selectedSegmentIndex = 0
      myPageControl.currentPage = 0
      myPickerView.selectRow(0, inComponent: 0, animated: true)
      myButton.setTitle(myPickerViewValues[mySegmentedControl.selectedSegmentIndex], for: .normal)
      myStepper.value = 1
      progress = 0.2
    case 2..<3:
      mySegmentedControl.selectedSegmentIndex = 1
      myPageControl.currentPage = 1
      myPickerView.selectRow(1, inComponent: 0, animated: true)
      myButton.setTitle(myPickerViewValues[mySegmentedControl.selectedSegmentIndex], for: .normal)
      myStepper.value = 2
      progress = 0.4
    case 3..<4:
      mySegmentedControl.selectedSegmentIndex = 2
      myPageControl.currentPage = 2
      myPickerView.selectRow(2, inComponent: 0, animated: true)
      myButton.setTitle(myPickerViewValues[mySegmentedControl.selectedSegmentIndex], for: .normal)
      myStepper.value = 3
      progress = 0.6
    case 4..<5:
      mySegmentedControl.selectedSegmentIndex = 3
      myPageControl.currentPage = 3
      myPickerView.selectRow(3, inComponent: 0, animated: true)
      myButton.setTitle(myPickerViewValues[mySegmentedControl.selectedSegmentIndex], for: .normal)
      myStepper.value = 4
      progress = 0.8
    default:
      mySegmentedControl.selectedSegmentIndex = 4
      myPageControl.currentPage = 4
      myPickerView.selectRow(4, inComponent: 0, animated: true)
      myButton.setTitle(myPickerViewValues[mySegmentedControl.selectedSegmentIndex], for: .normal)
      myStepper.value = 5
      progress = 1
    }
    
    myProgressView.progress = progress
    myStepperLabel.text = "\(Int(myStepper.value))"
  }
  
  @IBAction func myStepperAction(_ sender: Any) {
    
    let value = myStepper.value
    mySlider.value = Float(value)
    
    myStepperLabel.text = "\(Int(value))"
    
    mySegmentedControl.selectedSegmentIndex = Int(value - 1)
    
    myPageControl.currentPage = Int(value - 1)
    
    myPickerView.selectRow(Int(value - 1), inComponent: 0, animated: true)
    
    myButton.setTitle(myPickerViewValues[mySegmentedControl.selectedSegmentIndex], for: .normal)
    
    myProgressView.progress = Float(value / 5)
  }
  
  @IBAction func mySwitchAction(_ sender: Any) {
    
    if mySwitch.isOn {
      myPickerView.isHidden = false
      myActivityIndicator.stopAnimating()
      mySwitchLabel.text = "On"
    } else {
      myPickerView.isHidden = true
      myActivityIndicator.startAnimating()
      mySwitchLabel.text = "Off"
    }
  }
}

// UIPickerViewDatasource, UIPickerViewDelegate
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    
    return myPickerViewValues.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
    return myPickerViewValues[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
    let myStr = myPickerViewValues[row]
    myButton.setTitle(myStr, for: .normal)
    
    myPageControl.currentPage = row
    
    mySegmentedControl.selectedSegmentIndex = row
    
    mySlider.setValue(Float(mySegmentedControl.selectedSegmentIndex + 1), animated: true)
    
    myStepper.value = Double(row + 1)
    
    myProgressView.progress = Float(myStepper.value / 5)
    
    myStepperLabel.text = "\(Int(myStepper.value))"
  }
}

// UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    if let text = textField.text, !text.isEmpty {
      myButton.setTitle(text, for: .normal)
    }
  }
  
}

// UITextViewDelegate
extension ViewController: UITextViewDelegate {
  
  func textViewDidBeginEditing(_ textView: UITextView) {
    myTextField.isHidden = true
  }
  
  func textViewDidEndEditing(_ textView: UITextView) {
    myTextField.isHidden = false
  }
  
}
