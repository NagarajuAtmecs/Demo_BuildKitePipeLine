//
//  Bazel_MigrateUITests.swift
//  Bazel_MigrateUITests
//
//  Created by Nagaraju Kankanala on 15/01/25.
//

import XCTest

final class Bazel_MigrateUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUpWithError() throws {
           try super.setUpWithError()
           app = XCUIApplication()
           app.launch()
           continueAfterFailure = false
       }
    
    override func tearDown() {
        app = nil
    }
    
    func test_loginButtonTitleiIsNotEmpty() throws {
           XCTAssertTrue(app.buttons["Login"].exists)
    }
   
    func test_userNameisEmpty() throws {
        let userNametxt =  app.textFields["userName"]
        XCTAssertTrue(userNametxt.exists,"The username text field does not exist")
        XCTAssertTrue((userNametxt.value as? String)?.isEmpty ?? false || userNametxt.value as? String == userNametxt.placeholderValue, "The username text field is not empty initially or only contains placeholder text.")
       }
  
    
    func test_userPasswordEmpty() throws {
        let passWordtxt =  app.textFields["Password"]
        XCTAssertTrue(passWordtxt.exists,"The Password text field does not exist")
        XCTAssertTrue((passWordtxt.value as? String)?.isEmpty ?? false || passWordtxt.value as? String == passWordtxt.placeholderValue, "The Password text field is not empty initially or only contains placeholder text.")
       }
    
    func test_ForgotBtnisNotEmpty() throws {
        let forgotPassword = app.buttons["Forgot"]
        XCTAssertTrue(forgotPassword.exists)
        
    }
}
