//
//  Part_1_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Hypersleep: View {
    static let PageName = "Part_1_Hypersleep"
    @State var showMenu = false
    var body: some View {
        let text =
        "You go with the Hypersleep chamber idea. It seems like the idea that will buy Chono enough time.\n\nYou make your way to the door labeled Hypersleep Chamber and go inside. The room is massive. Rows and rows of pods with sleeping Sinisterians fill the room. With this many Sinisterians, Covarnius doesn’t stand a chance against an invasion.\n\nAlong one wall is a panel with monitors and other equipment. You walk over and try to decipher what all the knobs and dials are for. Each one seems to serve a different function such as nourishment or oxygen. None of them seem to be for ending hypersleep though.\n\nTime is of the essence, should you still go with this plan?"
        
    
        let decision1 =  "Hypersleep Chamber"
        let decision2 = "Clog the bathroom toilets."
        let firstChoicePageName = Part_2_Hypersleep.PageName
        let secondChoicePageName = Part_1_Clog_Toilet.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hyper Sleep", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Hypersleep()
    }
}
