//
//  SecretsCenterTests.swift
//  SecretsCenterTests
//
//  Created by Aaron Tunney on 23/12/2019.
//  Copyright © 2019 Aaron Tunney. All rights reserved.
//

import XCTest
@testable import SecretsCenter

class SecretsCenterTests: XCTestCase {
    func testEnvironmentVariable() {
        let secretsManager = SecretsManager()

        print("VARIABLE: \(String(describing: secretsManager.testSecret))")

        XCTAssertEqual(secretsManager.testSecret, "Hello World!")
    }

    func testJSONSecret() {
        let secretsManager = SecretsManager()

        print("VARIABLE: \(String(describing: secretsManager.jsonSecret))")

        XCTAssertEqual(secretsManager.jsonSecret, "Goodbye World!")
    }
}
