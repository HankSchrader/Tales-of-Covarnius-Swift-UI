//
//  Part_3_Fetch_Key.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Fetch_Key: View {
    static let PageName = "Part_3_Fetch_Key"
    @State var showMenu = false
    
    var body: some View {
        let text =
        "Chrono looks at Luna and sighs.\n\n“Well for starters,” Chrono says, “there are hundreds of Sinisterians and only one little Luna!”\n\n“She’s not that little!” you respond. Suddenly, an idea strikes you. “If Luna wasn’t so little though, she could trigger the allergies in all the Sinisterians!”\n\n“What are you talking about?” Chrono asks, intrigued.\n\n“Your Hyper Growth Ray!” you exclaim. Thoughts of Chrono's invention come to your mind. It just might be the solution to everything."
        
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Fetch_Key.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Invasion", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Fetch_Key_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Fetch_Key()
    }
}
