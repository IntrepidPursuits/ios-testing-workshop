//
//  CombinationLockTests.swift
//  CombinationLockTests
//
//  Created by Colin Brash on 6/15/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import XCTest
@testable import CombinationLock

class CombinationLockTests: XCTestCase {
    
    func testCombinationInitialStateIsLocked() {
        let lock = CombinationLock()
        XCTAssertTrue(lock.locked)
    }
    
    func testEnteringWrongCombinationStaysLocked() {
        let lock = CombinationLock()
        lock.updateEnteredCombination("1")
        XCTAssertTrue(lock.locked)
    }
    
    func testEnteringCorrectCombinationUnlocks() {
        let lock = CombinationLock()
        lock.updateEnteredCombination("1")
        lock.updateEnteredCombination("2")
        lock.updateEnteredCombination("3")
        XCTAssertFalse(lock.locked)
    }
    
    func testEnteringWrongComboThenRightComboUnlocks() {
        let lock = CombinationLock()
        lock.updateEnteredCombination("2")
        lock.updateEnteredCombination("3")
        
        lock.updateEnteredCombination("1")
        lock.updateEnteredCombination("2")
        lock.updateEnteredCombination("3")
        XCTAssertFalse(lock.locked)
    }
    
    func testEnteringRightComboThenAnyDigitLocks() {
        let lock = CombinationLock()
        lock.updateEnteredCombination("1")
        lock.updateEnteredCombination("2")
        lock.updateEnteredCombination("3")
        lock.updateEnteredCombination("1")
        XCTAssertTrue(lock.locked)
        
        lock.updateEnteredCombination("1")
        lock.updateEnteredCombination("2")
        lock.updateEnteredCombination("3")
        lock.updateEnteredCombination("2")
        XCTAssertTrue(lock.locked)

        lock.updateEnteredCombination("1")
        lock.updateEnteredCombination("2")
        lock.updateEnteredCombination("3")
        lock.updateEnteredCombination("3")
        XCTAssertTrue(lock.locked)
    }
    
    func testEnteringFirstCorrectDigitThenCorrectComboUnlocks() {
        let lock = CombinationLock()
        lock.updateEnteredCombination("1")
        lock.updateEnteredCombination("1")
        lock.updateEnteredCombination("2")
        lock.updateEnteredCombination("3")
        XCTAssertFalse(lock.locked)
    }
    
}
