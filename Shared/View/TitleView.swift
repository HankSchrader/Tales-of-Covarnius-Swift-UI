

//
//  TitleView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/18/21.
//

import SwiftUI

struct TitleView: View {
    @State private var opacity1 = 0.0
    @State private var opacity2 = 0.0
    @State private var opacity3 = 0.0
    @State private var show = false
    var body: some View {
        VStack {

            
            Text("Tales")
                .font(.largeTitle)
                .padding(.bottom)
                .opacity(opacity1)
                .animation(Animation.easeOut(duration: 1.5).delay(0.6), value: opacity1)
                .onAppear {
                              DispatchQueue.main.async {
                                
                                    
                                      self.opacity1 += 1
                                      show = true
                                  
                              }
                }
            Text("Of")
                .font(.title)
                .padding(.bottom)
                .opacity(opacity2)
                .animation(Animation.easeOut(duration: 1.5).delay(1.6), value: opacity2)
                .onAppear {
                              DispatchQueue.main.async {
                               
                                    
                                      self.opacity2 += 1
                                      show = true
                                  
                              }
                }
            Text("Covarnius")
                .font(.largeTitle)
                .padding(.bottom)
                .opacity(opacity3)
                .animation(Animation.easeOut(duration: 1.5).delay(2.6), value: opacity3)
                .onAppear {
                              DispatchQueue.main.async {
                                      self.opacity3 += 1
                                      show = true
                                  
                              }
                }
            Spacer()
            NavigationLink(destination: ContentView()
                                .navigationBarBackButtonHidden(true)) {
                Text("Start the Adventure!")
                 
                }
                                .offset(x: 0, y: -220)
                                .padding(.bottom)
            
        }
    }
}





struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}

