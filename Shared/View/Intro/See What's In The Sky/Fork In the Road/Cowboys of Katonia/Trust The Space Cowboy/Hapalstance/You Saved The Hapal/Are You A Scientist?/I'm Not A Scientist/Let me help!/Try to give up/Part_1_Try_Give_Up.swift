//
//  Part_1_Try_Give_Up.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Try_Give_Up: View {
    static let PageName = "Part_1_Try_Give_Up"
    @State var showMenu = false
    var body: some View {
        let text =
        "Chrono stares at you as if you’d gone mad.\n\n“What? How could you say that?” Chrono asks in astonishment. “I thought you were going to help!”\n\nChrono’s right...you did promise. Also, a sense of defiance builds up inside of you. Wouldn’t it just be great prove King Zanarq wrong? The look on his face would be priceless!\n\n“Ok, Ok you’re right,” you tell Chrono. “The plan can still work"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Do_Ourselves.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Earth_", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
        
    }
}

struct Part_1_Try_Give_Up_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Try_Give_Up()
    }
}
