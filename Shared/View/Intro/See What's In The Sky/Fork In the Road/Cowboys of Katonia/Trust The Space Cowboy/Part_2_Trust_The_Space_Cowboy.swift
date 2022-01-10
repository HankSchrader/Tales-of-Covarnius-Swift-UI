//
//  Part_3_Make_A_Run_For_It.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Trust_The_Space_Cowboy: View {
    static let PageName = "Part_2_Trust_The_Space_Cowboy"
    @State var showMenu = false
    var body: some View {
        let text =
        "You follow Kayo back to the ranch where Kina is putting dinner on the table. You’re not sure what kind of food they eat on this planet, but beggars can’t be choosers.\n\n“So this is a ranch?” you question as you take your seat at the long table. Kina sets a steaming bowl of what appears to be some sort of alien stew in front of you.\n\n“Right as rain,” Kayo says, taking a bite of stew. “Kina and I run this ranch with the help of our ranch hands, Kebo, Kula, Karu, Kila, Kuro, Kana and Frank. We do all the roping, wrangling and keeping everything the most spick and span you’ll ever see this side of the galaxy.”"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Trust_The_Space_Cowboy.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Katonian", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Trust_The_Space_Cowboy_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Trust_The_Space_Cowboy()
    }
}
