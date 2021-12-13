//
//  Part_4_They_Are_Vicious.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_4_They_Are_Vicious: View {
    static let PageName = "Part_4_They_Are_Vicious"
    @State var showMenu = false
    var body: some View {
        let text =
        "“I guess we’ll have to sneak into the council chamber to get the uniforms,” Chrono says catching his breath.\n\nPerhaps you should have offered the growlics a snack. Now you'll have to make your way past Covarnian guards in the council chamber. Hopefully you'll have better luck this time...this is Covarnius’ last hope."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_5_They_Are_Vicious.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)


    }
}

struct Part_4_They_Are_Vicious_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_They_Are_Vicious()
    }
}
