//
//  Card.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/10/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import Foundation


struct Card: Codable {
    let cardName: String
    let timesPushed: Int
    let detail: String

    
    static var example: Card {
        Card(cardName: "Co-worker", timesPushed: 0, detail: "email, phonecall, office interruption")
    }
}

struct Cards: Codable {
    
}



