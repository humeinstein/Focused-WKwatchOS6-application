//
//  sessionModel.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/9/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import Foundation
import UIKit

struct category {
    let catName: String
    let timesPushed: Int
    let detail: String
    let color: UIColor
}



class ScreenModel: ObservableObject {
    @Published var categories: [category] = [
        category(catName: "Co-worker", timesPushed: 0, detail: "email, phonecall, office interruption", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
        category(catName: "Friends/Family", timesPushed: 0, detail: "phonecall, conversation, needed for something", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
        category(catName: "Using phone/computer", timesPushed: 0, detail: "browsing web, youtube, social media, shopping", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)),
        category(catName: "Unexpected work-related", timesPushed: 0, detail: "new deadline, unscheduled meeting or tasks", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),
        category(catName: "lack of concentration", timesPushed: 0, detail: "daydream, boredom", color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        
    ]
}
//order of completio
    //sessionsettingsView
        

//session

// duration: userdefined
// location: work, home


//session settings

        //duration: userdefine // code: take start time and declare end time based on duration
        //location: categorize as work or home etc etc (can make custom distraction profiles)

//session
    //
    // show weekly average: // calculte based on percent time spent focused vs not focused
    

    //manual log
        //IDEAS:
            //use complication
            //use new tile with form


    //predesignated checks
        //notifcation scene (code notification scene to send checks based on duration
