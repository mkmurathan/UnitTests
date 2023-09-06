//
//  SwiftTestProjectUITests.swift
//  SwiftTestProjectUITests
//
//  Created by Murathan karagöz on 7.09.2023.
//

import XCTest

final class SwiftTestProjectUITests: XCTestCase {
    
    
    
    
    func testToDoİtem() throws {
        
        
        let app = XCUIApplication()
        app.launch()
        
        
        
     let addButton = app.navigationBars["SwiftTestProject.View"].buttons["Add"]
      let elementsQuery = app.alerts["add item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews.textFields["Enter İtem"]
         let okButton = elementsQuery.buttons["ok"]
        let addedCell = app.tables.cells.containing(.staticText, identifier: "deneme1 deneme2").element
     
        
        addButton.tap()
        textField.tap()
        textField.typeText("deneme1 deneme2")
        okButton.tap()
        
        XCTAssertTrue(addedCell.exists)
    }
}
