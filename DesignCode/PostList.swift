//
//  PostList.swift
//  DesignCode
//
//  Created by juan on 5/1/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct PostList: View {
//    @State var posts: [Post] = []
    @ObservedObject var store = DataStore()
    
    var body: some View {
        List(store.posts) { post in
            VStack(alignment: .leading, spacing: 8) {
                Text(post.title).font(.system(.title, design: .serif)).bold()
                Text(post.body).font(.subheadline).foregroundColor(.secondary)
            }
        }

//        .onAppear {
//            Api().getPosts { (posts) in
//                self.posts = posts
//            }
//        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
