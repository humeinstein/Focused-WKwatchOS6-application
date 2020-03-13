//
//  settingsViewButton.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/8/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct settingsViewButton: View {
    var body: some View {
            HStack {
                Image(systemName: "gear")
                    .padding(.leading)
                    .font(.system(size: 40))
                Text("Settings")
                    .padding(.leading)
                    .frame(height: 120)
                
            }

    }
}

struct settingsViewButton_Previews: PreviewProvider {
    static var previews: some View {
        settingsViewButton()
    }
}
