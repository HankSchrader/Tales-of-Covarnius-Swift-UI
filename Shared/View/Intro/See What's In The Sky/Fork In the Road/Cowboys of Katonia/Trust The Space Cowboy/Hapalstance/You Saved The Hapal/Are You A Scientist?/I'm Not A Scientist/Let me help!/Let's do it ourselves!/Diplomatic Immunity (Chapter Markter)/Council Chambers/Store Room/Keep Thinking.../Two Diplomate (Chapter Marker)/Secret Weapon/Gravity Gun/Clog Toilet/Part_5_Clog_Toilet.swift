//
//  Part_5_Clog_Toilet.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_5_Clog_Toilet: View {
    static let PageName = "Part_5_Clog_Toilet"
    @State var showMenu = false
    var body: some View {
        let text =
        "How long can a couple of aliens stare at broken toilets? You think skeptically. I need to think of something else!\n\nYou stare at the key one more time, shove it into your pocket and run into the room labeled HYPERSLEEP CHAMBER.\n\nYou approach the control panel and try to figure out what all the knobs and dials are for. How are you ever going to figure out which one is for ending hypersleep?"
        
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Toilet_To_Hyper_Sleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hyper Sleep", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}

struct Part_5_Clog_Toilet_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Clog_Toilet()
    }
}
