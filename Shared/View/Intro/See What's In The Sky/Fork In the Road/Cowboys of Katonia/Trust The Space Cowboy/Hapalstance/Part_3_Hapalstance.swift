//
//  Part_3_Hapalstance.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Hapalstance: View {
    static let PageName = "Part_3_Hapalstance"
    @State var showMenu = false
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "The fresh mountain air is invigorating after your nice nap. You hope that all aliens are as friendly as Kayo.\n\n“Well, here's your spaceship,” Kayo bellows. “Good as new!”\n\nJust as you are about to jump in, a distressed cry is heard from behind the ranch house. It’s a sad cry, a mix between a baby elephant and a lamb.\n\n“That sounded like the baby hapal,” Kayo says with alarm."
       
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Hapalstance.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Covarnian Cruiser" : "Covarnian Cruiser iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Hapalstance_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Hapalstance()
    }
}
