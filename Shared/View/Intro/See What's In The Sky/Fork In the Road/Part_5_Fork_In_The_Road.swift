//
//  Part_5_Fork_In_The_Road.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/11/21.
//

import SwiftUI

struct Part_5_Fork_In_The_Road: View {
    @State var showMenu = false
    static let PageName = "Part_5_Fork_In_The_Road"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "“Is it going to take us thousands of years to get there?” you continue with growing panic. “I change my mind, I want to go back to Earth!” you shout, pressing your nose to the glass window.\n\nChrono turns to you with a look of confusion. “Covarnius is located in the next star system, approximately five light years away...or about seven earthling days.”\n\nThe alien turns to you with one eyebrow raised. “Besides, you can’t back out now. You already agreed to help."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_6_Fork_In_The_Road.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ?  "Earth_" : "Earth iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}


