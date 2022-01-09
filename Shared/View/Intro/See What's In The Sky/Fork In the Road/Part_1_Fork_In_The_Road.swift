//
//  Part 1 Fork In The Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Fork_In_The_Road: View {
    @State var showMenu = false
    static let PageName = "Part_1_Fork_In_The_Road"
    var body: some View {
        let decision1 = Constants.ContinuePhrase
        let text =
        "After careful consideration, you decide the alien is probably not going to dissect your brain. The pleading look in his eyes and frightened demeanor shows he needs help.\n\nAt the very least, you’ll get out of all the math homework your teacher assigned today. You cautiously approach the green hued creature. Before you know it, he is insisting you enter the spaceship."
        let firstChoicePageName = Part_2_Fork_In_The_Road.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
   
    }
}


struct Part_1_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Fork_In_The_Road()
    }
}
