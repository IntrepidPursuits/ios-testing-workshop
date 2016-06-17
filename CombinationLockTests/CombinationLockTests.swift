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
        let lock = CombinationLock(combination: "123")
        XCTAssertTrue(lock.locked)
    }
    
    func testCorrectCombinationUnlocks() {
        let lock = CombinationLock(combination: "123")
        XCTAssertTrue(lock.locked)
        lock.enterDigit1()
        lock.enterDigit2()
        lock.enterDigit3()
        XCTAssertFalse(lock.locked)
    }
    
    func testIncorrectCombinationDoesNotUnlock() {
        let lock = CombinationLock(combination: "123")
        XCTAssertTrue(lock.locked)
        lock.enterDigit2()
        XCTAssertTrue(lock.locked)
        lock.enterDigit1()
        XCTAssertTrue(lock.locked)
        lock.enterDigit3()
        XCTAssertTrue(lock.locked)
    }
    
    func testEnteringDigitLocksIfUnlocked() {
        let lock = CombinationLock(combination: "123")
        XCTAssertTrue(lock.locked)
        lock.enterDigit1()
        lock.enterDigit2()
        lock.enterDigit3()
        XCTAssertFalse(lock.locked)
        lock.enterDigit1()
        XCTAssertTrue(lock.locked)
    }

    func testCorrectCombinationUnlocksAfterBeginningIncorrectCombination() {
        let lock = CombinationLock(combination: "123")
        XCTAssertTrue(lock.locked)
        lock.enterDigit2()
        lock.enterDigit2()
        lock.enterDigit1()
        lock.enterDigit2()
        lock.enterDigit3()
        XCTAssertFalse(lock.locked)
    }
    
    func testEnteringCombinationTwiceInARowUnlocksTwice() {
        let lock = CombinationLock(combination: "123")
        XCTAssertTrue(lock.locked)
        lock.enterDigit1()
        lock.enterDigit2()
        lock.enterDigit3()
        XCTAssertFalse(lock.locked)
        lock.enterDigit1()
        XCTAssertTrue(lock.locked)
        lock.enterDigit2()
        lock.enterDigit3()
        XCTAssertFalse(lock.locked)
    }
}
