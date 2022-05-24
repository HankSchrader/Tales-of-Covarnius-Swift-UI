//
//  Part_2_Dissect_My_Brains.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Dissect_My_Brains: View {
    @State var showMenu = false
    static let PageName = "Part_2_Dissect_My_Brains"
     
    var body: some View {
        let text =
        "You put your hands on your hips and gaze at him suspiciously, hoping to find a sign that he’s not being entirely truthful.\n\n“Then why do I need to go with you?” you question him. A sound starts to emanate from the spacecraft a few yards away. It sounds like a cross between a wind chime and a howling dog.\n\nThe sound clearly distresses the alien who looks back at his ship with impatience. “Covarnius—my home planet—is in trouble. Hurry, the ship is ready to take off! And you’re the only person in the universe who can help.\""
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Fork_In_The_Road.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Chrono and Ship" : "Chrono and Ship iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Dissect_My_Brains_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Dissect_My_Brains()
    }
}
