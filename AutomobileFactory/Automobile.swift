//
//  Automobile.swift
//  AutomobileFactory
//
//  Created by Cristian Bermudez Martinez on 12/2/24.
//

import Foundation

class Automobile {
  var color = ""
  var wheels = 4
  var price = 0
  var isOn = false
  
  func turnOn() {
    isOn = true
  }
  
  func turnOff() {
    isOn = false
  }
  
  func accelerate() -> String {
    return "Accelerate..."
  }
}
