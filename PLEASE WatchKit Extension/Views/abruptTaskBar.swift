//
//  abruptTaskBar.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/12/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct abruptTaskBar: View {
    var body: some View {
        HStack {
            Image(systemName: "paperplane.fill")
                .padding(.leading)
                .font(.system(size: 20))
            
        }
    }
}

struct abruptTaskBar_Previews: PreviewProvider {
    static var previews: some View {
        abruptTaskBar()
    }
}
