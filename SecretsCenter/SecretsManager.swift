//
//  SecretsManager.swift
//  SecretsCenter
//
//  Created by Aaron Tunney on 23/12/2019.
//  Copyright © 2019 Aaron Tunney. All rights reserved.
//

import Foundation
import Keys

class SecretsManager {
    var testSecret: String? {
        let keys = SecretsCenterKeys()
        return keys.testSecret
    }

    var jsonSecret: String? {
        if let path = Bundle.main.path(forResource: "Secrets", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, String>, let secret = jsonResult["secret"] {
                    return secret
                }
            } catch {
                print("Error reading JSON file: \(error)")
            }
        }

        return nil
    }
}
