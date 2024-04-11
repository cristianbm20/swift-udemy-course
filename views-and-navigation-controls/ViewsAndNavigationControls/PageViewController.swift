//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Cristian Bermudez Martinez on 8/2/24.
//

import UIKit

class PageViewController: UIPageViewController {
  
  private var myControllers: [UIViewController] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let myGreenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcGreen")
    let myPinkVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcPink")
    
    myControllers.append(myGreenVC)
    myControllers.append(myPinkVC)
    
    setViewControllers([myGreenVC], direction: .forward, animated: true, completion: nil)
    
    dataSource = self
  }
}

extension PageViewController: UIPageViewControllerDataSource {
  
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    
    let index = myControllers.firstIndex(of: viewController)
    
    return index == 0 ? myControllers.last : myControllers.first
  }
  
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    
    let index = myControllers.firstIndex(of: viewController)
    
    return index == 0 ? myControllers.last : myControllers.first
  }
}
