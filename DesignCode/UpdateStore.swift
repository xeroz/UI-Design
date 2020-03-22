//
//  UpdateStore.swift
//  DesignCode
//
//  Created by juan on 3/22/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
