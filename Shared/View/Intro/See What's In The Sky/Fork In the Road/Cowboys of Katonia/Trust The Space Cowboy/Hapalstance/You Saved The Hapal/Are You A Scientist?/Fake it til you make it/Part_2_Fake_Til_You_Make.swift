//
//  Part_2_Fake_Til_You_Make.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Fake_Til_You_Make: View {
    static let PageName = "Part_2_Fake_Til_You_Make"
    @State var showMenu = false
    var body: some View {
        let text =
        "An awkward silence ensues.\n\n“I can see you’re not one for idle chit chat. And I wouldn’t want to waste the time of a genius such as yourself. So without further ado, we will get started. The cloaking technology you created on your home planet is exactly what we need to hide from the Sinisterians. On behalf of all Covarnians, thank you!”\n\nYou begin to wonder if you should just tell the truth. You’re not a genius scientist. There’s no way you can help.\n\nYou open your mouth to say something when you suddenly picture what a Covarnian torture chamber might look like…\n\n On second thought, maybe you shouldn’t say anything. But then again, you’re probably just overreacting."

        let decision1 = "The jig is up. You're no scientist."
        let decision2 = "Wing it."
        let firstChoicePageName = Part_4_Not_Scientist.PageName
        let secondChoicePageName = Part_1_Wing_It.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Running Down Hall", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Fake_Til_You_Make_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Fake_Til_You_Make()
    }
}
