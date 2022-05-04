//
//  Home_Sweet_Home.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Home_Sweet_Home: View {
    static let PageName = "Home_Sweet_Home"
    @State var showMenu = false
    var body: some View {
        let text =
        "You’re sure that a Covarnian celebration would be fun, but you’ve been away from Earth for far too long.\n\n“Thank you so much for the offer, your Highness,” you respond carefully to the king, “but I must make my way back to Earth.”\n\nKing Zanarq gives you a warm smile and replies, “Of course.”\n\n“This has been a doozy of an adventure,” you say to Chrono.\n\nHe smiles back, “It sure has been, and I can’t thank you enough for saving my planet…and being my friend!”\n\nAfter you, Luna, and Chrono say your final goodbyes, King Zanarq sends you back home in the most beautiful spaceship you have ever seen. And guess what? You can keep it.\n\nJust wait until your friends and family see this!"

        let decision1 = "THE END"
        let firstChoicePageName = Silver_Ending.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hall of Heroes", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Home_Sweet_Home_Previews: PreviewProvider {
    static var previews: some View {
        Home_Sweet_Home()
    }
}
