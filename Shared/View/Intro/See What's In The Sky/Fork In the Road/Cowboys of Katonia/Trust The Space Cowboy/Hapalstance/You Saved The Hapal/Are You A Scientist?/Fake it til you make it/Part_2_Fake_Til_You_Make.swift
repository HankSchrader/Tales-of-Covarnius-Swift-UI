//
//  Part_2_Fake_Til_You_Make.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Fake_Til_You_Make: View {
    var body: some View {
        let text =
        "“English?” The Covarnian scientist replies skeptically. “So, I've heard...”\n\nAn awkward silence ensues.\n\n“I can see you’re not one for idle chit chat. And I wouldn’t want to waste the time of a genius such as yourself. So without further ado, we will get started. The cloaking technology you created on your home planet is exactly what we need to hide from the Sinisterians. On behalf of all Covarnians, thank you!”\n\nYou begin to wonder if you should just tell the truth. You’re not a genius scientist. There’s no way you can help.\n\nYou begin to open your mouth to say something when you suddenly picture what a Covarnian torture chamber may look like…\n\n On second thought, maybe you shouldn’t say anything. But then again, you’re probably just overreacting."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_4_Not_Scientist()), decision1: "The jig is up. You're no scientist.", secondChoice: AnyView(Part_1_Wing_It()), decision2: "Wing it.")
    }
}

struct Part_2_Fake_Til_You_Make_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Fake_Til_You_Make()
    }
}
