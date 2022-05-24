//
//  Part_3_Dissect_My_Brains.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Fork_In_The_Road: View {
    @State var showMenu = false
     
    static let PageName = "Part_3_Fork_In_The_Road"

    var body: some View {

        let decision1 = Constants.ContinuePhrase
        let text =
        "“As I said before—although I guess it was in French—my name is Chrono, and my home planet Covarnius is in trouble.”\n\nChrono pulls a lever on the blinking console in front of him and a ping sound emanates through the small ship.\n\nHis attention seems to be more dedicated to the operation of the ship, rather than the answering of your questions.\n\n“And what does any of this have to do with me?” you question skeptically.\n\nYou watch out the window as the spacecraft ascends upwards leaving Earth behind. The houses below quickly become tiny dots...this is becoming too real."
        let firstChoicePageName = Part_4_Fork_In_The_Road.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ?  "Earth_" : "Earth_iPhone",  decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}



