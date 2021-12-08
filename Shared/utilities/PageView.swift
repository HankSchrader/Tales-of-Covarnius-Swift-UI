//
//  PageView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/1/21.
//

import SwiftUI
func getPageView(mainText: String,
                             firstChoice: AnyView,
                 decision1: String = Constants.ContinuePhrase,
                             secondChoice: AnyView = AnyView(Text("s")) ,
                             decision2: String = "") -> some View {
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    return VStack {
        

        Text(mainText)
            .fontWeight(.light)
            .if(isIPad) {
                view in
                view.font(.system(size: CGFloat(Constants.ipadFontSize)))
            }.padding()
            Spacer()
        
        NavigationLink(destination: firstChoice.navigationBarBackButtonHidden(decision2 != "")) {
                   Text(decision1)
               }
        .padding()
        if(decision2 != "") {
            NavigationLink(destination: secondChoice.navigationBarBackButtonHidden(true)) {
                       Text(decision2)
                    .padding()
            }
        }
    }
    .padding(.bottom)
    }

func getPageView(view: StoryPayload) -> some View {
    @EnvironmentObject var log: ChapterLog
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    return VStack {
        ZStack {
        ScrollView {
        Text(view.text)
            .fontWeight(.light)
            .if(isIPad) {
                view in
                view.font(.system(size: CGFloat(Constants.ipadFontSize)))
            }.padding()
        }.zIndex(1)
        
        Image(view.image)
            .resizable()
            .scaledToFit()
        }
            Spacer()
    
        NavigationLink(destination: view.firstChoice.navigationBarBackButtonHidden(view.decision2 != "")) {
            Text(view.decision1)
               }
        
        .padding()
        if(view.decision2 != "") {
            NavigationLink(destination: view.secondChoice.navigationBarBackButtonHidden(true)) {
                Text(view.decision2)
                    .padding()
                    
            }
        
        }
    }

    }
struct DisplayView: View {
    @Binding var showMenu: Bool
    @EnvironmentObject var log: ChapterLog

    var view: StoryPayload
    var body: some View {
     
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        let tap = TapGesture()
            .onEnded {
                
                    withAnimation {
                        self.showMenu = false
                    }
                
            }
       return VStack {
            Button(action: {
                        self.showMenu = true
                
                    }) {
                     
                    }
         GeometryReader { geometry in
            ZStack(alignment: .leading) {
           
                    getPageView(view: view)
                                    .frame(width: geometry.size.width, height: geometry.size.height)
                                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                                                            .disabled(self.showMenu ? true : false)
                                                            .environmentObject(log)
                

                if self.showMenu {
                    MenuView()
                        .frame(width: geometry.size.width/2)
                                          .transition(.move(edge: .leading))
                                          .environmentObject(log)
                                          
                                  }
            }.gesture(drag)
                 .gesture(tap)
        }
        .navigationBarTitle("", displayMode: .inline)
                    .navigationBarItems(leading: (
                        Button(action: {
                            withAnimation {
                                self.showMenu.toggle()
                            }
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .imageScale(.large)
                        }
                    ))
                }
            
        }
}
        
