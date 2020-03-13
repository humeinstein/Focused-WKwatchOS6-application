//
//  phoneImageBar.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/12/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct phoneImageBar: View {
    var body: some View {
    HStack {
            Image(systemName: "phone.fill")
                .padding(.leading)
                .font(.system(size: 20))
            
        }
    }
}

struct phoneImageBar_Previews: PreviewProvider {
    static var previews: some View {
        phoneImageBar()
    }
}
