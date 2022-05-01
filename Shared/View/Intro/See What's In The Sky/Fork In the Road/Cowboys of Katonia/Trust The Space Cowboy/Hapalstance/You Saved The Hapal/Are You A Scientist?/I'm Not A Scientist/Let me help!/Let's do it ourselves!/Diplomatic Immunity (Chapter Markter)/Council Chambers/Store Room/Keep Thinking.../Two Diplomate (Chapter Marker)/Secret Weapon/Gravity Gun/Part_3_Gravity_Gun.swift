//
//  Part_3_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Gravity_Gun: View {
    static let PageName = "Part_3_Gravity_Gun"
    @State var showMenu = false
    var body: some View {
        let text =
        "Chief Korgle opens the door next to the Control Room and ushers you inside. The room is spacious and has oversized chairs sitting around a table. Another smaller table sits off to one side filled with trays of something unidentifiable.\n\nChief Korgle notices you staring at the dish. “Care for some tre-bok?” he asks, lifting the tray. You take a closer look. It kind of looks like french fries but green and rubbery.\n\n“No thank you,” you decline. Hard telling how your stomach would react to such strange Sinisterian food."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Chief Korgle", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Gravity_Gun()
    }
}
