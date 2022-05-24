//
//  Part_2_Wing_It.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Wing_It: View {
    static let PageName = "Part_2_Wing_It"
     
    @State var showMenu = false
    var body: some View {
        
        let text =
        "“Oh? Uhh, you mean this?” you sputter, staring at the crimson liquid. Regaining your confidence, you continue, “Ah yes of course, the electrolytic catalyst...thing. Just mix it with this over here...”\n\nThe table before you has a dozen different vials and beakers filled with volatile mixtures. You're paralyzed. A hundred thoughts cross your mind. Which one to grab? How much to mix? What should I do?\n\n“Well?” the scientist says impatiently, “Mix it with which one?”\n\nYou better think fast, just grab the closest one! But there are two...which liquid should you mix it with?"
        
        let decision1 = "Choose the fizzy blue liquid."
        let decision2 = "Grab the bright red liquid."
        let firstChoicePageName = Bright_Green.PageName
        let secondChoicePageName = Turn_Into_Frog.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Covarnian Lab" : "Covarnian Lab iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
   
    }
}

struct Part_2_Wing_It_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Wing_It()
    }
}
