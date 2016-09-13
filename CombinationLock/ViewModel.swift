//
//  ViewModel.swift
//  CombinationLock
//
//  Created by Colin Brash on 9/13/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit

class ViewModel {
    
    let lock = CombinationLock()
    
    private let lockedColor = UIColor.red
    private let lockedText = "LOCKED"
    
    private let unlockedColor = UIColor.green
    private let unlockedText = "UNLOCKED"

    var lockBackgroundColor: UIColor {
        return lock.locked ? lockedColor : unlockedColor
    }
    
    var lockText: String {
        return lock.locked ? lockedText : unlockedText
    }
    
    func digit1Entered() {
        lock.updateEnteredCombination(String(1))
    }
    
    func digit2Entered() {
        lock.updateEnteredCombination(String(2))
    }
    
    func digit3Entered() {
        lock.updateEnteredCombination(String(3))
    }
    
}
