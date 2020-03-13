//
//  headspaeBar.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/12/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct headspaeBar: View {
    var body: some View {
        HStack {
            Image(systemName: "ear")
                .padding(.leading)
                .font(.system(size: 20))
            
        }
    }
}

struct headspaeBar_Previews: PreviewProvider {
    static var previews: some View {
        headspaeBar()
    }
}
