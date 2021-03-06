//
//  Part_2_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Hypersleep: View {
    static let PageName = "Part_2_Hypersleep"
    @State var showMenu = false
    var body: some View {
        let text =
        "This is the better of the two plans. You keep looking around the high tech console.\n\nThen suddenly, you see a bright red button positioned in the upper right hand corner. EMERGENCY DISENGAGE HYPERSLEEP. You smile, happy you didn't give up so easily. You reach out and press the button and the all the monitors nearby begin to light up.\n\n“Please insert the override key now,” a digitized voice instructs from the speakers.\n\nUh-oh, you hadn’t anticipated that there'd be an override function. You begin to panic again as the monitor displays a countdown on the screen. FIVE...FOUR..."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Hypersleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Hyper Sleep" : "Hyper Sleep iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Hypersleep()
    }
}
