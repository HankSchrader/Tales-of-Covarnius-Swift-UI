//
//  Went_Home.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Went_Home: View {
    var body: some View {

            VStack {
            Text("You decide to keep going home. Let the aliens abduct someone else for their experiments. After catching your breath, you jog the rest of the way home with Luna. Bursting through the front door, you turn on the news to see if there is any update on an alien invasion. The man on the T.V is reporting on a story about a kitten that was just rescued from a tree. Nothing about an invasion.\n\nYou make a snack and keep watching, but nothing ever happens. Eventually, you switch the channel over to cartoons and begin to wonder if you even really saw a spaceship.\n\nYou know what you saw though, and can’t help but wonder what the aliens wanted. As you head to bed, you wonder if you should have investigated after all.\n\nYou can’t help but think perhaps you missed out on the opportunity of a lifetime...")
                    .fontWeight(.light)
                    .padding()
                    Spacer()
                
                
                NavigationLink(destination: ContentViewPageChapter1Page1().navigationBarBackButtonHidden(true)) {
                           Text("GAME OVER")
                }.padding()
                
            }
        
    }
}

struct Went_Home_Previews: PreviewProvider {
    static var previews: some View {
        Went_Home()
    }
}
