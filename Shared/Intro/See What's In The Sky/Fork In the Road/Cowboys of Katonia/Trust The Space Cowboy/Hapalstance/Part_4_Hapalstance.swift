//
//  Part_4_Hapalstance.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_Hapalstance: View {
    var body: some View {
        VStack {
        Text("You still don’t know what a hapal is, but it sounds like it needs help.\n\nKayo takes off in the direction of the sound. You feel like you should follow him, in case he needs help. But how could you be any help to a baby hapal?\n\nYou’re desperate to get on the newly fixed ship and fly off the planet. You begin to board the Covarnian ship but then stop.\n\nKayo has been so good to you. He helped you when you needed it. Fixing your ship, offering you food and a place to relax…you feel a pang of guilt for not returning the favor.\n\nWhat should you do?")
            .fontWeight(.light)
            .padding()
            Spacer()
        NavigationLink(destination: Part_1_Hapal_Down()) {
                   Text("Not Your Problem. Board the ship.")
               }.padding()
        NavigationLink(destination: Part_1_Save_The_Hapal()) {
                   Text("Help Kayo with the Hapal.")
               }.padding()
    }
    }
}

struct Part_4_Hapalstance_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Hapalstance()
    }
}
