//
//  Part_2_Make_A_Run_For_It.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Make_A_Run_For_It: View {
    static let PageName = "Part_2_Make_A_Run_For_It"
    @State var showMenu = false
     
    var body: some View {
     
        let text = "After a few moments, you’re approached by the alien that you are attempting to escape. “Are you sure y’all don’t need some help?” he asks with concern.\n\nYou’re not sure what else to do at this point. You’re hot and thirsty. Your ship’s broken down. You have no other choice but to accept his help. After catching your breath, you explain the situation.\n\n“Our ship broke down,” you say. “We need help repairing it.”"
          
    let decision1 = Constants.ContinuePhrase
    let firstChoicePageName = Part_2_5_Make_A_Run_For_It.PageName
    let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Katonian" : "Katonian iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
    DisplayView(showMenu: self.$showMenu, view: storyView)
}
}

struct Part_2_Make_A_Run_For_It_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Make_A_Run_For_It()
    }
}

struct Part_2_5_Make_A_Run_For_It: View {
    static let PageName = "Part_2_5_Make_A_Run_For_It"
    @State var showMenu = false
     
    var body: some View {
     
        let text = "The cowboy smiles. “Well then, you crash landed on the right planet. One of my ranch hands, Kebo, is an excellent mechanic. He’ll get you fixed up in no time.”\n\nYou exchange a look with Chrono, still uncertain whether or not to trust him.\n\n“My name is Kayo, by the way,” he continues. You can stay in the ranch house while we get your ship running good as new. My wife, Kina, will be fixing dinner. I’m sure you all must be starving.”\n\nLuna licks her lips as if she understands that dinner is being discussed."
          
    let decision1 = Constants.ContinuePhrase
    let firstChoicePageName = Part_2_Trust_The_Space_Cowboy.PageName
    let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Katonian" : "Katonian iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
    DisplayView(showMenu: self.$showMenu, view: storyView)
}
}


