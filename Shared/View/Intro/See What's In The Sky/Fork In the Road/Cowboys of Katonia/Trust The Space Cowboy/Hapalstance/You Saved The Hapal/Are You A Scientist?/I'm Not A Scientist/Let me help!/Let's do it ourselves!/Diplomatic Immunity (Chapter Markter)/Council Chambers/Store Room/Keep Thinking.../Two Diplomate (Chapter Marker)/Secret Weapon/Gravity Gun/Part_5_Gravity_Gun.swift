//
//  Part_5_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_5_Gravity_Gun: View {
    static let PageName = "Part_5_Gravity_Gun"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "Chrono engages in small-talk with Chief Korgle. You tune them out and try to think of a distraction. If you could find a way to excuse yourself and leave the room, maybe there would be a fire alarm you could pull. While trying to think of an excuse, your eyes land on the tray of tre-bok. A new idea starts to form in your mind!\n\n“Actually, I’ll have some of this delicious looking food,” you say, jumping up from your seat.\n\nYou grab a handful of the rubbery looking tre-bok. You take a bite. It tastes as bad as it looks. Sort of like tree bark...if you knew what tree bark tasted like."

        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_6_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Chief Korgle" : "Chief Korgle iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_5_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Gravity_Gun()
    }
}
