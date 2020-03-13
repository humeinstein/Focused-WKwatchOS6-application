//
//  showDataButton.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/8/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct showDataButton: View {
    var body: some View {
        HStack {
            Image(systemName: "rectangle.and.paperclip")
                .padding(.leading)
                .font(.system(size: 40))
            Text("Review")
                .padding(.leading)
                .frame(height: 120)
            
        }

    }
}

struct showDataButton_Previews: PreviewProvider {
    static var previews: some View {
        showDataButton()
    }
}
