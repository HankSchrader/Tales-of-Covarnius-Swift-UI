//
//  Part_2_Crash_Wall.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Crash_Wall: View {
    static let PageName = "Part_2_Crash_Wall"
    @State var showMenu = false
    var body: some View {
        let text =
        "The plan fails spectacularly. Instead of crashing through the cell, the spaceship folds like an accordion. Why did you ever think that this would be good idea?\n\nLuckily, none of you are hurt. Luna stares at you at you in bewilderment.\n\n“Well that didn’t work as planned,” Chrono says.\n\nYou sigh and look at Luna. “Well I guess we’ll try your plan!”\n\nYou help Luna squeeze through the bars of the cell. “Now go get the key!” you instruct Luna.\n\nLuna runs over to the desk, wagging her tail. “That’s it girl,” you praise, “fetch the key.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Crash_Wall.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Crash_Wall_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Crash_Wall()
    }
}
