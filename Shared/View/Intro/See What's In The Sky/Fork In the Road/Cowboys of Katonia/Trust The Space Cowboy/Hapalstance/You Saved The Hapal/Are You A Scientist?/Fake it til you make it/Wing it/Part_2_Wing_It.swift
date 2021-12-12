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
        "“Oh? Uhh, you mean this?” you sputter, staring at the crimson liquid. Regaining your confidence, you continue, “Ah yes of course, the electrolytic catalyst...thing. Just mix it with this over here...”\n\nThe table before you has a dozen different vials and beakers filled with volatile mixtures. You paralyzed. A hundred thoughts cross your mind. Which one to grab? How much to mix? What should I do?\n\n“Well?” the scientist says impatiently, “Mix it with which one?”\n\nYou better think fast, just grab the closest one! But there are two...which liquid should you mix it with?"
        getPageView(mainText: text, firstChoice: AnyView(Bright_Green()), decision1: "Choose the fizzy yellow liquid.", secondChoice: AnyView(Turn_Into_Frog()), decision2: "Grab the bright green liquid.")
   
    }
}

struct Part_2_Wing_It_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Wing_It()
    }
}
