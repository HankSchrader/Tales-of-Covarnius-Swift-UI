//
//  Part_2_Not_Scientist.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Not_Scientist: View {
    static let PageName = "Part_2_Not_Scientist"
     
    @State var showMenu = false
    var body: some View {
        let text =
        "“Enough,” King Zanarq says quietly, cutting off Chrono. “This was your last chance and you failed. The invasion is imminent and there is absolutely nothing we can do about it.”\n\nAn exasperated look crosses the king’s face. “Give me your keycard. Now. You are never flying alone again. Then, take the earthling to the shipping chamber for the next flight back to Earth.”\n\nKing Zanarq storms out, followed by his Covarnian crew. They leave you and Chrono standing at the base of the spaceship that you arrived on."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Not_Scientist.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Zanarq iPad" : "Zanarq iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
  
        }
}

struct Part_2_Not_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Not_Scientist()
    }
}
