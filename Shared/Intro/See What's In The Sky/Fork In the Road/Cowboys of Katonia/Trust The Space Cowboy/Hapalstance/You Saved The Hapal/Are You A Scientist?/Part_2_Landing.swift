//
//  Part_2_Landing.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Landing: View {
    var body: some View {
        VStack {
        Text("“Who are you calling French?” you ask, looking from Chrono to the crown clad extraterrestrial.\n\n“Why, you of course,” the regal alien states with certainty. “Welcome! I am the King of Covarnius. You may call me King Zanarq.”\n\nAnxiety blooms in the pit of your stomach. If these aliens think you’re French, then clearly they have the wrong person...but if you tell them the truth now, who knows how they’ll react?\n\nYou’ve seen the movies, you know this makes you expendable.\n\nOn the other hand, you’re not some super genius scientist. How are you going to help?\n\nSeveral tall Covarnians in official garb usher you out of the ship. “My guards will now take you to your new lab and brief you on your mission.” King Zanarq informs you. You swallow hard and tell him:")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_1_Not_Scientist()) {
                       Text("I'm Not a Scientist!")
                   }.padding()
            NavigationLink(destination: Part_1_Fake_Til_You_Make()) {
                       Text("I'm a Scientist after all!")
                   }.padding()
        }
    }
}

struct Part_2_Landing_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Landing()
    }
}
