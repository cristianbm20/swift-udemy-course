//
//  ViewControllerSecondScreen.swift
//  AutomobileFactory
//
//  Created by Cristian Bermudez Martinez on 12/2/24.
//

import UIKit

class ViewControllerSecondScreen: UIViewController {
  
  @IBOutlet weak var automobileImage: UIImageView!
  @IBOutlet weak var informationLabel: UILabel!
  
  var automobileType: String?
  var newAutomobile: Automobile?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let typeToSet = automobileType {
      switch typeToSet {
      case "combustion":
        newAutomobile = Automobile()
        informationLabel.text = "A new simple automobile has been created"
      case "electric":
        newAutomobile = ElectricAutomobile()
        informationLabel.text = "A new electric automobile has been created"
      default:
        print("Error")
      }
    }
    
  }
  
  @IBAction func showInfo(_ sender: Any) {
    if let newAuto = newAutomobile {
      var info = "Color: \(newAuto.color)\nNumber of wheels: \(newAuto.wheels)\nPrice: \(newAuto.price)"
      
      if let electricAuto = newAuto as? ElectricAutomobile {
        info += "\nBattery Percentage: \(electricAuto.batteryPercentage)"
      }
      
      self.informationLabel.text = info
    }
    
  }
  
  @IBAction func turnOnAutomobile(_ sender: Any) {
    if let newAuto = newAutomobile {
      if let electricAuto = newAuto as? ElectricAutomobile {
        if electricAuto.batteryPercentage <= 0 {
          self.informationLabel.text = "Battery is empty. Unable to start the electric car"
          return
        }
      }
      
      if newAuto.isOn {
        self.informationLabel.text = "The car is already on"
      } else {
        if let electricAuto = newAuto as? ElectricAutomobile {
          electricAuto.batteryPercentage -= 10
          if electricAuto.batteryPercentage < 0 { electricAuto.batteryPercentage = 0 }
        }
        
        self.informationLabel.text = "Turn on the car..."
        newAuto.turnOn()
      }
    }
  }
  
  @IBAction func turnOffAutomobile(_ sender: Any) {
    if let newAuto = newAutomobile {
      self.informationLabel.text = newAuto.isOn ? "Turn off the car..." : "The car is already off"
      newAuto.turnOff()
    }
  }
  
  @IBAction func accelerateAutomobile(_ sender: Any) {
    if let newAuto = newAutomobile {
      if newAuto.isOn {
        if let electricAuto = newAuto as? ElectricAutomobile {
          if electricAuto.batteryPercentage <= 0 {
            self.informationLabel.text = "Battery charge is not enough to accelerate"
            return
          }
          electricAuto.batteryPercentage -= 20
          if electricAuto.batteryPercentage < 0 { electricAuto.batteryPercentage = 0 }
        }
        
        self.informationLabel.text = newAuto.accelerate()
      } else {
        self.informationLabel.text = "The car is not on. Please, turn it on to accelerate"
      }
    }
    
  }
  
}
