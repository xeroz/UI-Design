//
//  MenuViewView.swift
//  DesignCode
//
//  Created by juan on 2/15/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct MenuViewView: View {
    var body: some View {
        VStack {
            Spacer()

            VStack (spacing: 16) {
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Billing", icon: "creditcard")
                MenuRow(title: "Sign out", icon: "person.crop.circle")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(radius: 30)
            .padding(.horizontal, 30)
        }
        .padding(.bottom, 30)
    }
}

struct MenuRow: View {
    var title: String
    var icon: String

    var body: some View {
        HStack (spacing: 16){
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
            
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
