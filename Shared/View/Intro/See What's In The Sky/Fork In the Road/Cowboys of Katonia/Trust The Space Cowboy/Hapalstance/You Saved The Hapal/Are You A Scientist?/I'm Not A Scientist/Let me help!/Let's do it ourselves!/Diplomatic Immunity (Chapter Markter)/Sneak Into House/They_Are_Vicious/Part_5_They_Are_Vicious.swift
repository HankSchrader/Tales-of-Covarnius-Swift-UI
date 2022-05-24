//
//  Part_5_They_Are_Vicious.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_5_They_Are_Vicious: View {
    static let PageName = "Part_5_They_Are_Vicious"
     
    @State var showMenu = false
    var body: some View {
       let text =
        "That was dangerous!” Chrono says out of breath. “Well, onto our next plan. Let’s see if we have luck getting into the council chamber storeroom.”\n\nYou follow Chrono to the council chamber and then around to the back of the large building. It’s bland utilitarian architecture starkly contrasts the vibrant flora of Covarnius."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Council.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Outside Home", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_5_They_Are_Vicious_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_They_Are_Vicious()
    }
}
