//
//  Part_9_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_9_Hypersleep: View {
    static let PageName = "Part_9_Hypersleep"
     
    @State var showMenu = false
    var body: some View {
        let text =
        "You arrive back on Covarnius, and the three of you head straight to the council chamber to tell King Zanarq the good news. After hearing your tale of heroism and triumph, King Zanarq declares a day of celebration to honor all that you’ve done for Covarnius.\n\nThe normally stern alien is overcome with joy! “You’ll stay for the celebration, won’t you?” King Zanarq asks.\n\nA celebration does sound like fun. And after all you’ve been through, you could use a little fun. But on the other hand, you really should be getting back to Earth. You think it over and decide…"
        
        let decision1 =  "Party Time!"
        let decision2 = "Go Home!"
        let firstChoicePageName = Celebrate.PageName
        let secondChoicePageName = Home_Sweet_Home.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Covarnius iPad" : "Covarnius", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_9_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_9_Hypersleep()
    }
}
