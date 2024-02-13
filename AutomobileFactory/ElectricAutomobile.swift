//
//  ElectricAutomobile.swift
//  AutomobileFactory
//
//  Created by Cristian Bermudez Martinez on 12/2/24.
//

import Foundation

class ElectricAutomobile: Automobile {
  var batteryPercentage = 100
  
  func chargeBattery() -> String {
    batteryPercentage = 100
    return "Battery charged"
  }
}
