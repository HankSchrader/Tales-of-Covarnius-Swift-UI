//
//  Part_2_Feed_Dogs.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_2_Feed_Dogs: View {
    static let PageName = "Part_2_Feed_Dogs"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "Next to that is a plate with what appears to be some sort of fruit. It's perfectly round and slippery to the touch.\n\nAnd last of all, there is a bowl of something scaly and green. It jiggles like jello, even when left untouched. It’s as weird as it is gross.\n\n What will you feed them? Think fast!"
        
        
        let decision1 =  "Slippery fruit."
        let decision2 = "Scaly jello."
        let decision3 = "Stinky meat."
        let firstChoicePageName = Part_1_Just_Desserts.PageName
        let secondChoicePageName = Growlics.PageName
        let thirdChoicePageName = Part_1_Stank_Meat.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIpad ? "3 foods iPad" : "3 foods", decision1: decision1,
                                                   
                                                   firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2, decision3: decision3, thirdChoicePageName: thirdChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Feed_Dogs_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Feed_Dogs()
    }
}
