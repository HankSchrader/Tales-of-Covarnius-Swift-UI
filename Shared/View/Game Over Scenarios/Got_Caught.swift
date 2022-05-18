//
//  Got_Caught.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Got_Caught: View {
    static let PageName = "Got_Caught"
    @State var showMenu = false
    var body: some View {
        let text =
        "\"There's no time to lose, we need to get to your house as quickly as possible.\" Chrono nods and Luna nervously wags her tail.\n\n“We’ll run towards the door at the count of three,” you say confidently. “One…Two…THREE!”\n\nThe three of you sprint towards the door. You run faster than you’ve ever ran before…but it isn't enough.\n\n“YOU TWO! HALT.” A Sinisterian across the street notices you and notifies his companions. Several Sinisterians surround. You’re led away and placed into a holding cell.\n\nThe good news is the food in here isn’t too bad.\n\nThe bad news is you never made it to Chrono's house to use the Hyper Growth Ray.\n\nCovarnius is doomed."
        let decision1 =  Constants.GameOverPhrase
        let firstChoicePageName = "Title View"
        let storyView: StoryPayload = StoryPayload(text: text, image: "Blasters", decision1: decision1, firstChoicePageName: firstChoicePageName)
             DisplayView(showMenu: self.$showMenu, view: storyView)
        }
    
}

struct Got_Caught_Previews: PreviewProvider {
    static var previews: some View {
        Got_Caught()
    }
}
