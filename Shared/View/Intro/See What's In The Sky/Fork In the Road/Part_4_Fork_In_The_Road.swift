//
//  Part_3_Fork_In_The_Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_Fork_In_The_Road: View {
    @State var showMenu = false
    static let PageName = "Part_4_Fork_In_The_Road"
    var body: some View {
       let text =
        "“Your groundbreaking research,” Chrono starts as he continues flipping switches and dials on the control panel, “it’s absolutely brilliant. You are the only one who can save Covarnius now.”\n\nLeaning back in your seat, you mull over what Chrono just told you. Your research for the science fair had definitely been A+ material, but you don't see how it could save an alien planet.\n\nAnd where is Covarnius anyway? If it was close to Earth, wouldn’t we know of its existence? And if it was far…you recall your science teacher informing your class that it would take thousands of years just to travel one light year.\n\nSo how far away is this Covarnius?” you ask."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_5_Fork_In_The_Road.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
  
    }
}

struct Part_4_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Fork_In_The_Road()
    }
}
