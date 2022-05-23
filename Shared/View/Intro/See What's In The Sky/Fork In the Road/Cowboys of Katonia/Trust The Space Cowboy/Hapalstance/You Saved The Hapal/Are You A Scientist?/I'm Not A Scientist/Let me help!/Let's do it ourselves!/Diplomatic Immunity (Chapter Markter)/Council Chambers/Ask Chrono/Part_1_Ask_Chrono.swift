//
//  Part_1_Ask_Chrono.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Ask_Chrono: View {
    static let PageName = "Part_1_Ask_Chrono"
    let isIpad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "“I spent last summer working here as a Covarnian Cleanliness Companion or CCC for short,” Chrono explains.\n\n“That sounds impressive.”\n\n“Not really,” Chrono replies. “That’s just a fancy way of saying garbage man. I still had fun working here though.”\n\nA sense of uneasiness washes over you. “We should probably get to the store room now before we are detected.”\n\nChrono nods and takes the lead down the pristine hallway. The CCC really does a good job you think to yourself. The halls are immaculate"
        
       
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Store_Room.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Running Down Hall" : "Running Down Hall iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Ask_Chrono_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Ask_Chrono()
    }
}
