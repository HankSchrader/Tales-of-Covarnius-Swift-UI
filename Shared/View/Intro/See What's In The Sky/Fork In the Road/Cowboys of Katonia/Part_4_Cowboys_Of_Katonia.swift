//
//  Part_4_Cowboys_Of_Katonia.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_Cowboys_Of_Katonia: View {
    var body: some View {
        let isIPad = UIDevice.current.userInterfaceIdiom == .pad
        VStack {
        Text("“Don’t ask me,” Chrono says. He opens the ship's hatch and climbs out. “You’re the one that made the ship malfunction.”\n\nYou hop out after him and Luna follows. “Yeah but it’s your ship. Don’t you know how to reset it or something?”\n\n“Markloo Gurble Gur?” You hear a friendly voice say behind you.\n\nYou whip around and see a large muscular alien standing before you. In fact, he looks a bit like Chrono. Unlike Chrono though, this being has pale orange skin and an extra eye in the middle of his forehead. He seems friendly but you know that could all just be a ploy. Maybe he's the one who will dissect your brain!")
            .fontWeight(.light)
            .padding()
            Spacer()
        NavigationLink(destination: Part_5_Cowboys_Of_Katonia()) {
                   Text("Continue")
               }
    }
    }
}

struct Part_4_Cowboys_Of_Katonia_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Cowboys_Of_Katonia()
    }
}
