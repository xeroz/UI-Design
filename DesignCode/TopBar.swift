//
//  TopBar.swift
//  DesignCode
//
//  Created by juan on 3/22/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            
            ContentView().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Certificates")
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
//        TopBar()
        Group {
//            TopBar().previewDevice("iPhone 8")
            TopBar().previewDevice("iPhone 11 ProMax")
        }
    }
}
