//
//  VynylChallengeTests.swift
//  VynylChallengeTests
//
//  Created by Christian McMullin on 2/8/19.
//  Copyright © 2019 Christian McMullin. All rights reserved.
//

import XCTest
@testable import VynylChallenge

class VynylChallengeTests: XCTestCase {
    
    var flattenedArray: [Any] = []
    
    override func setUp() {
        super.setUp()
        //Below is an arbitrary nested array.  The success goal here is to have a normal array of Int's.
        flattenedArray = Flattener.flattenArray(anArray: [1,2,3,[4,5,6,[[7,8],9,"hello"]],"World",false, [10000]])
    }
    
    override func tearDown() {
        super.tearDown()
        flattenedArray = []
    }
    
    func testArrayFlattener() {
        print(flattenedArray)
        //The test will pass if the flattenedArray property after setting its value from Flattener.flattenArray is an array of Int's
        XCTAssertTrue(flattenedArray is [Int], "It worked")
    }
}


