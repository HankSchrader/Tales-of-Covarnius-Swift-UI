//
//  Part_2_Hapal_Down.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Hapal_Down: View {
    var body: some View {
        VStack {
        Text("You think about Kayo and Kina, and how helpful they had been while you were stranded on their planet. Maybe you should have helped with the baby hapal after all? A feeling of sadness wells up in you, the problem seemed a lot more serious than a stubbed Hapal toe.\n\nNo use thinking about it now, at least you can try to help the Covarnians.\n\nYou wonder what kind of issue the Covarnians are having as Chrono engages hypersleep.")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_3_Hapal_Down()) {
                       Text("Continue")
                   }.padding()
        }
    }
}

struct Part_2_Hapal_Down_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Hapal_Down()
    }
}
