//
//  DataPayload.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/5/21.
//

import SwiftUI

class StoryPayload: Identifiable {

    var id: UUID
    var text: String
    var image: String
    var decision1: String
    var decision2: String
    var firstChoice: AnyView
    var secondChoice: AnyView
    
    
    init(text: String, firstChoice: AnyView, image: String = "Luna at park", decision1: String = Constants.ContinuePhrase, decision2: String = "",  secondChoice: AnyView = AnyView(Text(""))) {
        self.id = UUID()
        self.text = text
        self.firstChoice = firstChoice
        self.secondChoice = secondChoice
        self.decision1 = decision1
        self.decision2 = decision2
        self.image = image
        
    }
}

