//
//  Celebrate.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Celebrate: View {
    static let PageName = "Celebrate"
    @State var showMenu = false
    var body: some View {
        let text =
        "The celebration starts the next day, and it’s unlike anything that you’ve seen before.  There’s music, dancing, and all sorts of different Covarnian delicacies. King Zanarq gives a speech and thanks you for the brave and intelligent plan that you, Chrono, (and Luna) constructed and carried out.\n\nChrono couldn’t be happier. He is finally taken seriously on Covarnius. He is given a position on the King's Official Council, where he will work to ensure the safety and happiness of all Covarnians. Best of all, King Zanarq has a portrait of Chrono placed in the Hall of Heroes!\n\nAfter the celebration, King Zanarq sends you back home in the most beautiful spaceship you have ever seen. And guess what? You can keep it.\n\nJust wait until your friends and family see this!"
    
        let decision1 = "THE END"
        let firstChoicePageName = Silver_Ending.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Hall of Heroes" : "Hall of Heroes iPhone", decision1: decision1,  firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Celebrate_Previews: PreviewProvider {
    static var previews: some View {
        Celebrate()
    }
}
