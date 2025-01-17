//
//  ProfileVCTests.swift
//  Bazel_MigrateUITests
//
//  Created by Nagaraju Kankanala on 17/01/25.
//

import XCTest
@testable import Bazel_Migrate

final class ProfileVCTests: XCTestCase {
    var app: XCUIApplication!
       override func setUpWithError() throws {
           continueAfterFailure = false
           app = XCUIApplication()
           app.launch()
           loginAndNavigateToProfile()
       }
    
    func loginAndNavigateToProfile() {
            let usernameField = app.textFields["userName"]
            usernameField.tap()
            usernameField.typeText("testuser")
            let passwordField = app.textFields["Password"]
            passwordField.tap()
            passwordField.typeText("password123")
            let loginButton = app.buttons["Login"]
            app.scrollViews.firstMatch.scrollToElement(loginButton)
            loginButton.tap()
        
            XCTAssertTrue(app.staticTexts["ProfileView"].waitForExistence(timeout: 5), "Profile View Controller did not appear")
        }

    func testProfileScreenUI() {
            XCTAssertTrue(app.staticTexts["ProfileView"].exists, "Profile View Controller title is not visible")
            let logoutButton = app.buttons["Logout"]
            XCTAssertTrue(logoutButton.exists, "Logout button is not visible")
        }
    
    
    
}

extension XCUIElement {
    func scrollToElement(_ element: XCUIElement) {
        while !element.isHittable {
            swipeUp()
        }
    }
}
