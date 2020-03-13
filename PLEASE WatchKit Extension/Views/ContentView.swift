//
//  ContentView.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/8/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 245 / 255, green: 240 / 255, blue: 232 / 255)
    static let spaceCadet = Color(red: 223 / 255, green: 248 / 255, blue: 235 / 255)
    static let backgroundColorTheme = #colorLiteral(red: 0.3803921569, green: 0.939640411, blue: 0.7568627451, alpha: 1)
}



struct ContentView: View {
    @ObservedObject var model: ScreenModel
    
    
    var body: some View {
        
        ZStack {
            List {
                NavigationLink(destination: sessionView(model: ScreenModel())) {
                    newSessionButton()
                    
                } .listRowPlatterColor(Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)))
                
                NavigationLink(destination: graphView()) {
                    showDataButton()
                } .listRowPlatterColor(Color(#colorLiteral(red: 0.6178761125, green: 0.3085364699, blue: 0.9956260324, alpha: 1)))
                
                NavigationLink(destination: settingsVIew()) {
                    settingsViewButton()
                } .listRowPlatterColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))

            } .listStyle(CarouselListStyle())
            .navigationBarTitle(Text("FocusTrack"))

        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: ScreenModel())
    }
}


struct screens: Identifiable {
    let title: String
    let color: CGColor

    
    var id: String {
           title
       }
}


