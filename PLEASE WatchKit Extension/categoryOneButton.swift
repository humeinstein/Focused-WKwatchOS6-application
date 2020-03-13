//
//  categoryOneButton.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/10/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct categoryOneButton: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.2")
                    .padding(.leading)
                .font(.system(size: 40))
                Text("Co-worker")
                    .padding(.leading)
                    .frame(height: 120)
                
            }
        }
    }
}

struct categoryOneButton_Previews: PreviewProvider {
    static var previews: some View {
        categoryOneButton()
    }
}
