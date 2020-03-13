//
//  familyfriendsBar.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/12/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct familyfriendsBar: View {
    var body: some View {
        HStack {
            Image(systemName: "person.3")
                .padding(.leading)
                .font(.system(size: 20))
            
        }
    }
}

struct familyfriendsBar_Previews: PreviewProvider {
    static var previews: some View {
        familyfriendsBar()
    }
}
