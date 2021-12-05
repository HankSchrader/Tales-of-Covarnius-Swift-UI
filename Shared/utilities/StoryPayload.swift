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
    var decision1: String
    var decision2: String
    var firstChoice: AnyView
    var secondChoice: AnyView
    
    init(text: String, decision1: String, decision2: String, firstChoice: AnyView, secondChoice: AnyView) {
        self.id = UUID()
        self.text = text
        self.firstChoice = firstChoice
        self.secondChoice = secondChoice
        self.decision1 = decision1
        self.decision2 = decision2
        
    }
}

