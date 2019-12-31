//
//  ContentView.swift
//  SecretsCenter
//
//  Created by Aaron Tunney on 23/12/2019.
//  Copyright © 2019 Aaron Tunney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(SecretsManager().testSecret ?? "Missing variable 🙈")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
