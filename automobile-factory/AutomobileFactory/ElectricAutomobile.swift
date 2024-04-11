//
//  ElectricAutomobile.swift
//  AutomobileFactory
//
//  Created by Cristian Bermudez Martinez on 12/2/24.
//

import Foundation

class ElectricAutomobile: Automobile {
  var batteryPercentage = 100
  
  override init() {
    super.init()
    self.color = "White"
    self.price = 10000
  }
  
  func chargeBattery() -> String {
    batteryPercentage = 100
    return "Battery charged"
  }
}
