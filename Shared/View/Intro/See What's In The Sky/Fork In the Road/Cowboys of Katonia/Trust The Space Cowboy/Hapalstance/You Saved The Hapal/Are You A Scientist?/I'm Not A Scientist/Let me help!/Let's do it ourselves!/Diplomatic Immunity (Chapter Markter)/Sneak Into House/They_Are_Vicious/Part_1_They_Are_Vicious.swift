//
//  They_Are_Vicious.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_1_They_Are_Vicious: View {
    static let PageName = "Part_1_They_Are_Vicious"
    @State var showMenu = false
    var body: some View {
        let text =
        "The kitchen has a large island in the center. We just might be able to run past them if we go around.\n\nChrono shrugs his shoulders. He seems OK with the plan.\n\n“On the count of three, we run,” you whisper to Chrono. He's been trying to comfort the growlics...unfortunately without much luck."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_They_Are_Vicious.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Growlics", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_They_Are_Vicious_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_They_Are_Vicious()
    }
}
