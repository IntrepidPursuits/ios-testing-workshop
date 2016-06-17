//
//  ViewController.swift
//  CombinationLock
//
//  Created by Colin Brash on 6/15/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let lockedColor = UIColor.redColor()
    private let lockedText = "LOCKED"
    
    private let unlockedColor = UIColor.greenColor()
    private let unlockedText = "UNLOCKED"

    @IBOutlet weak var lockStatusIndicatorLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    private let lock = CombinationLock(combination: "123")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLockStatus()
    }
    
    func updateLockStatus() {
        if lock.locked {
            lockStatusIndicatorLabel.backgroundColor = lockedColor
            lockStatusIndicatorLabel.text = lockedText
        } else {
            lockStatusIndicatorLabel.backgroundColor = unlockedColor
            lockStatusIndicatorLabel.text = unlockedText
        }
    }
    
    @IBAction func digitButton1Tapped(digitButton: UIButton) {
        lock.enterDigit1()
        updateLockStatus()
    }
    
    @IBAction func digitButton2Tapped(digitButton: UIButton) {
        lock.enterDigit2()
        updateLockStatus()
    }
    
    @IBAction func digitButton3Tapped(digitButton: UIButton) {
        lock.enterDigit3()
        updateLockStatus()
    }
}
