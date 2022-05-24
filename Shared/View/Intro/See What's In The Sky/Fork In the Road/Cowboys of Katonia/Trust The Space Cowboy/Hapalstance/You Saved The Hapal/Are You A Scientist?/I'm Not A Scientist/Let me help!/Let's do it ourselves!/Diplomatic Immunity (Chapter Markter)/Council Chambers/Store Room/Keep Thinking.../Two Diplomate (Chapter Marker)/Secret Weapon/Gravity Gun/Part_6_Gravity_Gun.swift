//
//  Part_6_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_6_Gravity_Gun: View {
    static let PageName = "Part_6_Gravity_Gun"
    @State var showMenu = false
     
    var body: some View {
        let text =
        "You return to your chair and sit down. “I think there was something wrong with that tre-bok,” you say with exaggeration. You hold your stomach, pretending to have food poisoning.\n\n“What’s wrong with my tre-bok?” the chief asks as he studies your performance.\n\n“It’s not sitting right,” you tell the chief. You make a gagging motion as if you’re about to puke.\n\n“Well get to the bathroom,” the chief barks. “The last thing I need is you blowing chunks all over my fine imported chairs.”"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_7_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Chief Korgle" : "Chief Korgle iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_6_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_6_Gravity_Gun()
    }
}
