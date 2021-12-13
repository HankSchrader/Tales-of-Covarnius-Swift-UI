//
//  Part_4_House.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_4_House: View {
    static let PageName = "Part_4_House"
    @State var showMenu = false
    var body: some View {
        let text =
        "That’s it! If you give the growlics a snack, you can escape while they are busy eating. You are in the kitchen after all, there has to be something you could give them. You take a step towards the refrigerator causing the growlics to snarl with rage and move closer.\n\nMaybe you were too hasty with your decision to offer the growlics a snack. You just seem to be making them angrier. Besides, offering them food may just whet their appetite for more. You could be giving them an appetizer to the main course: you!\n\nYou could try making a run for it. The growlics have left an opening that you could just pass through. But if you can’t manage to outrun them… then it’s Earthling Thermidor for dinner"
        
        
        let decision1 =  "Maybe give them a snack."
        let decision2 = "They're vicious. Run!"
        let firstChoicePageName = Part_1_Boarding_Ticket.PageName
        let secondChoicePageName = Part_1_Diplomatic_Immunity.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_House_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_House()
    }
}
