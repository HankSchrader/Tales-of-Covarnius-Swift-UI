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
    var firstChoice: AnyView?
    var secondChoice: AnyView?
    var firstChoicePageName: String
    var secondChoicePageName: String
    
    // MARK: Only used on ONE page.
    var decision3: String
    var thirdChoicePageName: String


    
    init(text: String, image: String = "Luna at park", decision1: String = Constants.ContinuePhrase, firstChoicePageName: String = "", secondChoicePageName: String = "", decision2: String = "", decision3: String = "", thirdChoicePageName: String = "") {
        self.id = UUID()
        self.text = text
        self.decision1 = decision1
        self.decision2 = decision2
        self.firstChoicePageName = firstChoicePageName
        self.secondChoicePageName = secondChoicePageName
        self.image = image
        self.decision3 = decision3
        self.thirdChoicePageName = thirdChoicePageName
        
    }
}

