//
//  Bazel_MigrateUITests.swift
//  Bazel_MigrateUITests
//
//  Created by Nagaraju Kankanala on 15/01/25.
//

import XCTest

final class Bazel_MigrateUITests: XCTestCase {

    func test_loginTextFieldIsEmpty() {
        let app = XCUIApplication()
        app.launch()
        app.textFields["userName"].tap()
        app.textFields["userName"].typeText("Nagaraju")
        app.textFields["Password"].tap()
        app.textFields["Password"].typeText("admin")
        app.buttons["Login"].tap()
        let successAlert = app.alerts["Login Successful"]
        XCTAssertTrue(successAlert.exists)
    }
  

  
}
