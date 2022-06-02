//
//  Part_4_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Gravity_Gun: View {
    static let PageName = "Part_4_Gravity_Gun"
     
    @State var showMenu = false
    var body: some View {
       let text =
        "The chief nods, motioning you and Chrono to sit down in the oversized chairs. You take a seat near the tray of tre-bok and notice the odd odor coming from the strange food. It smells like a cross between maple syrup and a skunk. Sweet and pungent at the same time.\n\n“On to the topic of this anti-gravity gun,” Chief Korgle says, getting down to business.\n\nNow is the time to implement the plan you made with Chrono. You’re supposed to come up with a diversion to distract Chief Korgle. That way Chrono can find the control panel and change the coordinates."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_5_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Chief Korgle" : "Chief Korgle iPhone 2", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Gravity_Gun()
    }
}
