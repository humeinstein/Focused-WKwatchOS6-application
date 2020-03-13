//
//  graphView.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/8/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI


struct graphView: View {
    
    
    @State var sundayScore = 0
    @State var mondayScore = 0
    @State var tuesdayScore = 0
    @State var wednesdayScore = 0
    @State var thursdayScore = 0
    @State var fridayScore = 0
    @State var saturdayScore = 0
    @State var goalScoreSunday = 70
    @State var goalScoreMonday = 70
    @State var goalScoreTuesday = 70
    @State var goalScoreWednesday = 70
    @State var goalScoreThursday = 70
    @State var goalScoreFriday = 70
    @State var goalScoreSaturday = 70
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.3048627675, green: 0.8686323762, blue: 0.691326797, alpha: 1)).edgesIgnoringSafeArea(.all)
            
             
            
            VStack {
                    
                    
                    Button(
                        action: { self.previousGraph() },
                        label: { Text("*")
                            .font(.title)
                            .fontWeight(.black) }
                        )
                        .frame(width: 30, height: 30)
                        .accentColor(Color(#colorLiteral(red: 0.3803921569, green: 0.939640411, blue: 0.7568627451, alpha: 1)))
                        .background(Color.white)
                        .cornerRadius(60)
                    
                
                
                Divider()
                
                HStack {
                    BarView(
                        scoreValue: CGFloat(sundayScore),
                        day: "S",
                        goalAmount: CGFloat(goalScoreSunday)
                    )
                    
                    BarView(
                        scoreValue: CGFloat(mondayScore),
                        day: "M",
                        goalAmount: CGFloat(goalScoreMonday)
                    )
                    
                    BarView(
                        scoreValue: CGFloat(tuesdayScore),
                        day: "T",
                        goalAmount: CGFloat(goalScoreTuesday)
                    )
                    
                    BarView(
                        scoreValue: CGFloat(wednesdayScore),
                        day: "W",
                        goalAmount: CGFloat(goalScoreWednesday)
                    )
                    
                    BarView(
                        scoreValue: CGFloat(thursdayScore),
                        day: "T",
                        goalAmount: CGFloat(goalScoreThursday)
                    )
                    
                    BarView(
                        scoreValue: CGFloat(fridayScore),
                        day: "F",
                        goalAmount: CGFloat(goalScoreFriday)
                    )
                    
                    BarView(
                        scoreValue: CGFloat(saturdayScore),
                        day: "S",
                        goalAmount: CGFloat(goalScoreSaturday)
                    )

                }
            }
            .padding(.vertical, 19.0)
                
            ///GOAL: CHANGE ANIMATION: complete for now yellow is user define goal or expectation
            .animation(
            Animation.easeOut(duration: 2))
            .navigationBarTitle(Text("Review Sessions"))
        }
    }
    func previousGraph() {
           let previousWeekData = [
               90,
               48,
               79,
               40,
               35,
               65,
               25,
               15,
               88,
               44,
               42,
               68,
               89,
               70,
               14,
               19,
               18,
               16,
               78,
               66,
               35,
               22,
               14,
               26,
               66,
               45,
               77,
               88,
               90
           ]
        
        // random data from array
            sundayScore = previousWeekData.randomElement() ?? 0
            mondayScore = previousWeekData.randomElement() ?? 0
            tuesdayScore = previousWeekData.randomElement() ?? 0
            wednesdayScore = previousWeekData.randomElement() ?? 0
            thursdayScore = previousWeekData.randomElement() ?? 0
            fridayScore = previousWeekData.randomElement() ?? 0
            saturdayScore = previousWeekData.randomElement() ?? 0
       }
    

}

struct graphView_Previews: PreviewProvider {
    //test data for graph
    
    
    
    static var previews: some View {
        graphView()
    }
}



struct BarView: View {
    
    var scoreValue: CGFloat
    var day: String
    var goalAmount: CGFloat
    
    var body: some View {
        VStack {
            Text(day)
                .font(.footnote)
                .fontWeight(.semibold)
            ZStack (alignment: .bottom) {
                Capsule().frame(width: 15, height: 90)
                    .foregroundColor(Color(#colorLiteral(red: 0.1333375275, green: 0.6924429536, blue: 0.5793090463, alpha: 1)))
                Capsule().frame(width: 15, height: goalAmount)
                    .foregroundColor(Color(#colorLiteral(red: 0.6178761125, green: 0.3085364699, blue: 0.9956260324, alpha: 1)))
                Capsule().frame(width: 15, height: scoreValue)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            }
            Image(systemName: "checkmark.circle.fill")
        }
    }

}
