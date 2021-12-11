//
//  Part_5_Fork_In_The_Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_Fork_In_The_Road: View {
    static let PageName = "Part_4_Fork_In_The_Road"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Is it going to take us thousands of years to get there?” you continue with growing panic. “I change my mind, I want to go back to Earth!” you shout, pressing your nose to the glass window.\n\nChrono turns to you with a look of confusion. “Covarnius is located in the next star system, approximately five light years away...or about seven earthling days.”\n\nThe alien turns to you with one eyebrow raised. “Besides, you can’t back out now. You already agreed to help.\n\n”\"Just seven days? That’s not too bad.\" you breath a sigh of relief. A week was bad enough, but at least it wasn’t going to be thousands of years! But still, you start to wonder if you made the right decision to travel to Covarnius. Your parents and your room back at home… it’s all on Earth. You feel a little homesick. What should you do?"

        let decision1 = "Chrono said only you can help."
        let decision2 = "Go back to Earth."

        let firstChoicePageName = "Part_1_Greatest_Scientist"
        let secondChoicePageName = "Part_1_Cowboys_Of_Katonia"
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        }
    }


struct Part_4_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Fork_In_The_Road()
    }
}
