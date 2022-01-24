//
//  Part_1_Greatest_Scientist.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/1/21.
//

import SwiftUI

struct Part_1_Greatest_Scientist: View {
    @State var showMenu = false
    static let PageName = "Part_1_Greatest_Scientist"
    var body: some View {
        
        let text = "Chrono grins at you.\n\n“You’ll help me? That’s great! So if you have no further questions, I will engage hypersleep now.” Chrono says glancing in your direction.\n\n“Hyper what?” you ask. “What is that?”\n\n“Hypersleep,” Chrono repeats. “It's the only way to pass a five light-year journey.”"
            
            let decision1 = Constants.ContinuePhrase
            let firstChoicePageName = Part_2_Greatest_Scientist.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Asteroid", decision1: decision1, firstChoicePageName: firstChoicePageName)
            DisplayView(showMenu: self.$showMenu, view: storyView)
            
        
    }
}

struct Part_1_Greatest_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Greatest_Scientist()
    }
}
