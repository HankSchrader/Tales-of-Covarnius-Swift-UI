//
//  Part_3_Not_Scientist.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Not_Scientist: View {
    static let PageName = "Part_3_Not_Scientist"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "“What did he mean by invasion?” you question.\n\n“It’s the Sinisterians,” Chrono says. “They are on their way to Covarnius as we speak.”\n\n“What’s a Sinisterian?” you ask. Judging by the Covarnians' reactions, you can tell whatever it is can’t be good.\n\nChrono wrings his hands together as he explains. “The Sinisterians are a race of aliens. They are brutal, savage warmongers to say the least. They plan to invade Covarnius and take over the planet.”"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Not_Scientist.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad  ? "Zanarq iPad" : "Zanarq iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Not_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Not_Scientist()
    }
}
