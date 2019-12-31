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
}
