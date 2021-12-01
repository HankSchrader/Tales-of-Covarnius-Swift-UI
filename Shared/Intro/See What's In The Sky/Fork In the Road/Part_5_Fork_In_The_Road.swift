//
//  Part_5_Fork_In_The_Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_5_Fork_In_The_Road: View {
    var body: some View {
        VStack {
        Text("“So how far away is this Covarnius?” you inquire with skepticism, afraid of what the answer may be.\n\n“Is it going to take us thousands of years to get there?” you continue with growing panic. “I change my mind, I want to go back to Earth!” you shout, pressing your nose to the glass window.Chrono turns to you with a look of confusion. “Covarnius is located in the next star system, approximately five light years away...or about seven earthling days.”\n\nThe alien turns to you with one eyebrow raised. “Besides, you can’t back out now. You already agreed to help.”\n\n\"Just seven days? That’s not too bad.\" you breath a sigh of relief.\n\nA week was bad enough, but at least it wasn’t going to be thousands of years! But still, you start to wonder if you made the right decision to travel to Covarnius. Your parents and your room back at home… it’s all on Earth. You feel a little homesick. What should you do?")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_3_Fork_In_The_Road()) {
                       Text("Chrono said only you can help.")
            }.padding()
            NavigationLink(destination: Part_1_Cowboys_of_Katonia()) {
                       Text("Go back to Earth.")
            }.padding()
            
            
        }
    }
}

struct Part_5_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Fork_In_The_Road()
    }
}
