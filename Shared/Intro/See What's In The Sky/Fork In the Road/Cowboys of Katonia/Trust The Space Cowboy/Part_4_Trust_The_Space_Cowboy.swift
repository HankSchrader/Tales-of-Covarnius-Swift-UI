//
//  Part_4_Trust_The_Space_Cowboy.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_Trust_The_Space_Cowboy: View {
    var body: some View {
        VStack {
            Text("“What? Luna’s not a hapal,” you say with bewilderment.\n\nKayo wipes his mouth on a napkin. “Oh, well I just assumed. That’s good though. I thought it was awfully unfortunate that the poor thing was so deformed… missing an eye, antenna on the wrong side of its body…”\n\n“Luna is not deformed,” you say indignantly. “She’s only supposed to have two eyes. And that’s not an antenna, it’s a tail and it’s right where it’s supposed to be!”\n\nKayo lets out a small chuckle. \"Well then I can’t speak for your critter, but hapals are mighty messy. But we pride ourselves on having the cleanest stables in all the land.\"\n\nYou look at Luna as she continues eating, meanwhile splashing gravy and dog slobbers all over the floor. Her golden fur has been shedding and falls down into the mix of gravy and dog slobbers. You aren’t sure what a hapal is...but there is no way one could be messier than Luna.")
                .fontWeight(.light)
                .padding()
                Spacer()
                NavigationLink(destination: Part_5_Trust_The_Space_Cowboy()) {
                       Text("Continue")
                }.padding()
        }
    }
}

struct Part_4_Trust_The_Space_Cowboy_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Trust_The_Space_Cowboy()
    }
}
