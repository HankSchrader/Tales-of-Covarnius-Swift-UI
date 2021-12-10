//
//  Part_3_Dissect_My_Brains.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Fork_In_The_Road: View {
    @State var showMenu = false
    @EnvironmentObject var log: ChapterLog
    init () {
        let defaults = UserDefaults.standard
        defaults.set("Part_2_Fork_In_The_Road", forKey: DefaultsKeys.currentPage)
    }
    
    var body: some View {
        let text =
        "“After taking a quick peek at your surroundings, you notice that switches, dials and knobs encompass the entire vessel.You stare at the alien defiantly, “If I’m going back to Covarnius with you, at least tell me your name first.”\n\n“As I said before—although I guess it was in French—my name is Chrono, and my home planet Covarnius is in trouble.”\n\nChrono pulls a lever on the blinking console in front of him and a ping sound emanates through the small ship. His attention seems to be more dedicated to the operation of the ship, rather than the answering of your questions.\n\n“And what does any of this have to do with me?” you question skeptically. You watch out the window as the spacecraft ascends upwards leaving Earth behind. The houses below quickly become tiny dots...this is becoming too real."
        let decision1 = Constants.ContinuePhrase
        let firstChoice = AnyView(Part_3_Fork_In_The_Road()
                                    .environmentObject(log))
        let storyView: StoryPayload = StoryPayload(text: text, firstChoice: firstChoice, decision1: decision1)
            return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Fork_In_The_Road()
    }
}
