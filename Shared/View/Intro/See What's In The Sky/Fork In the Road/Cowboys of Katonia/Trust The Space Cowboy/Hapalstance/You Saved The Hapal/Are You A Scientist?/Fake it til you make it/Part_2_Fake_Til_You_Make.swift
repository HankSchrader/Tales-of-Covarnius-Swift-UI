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
        "An awkward silence ensues.\n\n“I can see you’re not one for idle chit chat. And I wouldn’t want to waste the time of a genius such as yourself. So without further ado, we will get started. The cloaking technology you created on your home planet is exactly what we need to hide from the Sinisterians. On behalf of all Covarnians, thank you!”\n\nYou begin to wonder if you should just tell the truth. You’re not a genius scientist. There’s no way you can help.\n\nYou open your mouth to say something when you suddenly picture how angry they may be...\n\nOn second thought, maybe you shouldn’t say anything. But then again, you’re probably just overreacting."

        let decision1 = "The jig is up. You're no scientist."
        let decision2 = "Wing it."
        let firstChoicePageName = Part_2_1_Fake_Til_You_Make.PageName
        let secondChoicePageName = Part_1_Wing_It.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Running Down Hall" : "Running Down Hall iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}


struct Part_2_1_Fake_Til_You_Make: View {
    static let PageName = "Part_2_1_Fake_Til_You_Make"
    @State var showMenu = false
     
    var body: some View {
        let text =
        "You look around at the lab and realize that there's no way you can help the Covarnians. Not like this anyway. Pushing their possible anger out of your mind, you tell the scientist that they have the wrong person.\n\nConsternation crosses the scientist’s face. “That is troubling news to be sure,” he says. “Your research in the field of cloaking technology was Covarnius’ last hope. So your name isn’t Clyde DuBois?”\n\n“No,” you reply sadly, “my name is—”\n\n“It doesn’t matter,” the scientists says, cutting you off. “Nothing can save us now.”"

        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_2_Fake_Til_You_Make.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Running Down Hall" : "Running Down Hall iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}


struct Part_2_2_Fake_Til_You_Make: View {
    static let PageName = "Part_2_2_Fake_Til_You_Make"
    @State var showMenu = false
     
    var body: some View {
        let text =
        "The guard overheard everything and motions you to the door. “I’ll take you back to King Zanarq now,” he says. Before you know it, the scientist is reviewing charts, acting as if you did not even exist.\n\nFollowing the guard out of the lab, you wonder what the scientist was talking about. Covarnius’ last hope? Nothing can save them from what?\n\nMaybe it’s not as bad as it sounds. Perhaps it was their last hope for all-you-can-eat ice cream or riding the biggest roller coaster in the universe! You mull over the scientist’s cryptic words and follow the guard to see King Zanarq."

        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Not_Scientist.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Running Down Hall" : "Running Down Hall iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}
