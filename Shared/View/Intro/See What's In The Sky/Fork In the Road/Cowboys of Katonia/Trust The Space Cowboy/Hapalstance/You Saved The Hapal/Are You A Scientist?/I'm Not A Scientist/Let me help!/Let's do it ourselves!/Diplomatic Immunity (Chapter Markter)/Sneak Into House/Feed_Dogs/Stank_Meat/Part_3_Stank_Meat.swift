//
//  Part_3_Stank_Meat.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_3_Stank_Meat: View {
    static let PageName = "Part_3_Stank_Meat"
    @State var showMenu = false
    var body: some View {
        let text = "You, Chrono, and Luna make your way to a large lot extending behind and to the side of the council chamber. Covarnian Cruisers are parked in neat rows, each one shiny and perfect. “Which one goes with our key card?” you ask worriedly as you survey the dozens and dozens of ships in the lot.\n\n“Don’t worry,” Chrono says with a smile. “These key cards are designed to be used in any of the cruisers.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Stank_Meat.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Covarnian Cruiser", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Stank_Meat_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Stank_Meat()
    }
}
