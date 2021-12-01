//
//  Part_4_Not_Scientist.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_Not_Scientist: View {
    var body: some View {
        VStack {
        Text("“Surely there is something that can be done,” you respond sympathetically.\n\n“I’m afraid not,” Chrono says. \"Our only hope was the Earth renowned scientist. He would've been able to complete the cloaking device our own scientists have been working on.\"\n\n“Well can’t we just go back to Earth and get the right person this time?” you counter, trying to find a solution.\n\n“It’s just too late,” Chrono informs you. “There isn’t enough time to make it all the way back to Earth and then to Covarnius before the Sinisterians arrive.”\n\nChrono begins to walk slowly, his head hanging in defeat. “Let’s get you back to Earth.”")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_1_Outta_Here()) {
                       Text("Warmongers you say? I'm outta here.")
                   }
            .padding()
            NavigationLink(destination: Part_4_Not_Scientist()) {
                       Text("Never give up! We can do this.")
                   }
            .padding()
    }
    }
}

struct Part_4_Not_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Not_Scientist()
    }
}
