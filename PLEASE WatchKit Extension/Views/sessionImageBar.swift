//
//  sessionImageBar.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/12/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct sessionImageBarCoworker: View {
    
       var body: some View {
            HStack {
                Image(systemName: "person.2")
                    .padding(.leading)
                    .font(.system(size: 20))
                
            }

        }
    }
struct sessionImageBar_Previews: PreviewProvider {
    static var previews: some View {
        sessionImageBarCoworker()
    }
}
