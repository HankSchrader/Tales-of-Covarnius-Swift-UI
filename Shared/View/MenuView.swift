//
//  MainMenu.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/3/21.
//

import SwiftUI
import SwiftUI

struct MenuView: View {
    @State private var showMenu = false
    @EnvironmentObject var log: ChapterLog

    let chapters: [String] = (UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters) ?? ["Part_1_Intro"]) as! [String]
    @ViewBuilder
    var body: some View {
        ZStack {

            VStack(alignment: .leading) {
                if self.chapters.contains("Part_1_Intro") {
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        NavigationLink(destination: Part_1_Intro()
                                        .navigationBarBackButtonHidden(true)
                                            .environmentObject(log)) {
                                Text(Constants.ChapterOne)
                            }
                            }
                    .padding(.bottom)
                    .foregroundColor(.gray)

                        }
   
                
                if self.chapters.contains("Part_1_Fork_In_The_Road") {
                HStack {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        NavigationLink(destination: Part_1_Fork_In_The_Road()
                                        .navigationBarBackButtonHidden(true)
                                        .environmentObject(log)) {
                            Text(Constants.ForkInTheRoad)
                            }
                        

                    }
                .foregroundColor(.gray)
                .padding(.bottom)
                }
                
            Spacer()

    }        .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                .zIndex(1)
        }

        }

    }




struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
