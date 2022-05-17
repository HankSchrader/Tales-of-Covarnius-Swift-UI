//
//  Part_4_Make_A_Run_For_It.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Trust_The_Space_Cowboy: View {
    static let PageName = "Part_1_Trust_The_Space_Cowboy"
    @State var showMenu = false
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "You look around at the vast landscape stretching out in all directions. Where could you run? There was nowhere to go. No water. No anything. You decide to trust the space cowboy.\n\n“Our ship broke down,” you say with hesitation. “We need help repairing it.”\n\nThe cowboy smiles. “Well then you crash landed on the right planet. One of my ranch hands, Kebo, is an excellent mechanic. He’ll get you fixed up in no time.”\n\nYou exchange a look with Chrono, still uncertain whether or not to trust the space cowboy.\n\n“My name is Kayo,” he continues, \"you can stay in the ranch house while we get your ship good as new. My wife, Kina, will be fixing dinner. I’m sure you all must be starving.”"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Trust_The_Space_Cowboy.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Katonian" : "Katonian iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}
