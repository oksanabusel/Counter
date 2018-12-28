//
//  CounterViewController.swift
//  Counter
//
//  Created by Cat on 11/26/18.
//  Copyright © 2018 Cat. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController {
  
  @IBOutlet weak var plusButton: UIButton!
  @IBOutlet weak var minusButton: UIButton!
  @IBOutlet weak var healthPointsLabel: UILabel!
  private var counter: Int = 50
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func tapRefreshButton(_ sender: Any) {
    counter = 50
    healthPointsLabel.text = String(counter)
  }
  
  @IBAction func tapAddButton(_ sender: Any) {
    if counter < 999 {
      counter += 1
      healthPointsLabel.text = String(counter)
    }
  }
  
  @IBAction func tapMinusButton(_ sender: Any) {
    if counter > 0 {
      counter -= 1
      healthPointsLabel.text = String(counter)
    }
  }
  
  func longPressAction() {
    let longPressGestue = UILongPressGestureRecognizer(target: self, action: "longPressAction")
    longPressGestue.minimumPressDuration = 0.5
    plusButton.addGestureRecognizer(longPressGestue)
    minusButton.addGestureRecognizer(longPressGestue)
  }
  
  @IBAction func tapAddTenPointsButton(_ sender: Any) {
    if counter < 990 {
      counter += 10
      healthPointsLabel.text = String(counter)
    }
  }
  
  @IBAction func tapAddFivePointsButton(_ sender: Any) {
    if counter < 994 {
      counter += 5
      healthPointsLabel.text = String(counter)
    }
  }
  
  @IBAction func tapMinusTenPointsButton(_ sender: Any) {
    if counter >= 10 {
      counter -= 10
      healthPointsLabel.text = String(counter)
    }
  }
  
  @IBAction func tapMinusFivePointsButton(_ sender: Any) {
    if counter >= 5 {
      counter -= 5
      healthPointsLabel.text = String(counter)
    }
  }
  
}
