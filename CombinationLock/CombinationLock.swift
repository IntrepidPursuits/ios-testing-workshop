//
//  CombinationLock.swift
//  CombinationLock
//
//  Created by Colin Brash on 9/13/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import Foundation

class CombinationLock {
    
    private let combination = "123"
    private var enteredCombination = ""

    private(set) var locked = true
    
    func updateEnteredCombination(_ nextDigitString: String) {
        let newCombination = enteredCombination + nextDigitString
        if combination.hasPrefix(newCombination) {
            enteredCombination = newCombination
        } else {
            enteredCombination = nextDigitString
        }
        updateLockState()
    }

    private func updateLockState() {
        locked = (enteredCombination != combination)
    }

}
