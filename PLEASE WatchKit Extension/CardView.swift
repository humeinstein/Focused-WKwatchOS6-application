//
//  CardView.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/10/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

struct CardView: View {
    @State private var isShowingDetails = false
    let card: Card
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 5)

            VStack {
                Text(card.cardName)
                    .foregroundColor(.black)

                if isShowingDetails {
                    Text(card.detail)
                        .foregroundColor(.gray)
                }
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 150, height: 100)
        .onTapGesture {
            self.isShowingDetails.toggle()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card.example)
    }
}
