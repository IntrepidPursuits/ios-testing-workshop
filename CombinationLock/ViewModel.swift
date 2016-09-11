//
//  ViewModel.swift
//  CombinationLock
//
//  Created by Colin Brash on 9/11/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit

class ViewModel {
    private let lockedColor = UIColor.redColor()
    private let lockedText = "LOCKED"
    
    private let unlockedColor = UIColor.greenColor()
    private let unlockedText = "UNLOCKED"
    
    let lock: CombinationLock
    
    // MARK: -
    
    var lockStatusIndicatorBackgroundColor: UIColor {
        return lock.locked ? lockedColor : unlockedColor
    }
    
    var lockStatusIndicatorText: String {
        return lock.locked ? lockedText : unlockedText
    }
    
    // MARK: -
    
    init(lock: CombinationLock) {
        self.lock = lock
    }
    
    // MARK: - User Actions
    
    func digit1Tapped() {
        lock.enterDigit1()
    }
    
    func digit2Tapped() {
        lock.enterDigit2()
    }
    
    func digit3Tapped() {
        lock.enterDigit3()
    }
    
}