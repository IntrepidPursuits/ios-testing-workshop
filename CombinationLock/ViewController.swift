//
//  ViewController.swift
//  CombinationLock
//
//  Created by Colin Brash on 6/15/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let combination = "123"
    private var enteredCombination = ""

    private let lockedColor = UIColor.redColor()
    private let lockedText = "LOCKED"
    
    private let unlockedColor = UIColor.greenColor()
    private let unlockedText = "UNLOCKED"

    @IBOutlet weak var lockStatusIndicatorLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLockState()
    }
    
    @IBAction func digitButton1Tapped(digitButton: UIButton) {
        updateEnteredCombination(String(1))
        updateLockState()
    }
    
    @IBAction func digitButton2Tapped(digitButton: UIButton) {
        updateEnteredCombination(String(2))
        updateLockState()
    }
    
    @IBAction func digitButton3Tapped(digitButton: UIButton) {
        updateEnteredCombination(String(3))
        updateLockState()
    }
    
    private func updateEnteredCombination(nextDigitString: String) {
        let newCombination = enteredCombination + nextDigitString
        if combination.hasPrefix(newCombination) {
            enteredCombination = newCombination
        } else {
            enteredCombination = nextDigitString
        }
    }
    
    private func updateLockState() {
        if enteredCombination == combination {
            lockStatusIndicatorLabel.backgroundColor = unlockedColor
            lockStatusIndicatorLabel.text = unlockedText
        } else {
            lockStatusIndicatorLabel.backgroundColor = lockedColor
            lockStatusIndicatorLabel.text = lockedText
        }
    }

}
