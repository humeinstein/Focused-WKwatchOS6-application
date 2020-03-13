//
//  newSessionButton.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/8/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct newSessionButton: View {
    var body: some View {
        HStack {
            Image(systemName: "clock.fill")
                .padding(.leading)
            .font(.system(size: 40))
            Text("New Session")
                .padding(.leading)
                .frame(height: 120)
            
        }
    }
}

struct newSessionButton_Previews: PreviewProvider {
    static var previews: some View {
        newSessionButton()
    }
}
