//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by juan on 3/21/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[0]
    
    var body: some View {
        List{
            VStack(spacing: 20){
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(update.text)
            }
            .navigationBarTitle(update.title)
        }
        .listStyle(GroupedListStyle())
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
