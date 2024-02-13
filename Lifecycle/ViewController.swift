//
//  ViewController.swift
//  Lifecycle
//
//  Created by Cristian Bermudez Martinez on 13/2/24.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    /*
     This method is invoked once when the view is created, making
     it the right time for UI updates and one-actions like initializing
     databases or connecting to servers, as the view and its components
     are fully loaded in memory
     */
    print("In VC1 --> \(#function)")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    /*
     This method is called every time before the view appears on the screen,
     making it suitable for code that needs to run each time the view is displayed.
     It's not recommended for one-time-only code. It's typically used to refresh UI
     elements that may have changed while the user was navigating other views
     */
    print("In VC1 --> \(#function)")
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    /*
     This method is invoked after the view is displayed, making it ideal for 
     initiating CPU-intensive processes like starting audio, videos, animations,
     or data retrieval from a server, which could disrupt the view's rendering
     if started earlier
     */
    print("In VC1 --> \(#function)")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    /*
     This method is called before the view is removed from the screen.
     Though not frequently used, it can be utilized for initiating cleanup
     or conducting checks
     */
    print("In VC1 --> \(#function)")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    /*
     This method is invoked when the view is removed from the screen, making
     it suitable for halting processes like music, server calls, or external
     device connections that are no longer needed once the view is not visible
     */
    print("In VC1 --> \(#function)")
  }

}

