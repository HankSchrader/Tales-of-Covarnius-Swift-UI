//
//  Part_3_Fork_In_The_Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Fork_In_The_Road: View {
    var body: some View {
       let text =
        "“As I said before—although I guess it was in French—my name is Chrono, and my home planet Covarnius is in trouble.”\n\nChrono pulls a lever on the blinking console in front of him and a ping sound emanates through the small ship. His attention seems to be more dedicated to the operation of the ship, rather than the answering of your questions.\n\n“And what does any of this have to do with me?” you question skeptically. You watch out the window as the spacecraft ascends upwards leaving Earth behind. The houses below quickly become tiny dots...this is becoming too real."
        getPageView(mainText: text, firstChoice: AnyView(Part_4_Fork_In_The_Road()))
  
    }
}

struct Part_3_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Fork_In_The_Road()
    }
}
