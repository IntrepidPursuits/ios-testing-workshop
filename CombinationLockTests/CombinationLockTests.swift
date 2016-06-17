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
    
}
