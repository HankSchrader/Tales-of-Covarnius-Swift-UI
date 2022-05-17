//
//  Part_8_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_8_Gravity_Gun: View {
    static let PageName = "Part_8_Gravity_Gun"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "On the other hand, what if it’s not a big enough distraction. What if it’s not enough time for Chrono to get to the control room and change the coordinates?\n\nSuddenly you remember the Hypersleep Chamber that you passed on your way in. What if you could wake up all the Sinisterians from hypersleep? That definitely seems like a situation worthy of Chief Korgle’s attention. And a distraction that would keep the Sinisterians busy long enough for Chrono to get to the control room."

        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_9_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Chief Korgle" : "Chief Korgle iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_8_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_8_Gravity_Gun()
    }
}
