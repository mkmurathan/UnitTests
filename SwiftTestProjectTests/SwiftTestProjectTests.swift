//
//  SwiftTestProjectTests.swift
//  SwiftTestProjectTests
//
//  Created by Murathan karagöz on 7.09.2023.
//

import XCTest
@testable import SwiftTestProject

final class SwiftTestProjectTests: XCTestCase {


    let math = MathFunc()
    
    func testAddİntegerFunc() {
        let result = math.try1(x: 5, y: 8)
        XCTAssertEqual(result, 13)
    }
    func testAddİntegerFunc2() {
        let result = math.try2(x: 5, y: 8)
        XCTAssertEqual(result, 40)
    }
    func testAddİntegerFunc3() {
        let result = math.try3(x: 100, y: 20)
        XCTAssertEqual(result, 5)
    }
  
    
    
    
}
