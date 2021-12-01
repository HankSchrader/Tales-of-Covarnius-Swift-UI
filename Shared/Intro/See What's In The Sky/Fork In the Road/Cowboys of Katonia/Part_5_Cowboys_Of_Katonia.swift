//
//  Part_5_Cowboys_Of_Katonia.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_5_Cowboys_Of_Katonia: View {
    var body: some View {
        VStack {
        Text("The alien babbles in a language that you have never heard.\n\n“I’m sorry, but I don’t understand,” you say politely, shrugging your shoulders.\n\nThe alien looks at you, as if he is straining to hear. Then he nods his head vigorously and pushes a button on his belt.\n\n“Howdy, you folks having some trouble?” His voice is now in English, he must have the same device as Chrono!\n\nWith a broken down ship, you don’t have many options. The way you see it, you can either trust the space cowboy and hope he is as friendly as he seems. Or, you can make a run for it. You mull over the situation for a moment and decide to:  ")
            .fontWeight(.light)
            .padding()
            Spacer()
            NavigationLink(destination: Part_1_Trust_The_Space_Cowboy()) {
                   Text("Trust The Space Cowboy")
            }.padding()
            NavigationLink(destination: Part_1_Make_A_Run_For_It()) {
                   Text("Make a run for it!")
            }.padding()
        }
    }
}

struct Part_5_Cowboys_Of_Katonia_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Cowboys_Of_Katonia()
    }
}
