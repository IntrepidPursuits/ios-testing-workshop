//
//  CombinationLock.swift
//  CombinationLock
//
//  Created by Colin Brash on 6/15/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import Foundation

class CombinationLock {
    private (set) var locked = true
    
    private let combination: String
    private var enteredCombination = ""
    
    init(combination: String) {
        precondition(Set(combination.characters).isSubsetOf(Set("123".characters)), "Combinations with character other than '1', '2', or '3' are not supported.")
        precondition(combination.characters.count >= 3, "Combinations with fewer than three digits are not supported")
        self.combination = combination
    }
    
    func enterDigit1() {
        enterDigit(1)
    }
    
    func enterDigit2() {
        enterDigit(2)
    }
    
    func enterDigit3() {
        enterDigit(3)
    }
    
    private func enterDigit(digit: Int) {
        updateEnteredCombination(String(digit))
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
            unlock()
        } else {
            lock()
        }
    }
    
    private func lock() {
        locked = true
    }
    
    private func unlock() {
        locked = false
    }
}
