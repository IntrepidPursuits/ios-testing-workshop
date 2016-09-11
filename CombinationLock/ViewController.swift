//
//  ViewController.swift
//  CombinationLock
//
//  Created by Colin Brash on 6/15/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lockStatusIndicatorLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var viewModel = ViewModel(lock: CombinationLock(combination: "123"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLockStatus()
    }
    
    // MARK: -
    
    @IBAction func digitButton1Tapped(digitButton: UIButton) {
        viewModel.digit1Tapped()
        updateLockStatus()
    }
    
    @IBAction func digitButton2Tapped(digitButton: UIButton) {
        viewModel.digit2Tapped()
        updateLockStatus()
    }
    
    @IBAction func digitButton3Tapped(digitButton: UIButton) {
        viewModel.digit3Tapped()
        updateLockStatus()
    }
    
    // MARK: -
    
    func updateLockStatus() {
        lockStatusIndicatorLabel.backgroundColor = viewModel.lockStatusIndicatorBackgroundColor
        lockStatusIndicatorLabel.text = viewModel.lockStatusIndicatorText
    }
    
}
