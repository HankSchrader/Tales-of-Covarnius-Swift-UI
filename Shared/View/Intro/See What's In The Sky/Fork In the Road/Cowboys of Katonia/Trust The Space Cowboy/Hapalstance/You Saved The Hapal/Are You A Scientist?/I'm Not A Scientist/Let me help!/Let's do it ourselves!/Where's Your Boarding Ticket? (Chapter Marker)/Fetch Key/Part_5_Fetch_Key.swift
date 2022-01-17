//
//  Part_5_Fetch_Key.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_5_Fetch_Key: View {
    static let PageName = "Part_5_Fetch_Key"
    @State var showMenu = false
    var body: some View {
       let text =
        "If we want to get to your house in one piece, we will have to be VERY careful,\" you tell Chrono.\n\nAfter surveying your surroundings, you see all sorts of trees and shrubberies to hide behind.\n\nYou conclude that there is just enough vegetation to get to his house unnoticed.\n\nIf you’re careful, you could take cover behind them and slowly but surely make your way there. But on the other hand, time is of the essence.\n\nIf you sprint there, you could get to his abode just in time to lock the door and fire up the Hyper Growth Ray. Whatever you decide, decide now!"
  
        
        let decision1 = "Run for it."
        let decision2 = "Sneak there."
        let firstChoicePageName = Got_Caught.PageName
        let secondChoicePageName = Part_1_Sneak.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Sinisterian Ships", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
        
    }
}

struct Part_5_Fetch_Key_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Fetch_Key()
    }
}
