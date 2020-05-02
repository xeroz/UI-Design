//
//  DataStore.swift
//  DesignCode
//
//  Created by juan on 5/1/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts { posts in
            self.posts = posts
        }
    }
}
