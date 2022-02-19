//
//  Part_5_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_5_Hypersleep: View {
    static let PageName = "Part_5_Hypersleep"
    @State var showMenu = false
    var body: some View {
        let text =
        "Your patience is growing thin. When will Chrono be done?\n\nNo sign of Chief Korgle yet. The “malfunctioning” hypersleep chamber must be just the thing to keep him distracted.\n\nYou wonder how much longer this will last. How much longer until the chief fixes the hypersleep problem? How much longer until Chrono is done entering coordinates?\n\nWhat’s probably only been a few minutes seems like hours."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_6_Hypersleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_5_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Hypersleep()
    }
}
