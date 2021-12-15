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
    
    let chaptersDict = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters) ?? [Part_1_Intro.PageName]
    
    var chapters: [String] = []
    
    init() {
        for (value) in chaptersDict {
          
            chapters.append("\(value)")
       
        }
        print(self.chapters)
    }
  
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("")
//                ForEach(chapters, id: \.self) { chapter in
//
//                    HStack {
//                            Image(systemName: "person")
//                                .foregroundColor(.gray)
//                                .imageScale(.large)
//                            NavigationLink(destination: subviews[chapter]
//                                            .navigationBarBackButtonHidden(true)) {
//                                Text(chapter)
//                            }
//                        }
//                                .padding(.bottom)
//                                .foregroundColor(.gray)
//
//                            }
                Spacer()
                
            }.padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                .zIndex(1)
        }
    }
}
        
//                if self.chapters.contains(Part_1_Intro.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Intro()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Intro")
//                        }
//                    }
//                    .padding(.bottom)
//                    .foregroundColor(.gray)
//
//                }
//
//
//                if self.chapters.contains(Part_1_Fork_In_The_Road.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Fork_In_The_Road()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Fork In The Road")
//                        }
//
//
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//
                
//                if self.chapters.contains(Part_1_Cowboys_Of_Katonia.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Cowboys_Of_Katonia()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Katonian Cowboys")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//          
//                if self.chapters.contains(Part_1_Fake_Til_You_Make.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Fake_Til_You_Make()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Fakin' it")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//                if self.chapters.contains(Part_1_Not_Scientist.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Not_Scientist()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Not A Scientist")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//                if self.chapters.contains(Part_1_Hapalstance.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Hapalstance()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Random Hapalstance")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//                if self.chapters.contains(Part_1_Diplomatic_Immunity.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Diplomatic_Immunity()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Diplomatic Immunity")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//                if self.chapters.contains(Part_1_Boarding_Ticket.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Boarding_Ticket()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Boarding Ticket")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//                
//                if self.chapters.contains(Part_1_Greatest_Scientist.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Greatest_Scientist()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Greatest Scientist")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//                
//                
//                if self.chapters.contains(Part_1_Hapal_Down.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_1_Hapal_Down()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Let the Hapal Down...")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//                
//                if self.chapters.contains(Part_2_Hypersleep.PageName) {
//                    HStack {
//                        Image(systemName: "person")
//                            .foregroundColor(.gray)
//                            .imageScale(.large)
//                        NavigationLink(destination: Part_2_Hypersleep()
//                                        .navigationBarBackButtonHidden(true)) {
//                            Text("Rise and Shine!")
//                        }
//                        
//                        
//                    }
//                    .foregroundColor(.gray)
//                    .padding(.bottom)
//                }
//                
                

    
    





struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
