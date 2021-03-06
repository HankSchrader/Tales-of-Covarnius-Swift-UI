//
//  Part_2_Just_Desserts.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_2_Just_Desserts: View {
    static let PageName = "Part_2_Just_Desserts"
    @State var showMenu = false
    var body: some View {
        let text =
        "You make it out with your lives but unfortunately, you didn’t procure the items necessary.\n\n“I guess we’ll have to get everything we need from the council chamber,” Chrono says matter of factly. “And we need to hurry, we’re running out of time!\n\nChrono nods his head, “Good point. Onto the council chamber!”\n\nYou follow Chrono to the council chamber and then around to the back of the large metal building. It’s bland architecture contrasts the vibrant flowers of Covarnius."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Council.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Running Down Hall" : "Running Down Hall iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Just_Desserts_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Just_Desserts()
    }
}
