//
//  Part_1_Two_Diplomats.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Two_Diplomats: View {
    var body: some View {
        let text =
        "Smart move!\n\n“It’s ok, girl,” you soothe Luna and tell her to return to the spaceship. Luna jumps onto the seat of the Covarnian cruiser and stretches out with a yawn.\n\n“She’ll be safer here anyway,” you explain .\n\n“I think you’re right.”\n\nThe sneezy Sinisterian turns you over to the quartermaster, and returns to his guard duty. So far so good, you think. The three of you nervously follow the Sinisterian escorting you to the chief. Everything is going according to plan.\n\nYou wind through long hallways with dim lighting and try to remember the way back to the ship. You think it’s better to be prepared, just in case you have to make a hasty getaway."
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Two_Diplomats()))
        
    }
}

struct Part_1_Two_Diplomats_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Two_Diplomats()
    }
}
