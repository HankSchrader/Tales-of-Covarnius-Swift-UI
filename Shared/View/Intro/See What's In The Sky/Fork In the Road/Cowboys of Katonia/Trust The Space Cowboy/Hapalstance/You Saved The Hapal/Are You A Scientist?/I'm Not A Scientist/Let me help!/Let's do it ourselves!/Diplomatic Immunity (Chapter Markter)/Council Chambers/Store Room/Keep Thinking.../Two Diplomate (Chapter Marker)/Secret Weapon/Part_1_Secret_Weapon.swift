//
//  Part_1_Secret_Weapon.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Secret_Weapon: View {
    static let PageName = "Part_1_Secret_Weapon"
    @State var showMenu = false
    var body: some View {
        let text =
        "“A top secret weapon you say?”  Chief Korgle stammers. “What kind of secret weapon?”\n\nYou’ve gotten the chief’s attention. You’re going to have to be convincing. What kind of a secret weapon?\n\nYou start to dream up the kind of weapon that would make them run for the hills. How about an ice ray? Whoever it hits will be turned into ice cubes, left to melt in the hot Covarnian sun."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Part_2_Secret_Weapon.PageName
        let storyView: StoryPayload = StoryPayload(text: text,  image: "Weapon_Choice", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Part_2_Secret_Weapon: View {
    static let PageName = "Part_1_Part_2_Secret_Weapon"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Hopefully that's not too low-tech, what's another cool secret weapon? How about an anti-gravity gun powered by Covarnian ore. Anyone unfortunate enough to be caught in its path will be smushed like a pancake!\n\nThe Sinisterian chief is awaiting your answer. You think it over and decide:"
        

        let decision1 =  "We have an Ice Ray!"
        let decision2 = "We have an Anti-Gravity Gun!"
        let firstChoicePageName = Part_1_Ice_Ray.PageName
        let secondChoicePageName = Part_1_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Weapon_Choice", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}
